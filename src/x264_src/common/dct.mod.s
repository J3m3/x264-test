	.text
	.file	"dct.c"
	.globl	x264_dct_init                   # -- Begin function x264_dct_init
	.p2align	4, 0x90
	.type	x264_dct_init,@function
x264_dct_init:                          # @x264_dct_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$sub4x4_dct, (%rsi)
	movq	$add4x4_idct, 8(%rsi)
	movq	$sub8x8_dct, 16(%rsi)
	movq	$sub8x8_dct_dc, 24(%rsi)
	movq	$add8x8_idct, 32(%rsi)
	movq	$add8x8_idct_dc, 40(%rsi)
	movq	$sub16x16_dct, 48(%rsi)
	movq	$add16x16_idct, 56(%rsi)
	movq	$add16x16_idct_dc, 64(%rsi)
	movq	$sub8x8_dct8, 72(%rsi)
	movq	$add8x8_idct8, 80(%rsi)
	movq	$sub16x16_dct8, 88(%rsi)
	movq	$add16x16_idct8, 96(%rsi)
	movq	$dct4x4dc, 104(%rsi)
	movq	$idct4x4dc, 112(%rsi)
	retq
.Lfunc_end0:
	.size	x264_dct_init, .Lfunc_end0-x264_dct_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sub4x4_dct
	.type	sub4x4_dct,@function
sub4x4_dct:                             # @sub4x4_dct
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
	movzbl	(%rsi), %ecx
	movzbl	(%rdx), %eax
	subl	%eax, %ecx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movzbl	1(%rsi), %r14d
	movzbl	1(%rdx), %eax
	subl	%eax, %r14d
	movzbl	2(%rsi), %r10d
	movzbl	2(%rdx), %eax
	subl	%eax, %r10d
	movzbl	3(%rsi), %ebx
	movzbl	3(%rdx), %eax
	subl	%eax, %ebx
	movzbl	16(%rsi), %ecx
	movzbl	32(%rdx), %eax
	subl	%eax, %ecx
	movzbl	17(%rsi), %r11d
	movzbl	33(%rdx), %eax
	subl	%eax, %r11d
	movzbl	18(%rsi), %ebp
	movzbl	34(%rdx), %eax
	subl	%eax, %ebp
	movzbl	19(%rsi), %r8d
	movzbl	35(%rdx), %r9d
	subl	%r9d, %r8d
	movzbl	32(%rsi), %eax
	movzbl	64(%rdx), %r9d
	subl	%r9d, %eax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movzbl	33(%rsi), %r12d
	movzbl	65(%rdx), %r9d
	subl	%r9d, %r12d
	movzbl	34(%rsi), %eax
	movzbl	66(%rdx), %r9d
	subl	%r9d, %eax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movzbl	35(%rsi), %r9d
	movzbl	67(%rdx), %r15d
	subl	%r15d, %r9d
	movzbl	48(%rsi), %eax
	movzbl	96(%rdx), %r15d
	subl	%r15d, %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movzbl	49(%rsi), %r15d
	movzbl	97(%rdx), %r13d
	subl	%r13d, %r15d
	movzbl	50(%rsi), %eax
	movzbl	98(%rdx), %r13d
	subl	%r13d, %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movzbl	51(%rsi), %eax
	movzbl	99(%rdx), %edx
	subl	%edx, %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	-40(%rsp), %rax                 # 8-byte Reload
	leal	(%rbx,%rax), %edx
	subl	%ebx, %eax
	leal	(%r10,%r14), %esi
	subl	%r10d, %r14d
	leal	(%rsi,%rdx), %ebx
	subl	%esi, %edx
	leal	(%r14,%rax,2), %r10d
	addl	%r14d, %r14d
	subl	%r14d, %eax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	leal	(%r8,%rcx), %esi
	subl	%r8d, %ecx
	leal	(%r11,%rbp), %eax
	subl	%ebp, %r11d
	leal	(%rax,%rsi), %ebp
	subl	%eax, %esi
	leal	(%r11,%rcx,2), %r14d
	addl	%r11d, %r11d
	subl	%r11d, %ecx
	movq	-32(%rsp), %r11                 # 8-byte Reload
	leal	(%r9,%r11), %r13d
	subl	%r9d, %r11d
	movq	-48(%rsp), %r8                  # 8-byte Reload
	leal	(%r8,%r12), %eax
	subl	%r8d, %r12d
	leal	(%rax,%r13), %r9d
	subl	%eax, %r13d
	movq	%r13, -48(%rsp)                 # 8-byte Spill
	leal	(%r12,%r11,2), %r8d
	addl	%r12d, %r12d
	subl	%r12d, %r11d
	movq	%r11, -32(%rsp)                 # 8-byte Spill
	movq	-8(%rsp), %r11                  # 8-byte Reload
	movq	-24(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r11), %r12d
	subl	%eax, %r11d
	movq	-16(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r15), %r13d
	subl	%eax, %r15d
	leal	(%r12,%r13), %eax
	subl	%r13d, %r12d
	leal	(%r15,%r11,2), %r13d
	addl	%r15d, %r15d
	subl	%r15d, %r11d
	leal	(%rax,%rbx), %r15d
	subl	%eax, %ebx
	leal	(%r9,%rbp), %eax
	subl	%r9d, %ebp
	leal	(%rax,%r15), %r9d
	movw	%r9w, (%rdi)
	leal	(%rbp,%rbx,2), %r9d
	movw	%r9w, 2(%rdi)
	subl	%eax, %r15d
	movw	%r15w, 4(%rdi)
	addl	%ebp, %ebp
	subl	%ebp, %ebx
	movw	%bx, 6(%rdi)
	leal	(%r10,%r13), %eax
	subl	%r13d, %r10d
	leal	(%r8,%r14), %r9d
	subl	%r8d, %r14d
	leal	(%r9,%rax), %ebx
	movw	%bx, 8(%rdi)
	leal	(%r14,%r10,2), %ebx
	movw	%bx, 10(%rdi)
	subl	%r9d, %eax
	movw	%ax, 12(%rdi)
	addl	%r14d, %r14d
	subl	%r14d, %r10d
	movw	%r10w, 14(%rdi)
	leal	(%r12,%rdx), %eax
	subl	%r12d, %edx
	movq	-48(%rsp), %r10                 # 8-byte Reload
	leal	(%r10,%rsi), %r9d
	subl	%r10d, %esi
	leal	(%r9,%rax), %r10d
	movw	%r10w, 16(%rdi)
	leal	(%rsi,%rdx,2), %r10d
	movw	%r10w, 18(%rdi)
	subl	%r9d, %eax
	movw	%ax, 20(%rdi)
	addl	%esi, %esi
	subl	%esi, %edx
	movw	%dx, 22(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	leal	(%r11,%rdx), %eax
	subl	%r11d, %edx
	movq	%rdx, %r8
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	leal	(%rsi,%rcx), %edx
	subl	%esi, %ecx
	leal	(%rdx,%rax), %esi
	movw	%si, 24(%rdi)
	leal	(%rcx,%r8,2), %esi
	movw	%si, 26(%rdi)
	subl	%edx, %eax
	movw	%ax, 28(%rdi)
	addl	%ecx, %ecx
	subl	%ecx, %r8d
	movw	%r8w, 30(%rdi)
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
	.size	sub4x4_dct, .Lfunc_end1-sub4x4_dct
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add4x4_idct
	.type	add4x4_idct,@function
add4x4_idct:                            # @add4x4_idct
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
	movzwl	(%rsi), %ebx
	movzwl	16(%rsi), %eax
	leal	(%rax,%rbx), %edx
	subl	%eax, %ebx
	movswl	8(%rsi), %eax
	movswl	24(%rsi), %ecx
	movl	%ecx, %r8d
	sarl	%r8d
	addl	%eax, %r8d
	sarl	%eax
	subl	%ecx, %eax
	leal	(%r8,%rdx), %r11d
	leal	(%rax,%rbx), %ecx
	movl	%ecx, -64(%rsp)                 # 4-byte Spill
	subl	%eax, %ebx
	subl	%r8d, %edx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movzwl	2(%rsi), %r12d
	movzwl	18(%rsi), %eax
	leal	(%rax,%r12), %edx
	subl	%eax, %r12d
	movswl	10(%rsi), %eax
	movswl	26(%rsi), %ecx
	movl	%ecx, %r8d
	sarl	%r8d
	addl	%eax, %r8d
	sarl	%eax
	subl	%ecx, %eax
	leal	(%r8,%rdx), %r9d
	leal	(%rax,%r12), %ecx
	movl	%ecx, -72(%rsp)                 # 4-byte Spill
	subl	%eax, %r12d
	subl	%r8d, %edx
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movzwl	4(%rsi), %edx
	movzwl	20(%rsi), %ecx
	leal	(%rcx,%rdx), %ebp
	subl	%ecx, %edx
	movswl	12(%rsi), %r8d
	movswl	28(%rsi), %ecx
	movl	%ecx, %r14d
	sarl	%r14d
	addl	%r8d, %r14d
	sarl	%r8d
	subl	%ecx, %r8d
	leal	(%r8,%rdx), %eax
	movl	%eax, -56(%rsp)                 # 4-byte Spill
	subl	%r8d, %edx
	leal	(%r14,%rbp), %r10d
	subl	%r14d, %ebp
	movzwl	6(%rsi), %r14d
	movzwl	22(%rsi), %r13d
	leal	(%r14,%r13), %r8d
	subl	%r13d, %r14d
	movswl	14(%rsi), %r13d
	movswl	30(%rsi), %esi
	movl	%esi, %eax
	sarl	%eax
	addl	%r13d, %eax
	sarl	%r13d
	subl	%esi, %r13d
	leal	(%r14,%r13), %esi
	subl	%r13d, %r14d
	leal	(%rax,%r8), %ecx
	subl	%eax, %r8d
	movswl	%r9w, %r9d
	movswl	%cx, %eax
	movl	%eax, %ecx
	sarl	%ecx
	addl	%r9d, %ecx
	sarl	%r9d
	subl	%eax, %r9d
	movq	%r9, -32(%rsp)                  # 8-byte Spill
	movswl	%r11w, %eax
	movswl	%r10w, %r9d
	leal	(%r9,%rax), %r15d
	addl	$32, %r15d
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%r9d, %eax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	leal	(%r15,%rcx), %r11d
	subl	%ecx, %r15d
	movq	%r15, -8(%rsp)                  # 8-byte Spill
	movswl	-72(%rsp), %r9d                 # 2-byte Folded Reload
	movswl	%si, %eax
	movl	%eax, %ecx
	sarl	%ecx
	addl	%r9d, %ecx
	sarl	%r9d
	subl	%eax, %r9d
	movq	%r9, -48(%rsp)                  # 8-byte Spill
	movswl	-64(%rsp), %eax                 # 2-byte Folded Reload
	movswl	-56(%rsp), %esi                 # 2-byte Folded Reload
	leal	(%rsi,%rax), %r13d
	addl	$32, %r13d
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%esi, %eax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	leal	(%rcx,%r13), %r10d
	subl	%ecx, %r13d
	movq	%r13, -56(%rsp)                 # 8-byte Spill
	movswl	%r12w, %r12d
	movswl	%r14w, %eax
	movl	%eax, %ecx
	sarl	%ecx
	addl	%r12d, %ecx
	sarl	%r12d
	subl	%eax, %r12d
	movswl	%bx, %eax
	movswl	%dx, %edx
	leal	(%rdx,%rax), %r13d
	addl	$32, %r13d
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%edx, %eax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	leal	(%rcx,%r13), %esi
	subl	%ecx, %r13d
	movswl	-24(%rsp), %r14d                # 2-byte Folded Reload
	movswl	%r8w, %eax
	movl	%eax, %ecx
	sarl	%ecx
	addl	%r14d, %ecx
	sarl	%r14d
	subl	%eax, %r14d
	movswl	-16(%rsp), %eax                 # 2-byte Folded Reload
	movswl	%bp, %r8d
	leal	(%r8,%rax), %r15d
	addl	$32, %r15d
	movl	%eax, %r9d
	subl	%r8d, %r9d
	leal	(%r15,%rcx), %edx
	subl	%ecx, %r15d
	sarl	$6, %r11d
	movzbl	(%rdi), %ecx
	addl	%ecx, %r11d
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	addl	$32, %ecx
	subl	-32(%rsp), %ecx                 # 4-byte Folded Reload
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ebp
	addl	$32, %ebp
	subl	-48(%rsp), %ebp                 # 4-byte Folded Reload
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ebx
	addl	$32, %ebx
	subl	%r12d, %ebx
	movl	%r9d, %r8d
	addl	$32, %r8d
	subl	%r14d, %r8d
	testl	%r11d, %r11d
	setg	%al
	negb	%al
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r11d, %eax
	movb	%al, (%rdi)
	sarl	$6, %r10d
	movzbl	1(%rdi), %eax
	addl	%eax, %r10d
	testl	%r10d, %r10d
	setg	%al
	negb	%al
	cmpl	$256, %r10d                     # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r10d, %eax
	movb	%al, 1(%rdi)
	sarl	$6, %esi
	movzbl	2(%rdi), %eax
	addl	%eax, %esi
	testl	%esi, %esi
	setg	%al
	negb	%al
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%esi, %eax
	movb	%al, 2(%rdi)
	sarl	$6, %edx
	movzbl	3(%rdi), %eax
	addl	%eax, %edx
	testl	%edx, %edx
	setg	%al
	negb	%al
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%edx, %eax
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	addl	%esi, %edx
	addl	$32, %edx
	movb	%al, 3(%rdi)
	sarl	$6, %edx
	movzbl	32(%rdi), %eax
	addl	%eax, %edx
	testl	%edx, %edx
	setg	%al
	negb	%al
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%edx, %eax
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	addl	%esi, %edx
	addl	$32, %edx
	movb	%al, 32(%rdi)
	movzbl	33(%rdi), %eax
	sarl	$6, %edx
	addl	%eax, %edx
	testl	%edx, %edx
	setg	%al
	negb	%al
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%edx, %eax
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	addl	%r12d, %edx
	addl	$32, %edx
	movb	%al, 33(%rdi)
	movzbl	34(%rdi), %eax
	sarl	$6, %edx
	addl	%eax, %edx
	testl	%edx, %edx
	setg	%al
	negb	%al
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%edx, %eax
	leal	(%r9,%r14), %edx
	addl	$32, %edx
	movb	%al, 34(%rdi)
	movzbl	35(%rdi), %eax
	sarl	$6, %edx
	addl	%eax, %edx
	testl	%edx, %edx
	setg	%al
	negb	%al
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%edx, %eax
	movb	%al, 35(%rdi)
	movzbl	64(%rdi), %eax
	sarl	$6, %ecx
	addl	%eax, %ecx
	testl	%ecx, %ecx
	setg	%al
	negb	%al
	cmpl	$256, %ecx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ecx, %eax
	movb	%al, 64(%rdi)
	movzbl	65(%rdi), %eax
	sarl	$6, %ebp
	addl	%eax, %ebp
	testl	%ebp, %ebp
	setg	%al
	negb	%al
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebp, %eax
	movb	%al, 65(%rdi)
	movzbl	66(%rdi), %eax
	sarl	$6, %ebx
	addl	%eax, %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, 66(%rdi)
	movzbl	67(%rdi), %eax
	sarl	$6, %r8d
	addl	%eax, %r8d
	testl	%r8d, %r8d
	setg	%al
	negb	%al
	cmpl	$256, %r8d                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r8d, %eax
	movb	%al, 67(%rdi)
	movzbl	96(%rdi), %eax
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	sarl	$6, %ecx
	addl	%eax, %ecx
	testl	%ecx, %ecx
	setg	%al
	negb	%al
	cmpl	$256, %ecx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ecx, %eax
	movb	%al, 96(%rdi)
	movzbl	97(%rdi), %eax
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	sarl	$6, %ecx
	addl	%eax, %ecx
	testl	%ecx, %ecx
	setg	%al
	negb	%al
	cmpl	$256, %ecx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ecx, %eax
	movb	%al, 97(%rdi)
	movzbl	98(%rdi), %eax
	sarl	$6, %r13d
	addl	%eax, %r13d
	testl	%r13d, %r13d
	setg	%al
	negb	%al
	cmpl	$256, %r13d                     # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r13d, %eax
	movb	%al, 98(%rdi)
	movzbl	99(%rdi), %eax
	sarl	$6, %r15d
	addl	%eax, %r15d
	testl	%r15d, %r15d
	setg	%al
	negb	%al
	cmpl	$256, %r15d                     # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r15d, %eax
	movb	%al, 99(%rdi)
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
	.size	add4x4_idct, .Lfunc_end2-add4x4_idct
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sub8x8_dct
	.type	sub8x8_dct,@function
sub8x8_dct:                             # @sub8x8_dct
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
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	sub4x4_dct
	leaq	32(%r15), %rdi
	leaq	4(%r14), %rsi
	leaq	4(%rbx), %rdx
	callq	sub4x4_dct
	leaq	64(%r15), %rdi
	leaq	64(%r14), %rsi
	leaq	128(%rbx), %rdx
	callq	sub4x4_dct
	addq	$96, %r15
	addq	$68, %r14
	addq	$132, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	sub4x4_dct                      # TAILCALL
.Lfunc_end3:
	.size	sub8x8_dct, .Lfunc_end3-sub8x8_dct
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sub8x8_dct_dc
	.type	sub8x8_dct_dc,@function
sub8x8_dct_dc:                          # @sub8x8_dct_dc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ecx
	movzbl	1(%rsi), %r8d
	addl	%eax, %r8d
	movzbl	1(%rdx), %eax
	addl	%ecx, %eax
	movzbl	2(%rsi), %ecx
	movzbl	2(%rdx), %r9d
	movzbl	3(%rsi), %r10d
	addl	%ecx, %r10d
	addl	%r8d, %r10d
	movzbl	3(%rdx), %ecx
	addl	%r9d, %ecx
	addl	%eax, %ecx
	movzbl	16(%rsi), %eax
	movzbl	32(%rdx), %r8d
	movzbl	17(%rsi), %r9d
	addl	%eax, %r9d
	movzbl	33(%rdx), %eax
	addl	%r8d, %eax
	movzbl	18(%rsi), %r8d
	addl	%r9d, %r8d
	addl	%r10d, %r8d
	movzbl	34(%rdx), %r9d
	addl	%eax, %r9d
	addl	%ecx, %r9d
	movzbl	19(%rsi), %eax
	movzbl	35(%rdx), %ecx
	movzbl	32(%rsi), %r10d
	addl	%eax, %r10d
	movzbl	64(%rdx), %eax
	addl	%ecx, %eax
	movzbl	33(%rsi), %ecx
	addl	%r10d, %ecx
	movzbl	65(%rdx), %r10d
	addl	%eax, %r10d
	movzbl	34(%rsi), %eax
	addl	%ecx, %eax
	addl	%r8d, %eax
	movzbl	66(%rdx), %ecx
	addl	%r10d, %ecx
	addl	%r9d, %ecx
	movzbl	35(%rsi), %r8d
	movzbl	67(%rdx), %r9d
	movzbl	48(%rsi), %r10d
	addl	%r8d, %r10d
	movzbl	96(%rdx), %r8d
	addl	%r9d, %r8d
	movzbl	49(%rsi), %r9d
	addl	%r10d, %r9d
	movzbl	97(%rdx), %r10d
	addl	%r8d, %r10d
	movzbl	50(%rsi), %r8d
	addl	%r9d, %r8d
	addl	%eax, %r8d
	movzbl	98(%rdx), %eax
	addl	%r10d, %eax
	addl	%ecx, %eax
	subl	%eax, %r8d
	movzbl	51(%rsi), %eax
	movzbl	99(%rdx), %ecx
	subl	%ecx, %eax
	addl	%r8d, %eax
	movw	%ax, (%rdi)
	movzbl	4(%rsi), %ecx
	movzbl	4(%rdx), %r8d
	movzbl	5(%rsi), %r9d
	addl	%ecx, %r9d
	movzbl	5(%rdx), %ecx
	addl	%r8d, %ecx
	movzbl	6(%rsi), %r8d
	movzbl	6(%rdx), %r10d
	movzbl	7(%rsi), %r11d
	addl	%r8d, %r11d
	addl	%r9d, %r11d
	movzbl	7(%rdx), %r8d
	addl	%r10d, %r8d
	addl	%ecx, %r8d
	movzbl	20(%rsi), %ecx
	movzbl	36(%rdx), %r9d
	movzbl	21(%rsi), %r10d
	addl	%ecx, %r10d
	movzbl	37(%rdx), %ecx
	addl	%r9d, %ecx
	movzbl	22(%rsi), %r9d
	addl	%r10d, %r9d
	addl	%r11d, %r9d
	movzbl	38(%rdx), %r10d
	addl	%ecx, %r10d
	addl	%r8d, %r10d
	movzbl	23(%rsi), %ecx
	movzbl	39(%rdx), %r8d
	movzbl	36(%rsi), %r11d
	addl	%ecx, %r11d
	movzbl	68(%rdx), %ecx
	addl	%r8d, %ecx
	movzbl	37(%rsi), %r8d
	addl	%r11d, %r8d
	movzbl	69(%rdx), %r11d
	addl	%ecx, %r11d
	movzbl	38(%rsi), %ecx
	addl	%r8d, %ecx
	addl	%r9d, %ecx
	movzbl	70(%rdx), %r8d
	addl	%r11d, %r8d
	addl	%r10d, %r8d
	movzbl	39(%rsi), %r9d
	movzbl	71(%rdx), %r10d
	movzbl	52(%rsi), %r11d
	addl	%r9d, %r11d
	movzbl	100(%rdx), %r9d
	addl	%r10d, %r9d
	movzbl	53(%rsi), %r10d
	addl	%r11d, %r10d
	movzbl	101(%rdx), %r11d
	addl	%r9d, %r11d
	movzbl	54(%rsi), %r9d
	addl	%r10d, %r9d
	addl	%ecx, %r9d
	movzbl	102(%rdx), %ecx
	addl	%r11d, %ecx
	addl	%r8d, %ecx
	subl	%ecx, %r9d
	movzbl	55(%rsi), %ecx
	movzbl	103(%rdx), %r8d
	subl	%r8d, %ecx
	addl	%r9d, %ecx
	movw	%cx, 2(%rdi)
	movzbl	64(%rsi), %r8d
	movzbl	128(%rdx), %r9d
	movzbl	65(%rsi), %r10d
	addl	%r8d, %r10d
	movzbl	129(%rdx), %r8d
	addl	%r9d, %r8d
	movzbl	66(%rsi), %r9d
	movzbl	130(%rdx), %r11d
	movzbl	67(%rsi), %ebx
	addl	%r9d, %ebx
	addl	%r10d, %ebx
	movzbl	131(%rdx), %r9d
	addl	%r11d, %r9d
	addl	%r8d, %r9d
	movzbl	80(%rsi), %r8d
	movzbl	160(%rdx), %r10d
	movzbl	81(%rsi), %r11d
	addl	%r8d, %r11d
	movzbl	161(%rdx), %r8d
	addl	%r10d, %r8d
	movzbl	82(%rsi), %r10d
	addl	%r11d, %r10d
	addl	%ebx, %r10d
	movzbl	162(%rdx), %r11d
	addl	%r8d, %r11d
	addl	%r9d, %r11d
	movzbl	83(%rsi), %r8d
	movzbl	163(%rdx), %r9d
	movzbl	96(%rsi), %ebx
	addl	%r8d, %ebx
	movzbl	192(%rdx), %r8d
	addl	%r9d, %r8d
	movzbl	97(%rsi), %r9d
	addl	%ebx, %r9d
	movzbl	193(%rdx), %ebx
	addl	%r8d, %ebx
	movzbl	98(%rsi), %r8d
	addl	%r9d, %r8d
	addl	%r10d, %r8d
	movzbl	194(%rdx), %r9d
	addl	%ebx, %r9d
	addl	%r11d, %r9d
	movzbl	99(%rsi), %r10d
	movzbl	195(%rdx), %r11d
	movzbl	112(%rsi), %ebx
	addl	%r10d, %ebx
	movzbl	224(%rdx), %r10d
	addl	%r11d, %r10d
	movzbl	113(%rsi), %r11d
	addl	%ebx, %r11d
	movzbl	225(%rdx), %ebx
	addl	%r10d, %ebx
	movzbl	114(%rsi), %r10d
	addl	%r11d, %r10d
	addl	%r8d, %r10d
	movzbl	226(%rdx), %r8d
	addl	%ebx, %r8d
	addl	%r9d, %r8d
	subl	%r8d, %r10d
	movzbl	115(%rsi), %r8d
	movzbl	227(%rdx), %r9d
	subl	%r9d, %r8d
	addl	%r10d, %r8d
	movw	%r8w, 4(%rdi)
	movzbl	68(%rsi), %r9d
	movzbl	132(%rdx), %r10d
	movzbl	69(%rsi), %r11d
	addl	%r9d, %r11d
	movzbl	133(%rdx), %r9d
	addl	%r10d, %r9d
	movzbl	70(%rsi), %r10d
	movzbl	134(%rdx), %ebx
	movzbl	71(%rsi), %ebp
	addl	%r10d, %ebp
	addl	%r11d, %ebp
	movzbl	135(%rdx), %r10d
	addl	%ebx, %r10d
	addl	%r9d, %r10d
	movzbl	84(%rsi), %r9d
	movzbl	164(%rdx), %r11d
	movzbl	85(%rsi), %ebx
	addl	%r9d, %ebx
	movzbl	165(%rdx), %r9d
	addl	%r11d, %r9d
	movzbl	86(%rsi), %r11d
	addl	%ebx, %r11d
	addl	%ebp, %r11d
	movzbl	166(%rdx), %ebx
	addl	%r9d, %ebx
	addl	%r10d, %ebx
	movzbl	87(%rsi), %r9d
	movzbl	167(%rdx), %r10d
	movzbl	100(%rsi), %ebp
	addl	%r9d, %ebp
	movzbl	196(%rdx), %r9d
	addl	%r10d, %r9d
	movzbl	101(%rsi), %r10d
	addl	%ebp, %r10d
	movzbl	197(%rdx), %ebp
	addl	%r9d, %ebp
	movzbl	102(%rsi), %r9d
	addl	%r10d, %r9d
	addl	%r11d, %r9d
	movzbl	198(%rdx), %r10d
	addl	%ebp, %r10d
	addl	%ebx, %r10d
	movzbl	103(%rsi), %r11d
	movzbl	199(%rdx), %ebx
	movzbl	116(%rsi), %ebp
	addl	%r11d, %ebp
	movzbl	228(%rdx), %r11d
	addl	%ebx, %r11d
	movzbl	117(%rsi), %ebx
	addl	%ebp, %ebx
	movzbl	229(%rdx), %ebp
	addl	%r11d, %ebp
	movzbl	118(%rsi), %r11d
	addl	%ebx, %r11d
	addl	%r9d, %r11d
	movzbl	230(%rdx), %r9d
	addl	%ebp, %r9d
	addl	%r10d, %r9d
	subl	%r9d, %r11d
	movzbl	119(%rsi), %esi
	movzbl	231(%rdx), %edx
	subl	%edx, %esi
	addl	%r11d, %esi
	movzwl	%ax, %eax
	movzwl	%cx, %ecx
	leal	(%rcx,%rax), %edx
	movzwl	%r8w, %r8d
	leal	(%rsi,%r8), %r9d
	subl	%ecx, %eax
	subl	%esi, %r8d
	leal	(%r9,%rdx), %ecx
	movw	%cx, (%rdi)
	leal	(%r8,%rax), %ecx
	movw	%cx, 4(%rdi)
	subl	%r9d, %edx
	movw	%dx, 2(%rdi)
	subl	%r8d, %eax
	movw	%ax, 6(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	sub8x8_dct_dc, .Lfunc_end4-sub8x8_dct_dc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add8x8_idct
	.type	add8x8_idct,@function
add8x8_idct:                            # @add8x8_idct
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
	callq	add4x4_idct
	leaq	4(%r14), %rdi
	leaq	32(%rbx), %rsi
	callq	add4x4_idct
	leaq	128(%r14), %rdi
	leaq	64(%rbx), %rsi
	callq	add4x4_idct
	addq	$132, %r14
	addq	$96, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	add4x4_idct                     # TAILCALL
.Lfunc_end5:
	.size	add8x8_idct, .Lfunc_end5-add8x8_idct
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add8x8_idct_dc
	.type	add8x8_idct_dc,@function
add8x8_idct_dc:                         # @add8x8_idct_dc
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
	movswl	(%rsi), %esi
	callq	add4x4_idct_dc
	leaq	4(%r14), %rdi
	movswl	2(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	128(%r14), %rdi
	movswl	4(%rbx), %esi
	callq	add4x4_idct_dc
	addq	$132, %r14
	movswl	6(%rbx), %esi
	movq	%r14, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	add4x4_idct_dc                  # TAILCALL
.Lfunc_end6:
	.size	add8x8_idct_dc, .Lfunc_end6-add8x8_idct_dc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sub16x16_dct
	.type	sub16x16_dct,@function
sub16x16_dct:                           # @sub16x16_dct
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
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	sub4x4_dct
	leaq	32(%r15), %rdi
	leaq	4(%r14), %rsi
	leaq	4(%rbx), %rdx
	callq	sub4x4_dct
	leaq	64(%r15), %rdi
	leaq	64(%r14), %rsi
	leaq	128(%rbx), %rdx
	callq	sub4x4_dct
	leaq	96(%r15), %rdi
	leaq	68(%r14), %rsi
	leaq	132(%rbx), %rdx
	callq	sub4x4_dct
	leaq	128(%r15), %rdi
	leaq	8(%r14), %rsi
	leaq	8(%rbx), %rdx
	callq	sub4x4_dct
	leaq	160(%r15), %rdi
	leaq	12(%r14), %rsi
	leaq	12(%rbx), %rdx
	callq	sub4x4_dct
	leaq	192(%r15), %rdi
	leaq	72(%r14), %rsi
	leaq	136(%rbx), %rdx
	callq	sub4x4_dct
	leaq	224(%r15), %rdi
	leaq	76(%r14), %rsi
	leaq	140(%rbx), %rdx
	callq	sub4x4_dct
	leaq	256(%r15), %rdi
	leaq	128(%r14), %rsi
	leaq	256(%rbx), %rdx
	callq	sub4x4_dct
	leaq	288(%r15), %rdi
	leaq	132(%r14), %rsi
	leaq	260(%rbx), %rdx
	callq	sub4x4_dct
	leaq	320(%r15), %rdi
	leaq	192(%r14), %rsi
	leaq	384(%rbx), %rdx
	callq	sub4x4_dct
	leaq	352(%r15), %rdi
	leaq	196(%r14), %rsi
	leaq	388(%rbx), %rdx
	callq	sub4x4_dct
	leaq	384(%r15), %rdi
	leaq	136(%r14), %rsi
	leaq	264(%rbx), %rdx
	callq	sub4x4_dct
	leaq	416(%r15), %rdi
	leaq	140(%r14), %rsi
	leaq	268(%rbx), %rdx
	callq	sub4x4_dct
	leaq	448(%r15), %rdi
	leaq	200(%r14), %rsi
	leaq	392(%rbx), %rdx
	callq	sub4x4_dct
	addq	$480, %r15                      # imm = 0x1E0
	addq	$204, %r14
	addq	$396, %rbx                      # imm = 0x18C
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	sub4x4_dct                      # TAILCALL
.Lfunc_end7:
	.size	sub16x16_dct, .Lfunc_end7-sub16x16_dct
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add16x16_idct
	.type	add16x16_idct,@function
add16x16_idct:                          # @add16x16_idct
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
	callq	add4x4_idct
	leaq	4(%r14), %rdi
	leaq	32(%rbx), %rsi
	callq	add4x4_idct
	leaq	128(%r14), %rdi
	leaq	64(%rbx), %rsi
	callq	add4x4_idct
	leaq	132(%r14), %rdi
	leaq	96(%rbx), %rsi
	callq	add4x4_idct
	leaq	8(%r14), %rdi
	leaq	128(%rbx), %rsi
	callq	add4x4_idct
	leaq	12(%r14), %rdi
	leaq	160(%rbx), %rsi
	callq	add4x4_idct
	leaq	136(%r14), %rdi
	leaq	192(%rbx), %rsi
	callq	add4x4_idct
	leaq	140(%r14), %rdi
	leaq	224(%rbx), %rsi
	callq	add4x4_idct
	leaq	256(%r14), %rdi
	leaq	256(%rbx), %rsi
	callq	add4x4_idct
	leaq	260(%r14), %rdi
	leaq	288(%rbx), %rsi
	callq	add4x4_idct
	leaq	384(%r14), %rdi
	leaq	320(%rbx), %rsi
	callq	add4x4_idct
	leaq	388(%r14), %rdi
	leaq	352(%rbx), %rsi
	callq	add4x4_idct
	leaq	264(%r14), %rdi
	leaq	384(%rbx), %rsi
	callq	add4x4_idct
	leaq	268(%r14), %rdi
	leaq	416(%rbx), %rsi
	callq	add4x4_idct
	leaq	392(%r14), %rdi
	leaq	448(%rbx), %rsi
	callq	add4x4_idct
	addq	$396, %r14                      # imm = 0x18C
	addq	$480, %rbx                      # imm = 0x1E0
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	add4x4_idct                     # TAILCALL
.Lfunc_end8:
	.size	add16x16_idct, .Lfunc_end8-add16x16_idct
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add16x16_idct_dc
	.type	add16x16_idct_dc,@function
add16x16_idct_dc:                       # @add16x16_idct_dc
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
	movswl	(%rsi), %esi
	callq	add4x4_idct_dc
	leaq	4(%r14), %rdi
	movswl	2(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	8(%r14), %rdi
	movswl	4(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	12(%r14), %rdi
	movswl	6(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	128(%r14), %rdi
	movswl	8(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	132(%r14), %rdi
	movswl	10(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	136(%r14), %rdi
	movswl	12(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	140(%r14), %rdi
	movswl	14(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	256(%r14), %rdi
	movswl	16(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	260(%r14), %rdi
	movswl	18(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	264(%r14), %rdi
	movswl	20(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	268(%r14), %rdi
	movswl	22(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	384(%r14), %rdi
	movswl	24(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	388(%r14), %rdi
	movswl	26(%rbx), %esi
	callq	add4x4_idct_dc
	leaq	392(%r14), %rdi
	movswl	28(%rbx), %esi
	callq	add4x4_idct_dc
	addq	$396, %r14                      # imm = 0x18C
	movswl	30(%rbx), %esi
	movq	%r14, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	add4x4_idct_dc                  # TAILCALL
.Lfunc_end9:
	.size	add16x16_idct_dc, .Lfunc_end9-add16x16_idct_dc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sub8x8_dct8
	.type	sub8x8_dct8,@function
sub8x8_dct8:                            # @sub8x8_dct8
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
	movq	%rdi, -104(%rsp)                # 8-byte Spill
	movq	(%rsi), %xmm1                   # xmm1 = mem[0],zero
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movq	(%rdx), %xmm2                   # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	psubw	%xmm2, %xmm1
	movdqa	%xmm1, -96(%rsp)
	movq	16(%rsi), %xmm1                 # xmm1 = mem[0],zero
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movq	32(%rdx), %xmm2                 # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	psubw	%xmm2, %xmm1
	movdqa	%xmm1, -80(%rsp)
	movq	32(%rsi), %xmm1                 # xmm1 = mem[0],zero
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movq	64(%rdx), %xmm2                 # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	psubw	%xmm2, %xmm1
	movdqa	%xmm1, -64(%rsp)
	movq	48(%rsi), %xmm1                 # xmm1 = mem[0],zero
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movq	96(%rdx), %xmm2                 # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	psubw	%xmm2, %xmm1
	movdqa	%xmm1, -48(%rsp)
	movq	64(%rsi), %xmm1                 # xmm1 = mem[0],zero
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movq	128(%rdx), %xmm2                # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	psubw	%xmm2, %xmm1
	movdqa	%xmm1, -32(%rsp)
	movq	80(%rsi), %xmm1                 # xmm1 = mem[0],zero
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movq	160(%rdx), %xmm2                # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	psubw	%xmm2, %xmm1
	movdqa	%xmm1, -16(%rsp)
	movq	96(%rsi), %xmm1                 # xmm1 = mem[0],zero
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movq	192(%rdx), %xmm2                # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	psubw	%xmm2, %xmm1
	movdqa	%xmm1, (%rsp)
	movq	112(%rsi), %xmm1                # xmm1 = mem[0],zero
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movq	224(%rdx), %xmm2                # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	psubw	%xmm2, %xmm1
	movdqa	%xmm1, 16(%rsp)
	xorl	%eax, %eax
	jmp	.LBB10_1
	.p2align	4, 0x90
.LBB10_9:                               # %pred.store.continue472
                                        #   in Loop: Header=BB10_1 Depth=1
	addq	$4, %rax
	cmpq	$8, %rax
	je	.LBB10_10
.LBB10_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$7, %rax
	jbe	.LBB10_2
# %bb.3:                                # %pred.store.continue
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$7, %rax
	jbe	.LBB10_4
.LBB10_5:                               # %pred.store.continue468
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$7, %rax
	jbe	.LBB10_6
.LBB10_7:                               # %pred.store.continue470
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$7, %rax
	ja	.LBB10_9
	jmp	.LBB10_8
	.p2align	4, 0x90
.LBB10_2:                               # %pred.store.if
                                        #   in Loop: Header=BB10_1 Depth=1
	movswl	-96(%rsp,%rax,2), %ecx
	movl	%ecx, -112(%rsp)                # 4-byte Spill
	movswl	16(%rsp,%rax,2), %r10d
	movswl	-80(%rsp,%rax,2), %ebp
	movswl	(%rsp,%rax,2), %r11d
	movswl	-64(%rsp,%rax,2), %r14d
	movswl	-16(%rsp,%rax,2), %r8d
	movswl	-48(%rsp,%rax,2), %r15d
	movswl	-32(%rsp,%rax,2), %r9d
	movl	%r15d, %r12d
	subl	%r9d, %r12d
	movl	%ecx, %esi
	subl	%r10d, %esi
	movl	%ebp, %ecx
	subl	%r11d, %ecx
	movl	%r14d, %r13d
	subl	%r8d, %r13d
	movl	%ecx, %edi
	sarl	%edi
	movl	%esi, %edx
	sarl	%edx
	addl	%ecx, %edi
	addl	%esi, %edx
	addl	%ecx, %edx
	leal	(%r12,%r13), %ebx
	subl	%r13d, %ecx
	addl	%r13d, %edx
                                        # kill: def $r13d killed $r13d killed $r13
	sarl	%r13d
	addl	%ebx, %r13d
	movl	%esi, %ebx
	subl	%edi, %ebx
	addl	%r12d, %ecx
	addl	%r12d, %ebx
	movl	%r12d, %edi
	sarl	%edi
	addl	%edi, %ecx
	addl	%ebp, %r11d
	addl	%r14d, %r8d
	addl	-112(%rsp), %r10d               # 4-byte Folded Reload
	addl	%r15d, %r9d
	subl	%r13d, %esi
	movl	%r11d, %edi
	subl	%r8d, %edi
	addl	%r11d, %r8d
	movl	%r10d, %r11d
	subl	%r9d, %r11d
	addl	%r10d, %r9d
	leal	(%r9,%r8), %r10d
	movw	%r10w, -96(%rsp,%rax,2)
	movl	%ecx, %r10d
	shrl	$2, %r10d
	addl	%edx, %r10d
	movw	%r10w, -80(%rsp,%rax,2)
	movl	%edi, %r10d
	shrl	%r10d
	addl	%r11d, %r10d
	movw	%r10w, -64(%rsp,%rax,2)
	movl	%ebx, %r10d
	shrl	$2, %r10d
	addl	%esi, %r10d
	movw	%r10w, -48(%rsp,%rax,2)
	subl	%r8d, %r9d
	movw	%r9w, -32(%rsp,%rax,2)
	shrl	$2, %esi
	subl	%esi, %ebx
	movw	%bx, -16(%rsp,%rax,2)
	shrl	%r11d
	subl	%edi, %r11d
	movw	%r11w, (%rsp,%rax,2)
	shrl	$2, %edx
	subl	%ecx, %edx
	movw	%dx, 16(%rsp,%rax,2)
	cmpq	$7, %rax
	ja	.LBB10_5
.LBB10_4:                               # %pred.store.if467
                                        #   in Loop: Header=BB10_1 Depth=1
	movswl	-94(%rsp,%rax,2), %ecx
	movl	%ecx, -112(%rsp)                # 4-byte Spill
	movswl	18(%rsp,%rax,2), %r10d
	movswl	-78(%rsp,%rax,2), %ebp
	movswl	2(%rsp,%rax,2), %r11d
	movswl	-62(%rsp,%rax,2), %r14d
	movswl	-14(%rsp,%rax,2), %r8d
	movswl	-46(%rsp,%rax,2), %r15d
	movswl	-30(%rsp,%rax,2), %r9d
	movl	%r15d, %r12d
	subl	%r9d, %r12d
	movl	%ecx, %esi
	subl	%r10d, %esi
	movl	%ebp, %ecx
	subl	%r11d, %ecx
	movl	%r14d, %r13d
	subl	%r8d, %r13d
	movl	%ecx, %edi
	sarl	%edi
	movl	%esi, %edx
	sarl	%edx
	addl	%ecx, %edi
	addl	%esi, %edx
	addl	%ecx, %edx
	leal	(%r12,%r13), %ebx
	subl	%r13d, %ecx
	addl	%r13d, %edx
                                        # kill: def $r13d killed $r13d killed $r13
	sarl	%r13d
	addl	%ebx, %r13d
	movl	%esi, %ebx
	subl	%edi, %ebx
	addl	%r12d, %ecx
	addl	%r12d, %ebx
	movl	%r12d, %edi
	sarl	%edi
	addl	%edi, %ecx
	addl	%ebp, %r11d
	addl	%r14d, %r8d
	addl	-112(%rsp), %r10d               # 4-byte Folded Reload
	addl	%r15d, %r9d
	subl	%r13d, %esi
	movl	%r11d, %edi
	subl	%r8d, %edi
	addl	%r11d, %r8d
	movl	%r10d, %r11d
	subl	%r9d, %r11d
	addl	%r10d, %r9d
	leal	(%r9,%r8), %r10d
	movw	%r10w, -94(%rsp,%rax,2)
	movl	%ecx, %r10d
	shrl	$2, %r10d
	addl	%edx, %r10d
	movw	%r10w, -78(%rsp,%rax,2)
	movl	%edi, %r10d
	shrl	%r10d
	addl	%r11d, %r10d
	movw	%r10w, -62(%rsp,%rax,2)
	movl	%ebx, %r10d
	shrl	$2, %r10d
	addl	%esi, %r10d
	movw	%r10w, -46(%rsp,%rax,2)
	subl	%r8d, %r9d
	movw	%r9w, -30(%rsp,%rax,2)
	shrl	$2, %esi
	subl	%esi, %ebx
	movw	%bx, -14(%rsp,%rax,2)
	shrl	%r11d
	subl	%edi, %r11d
	movw	%r11w, 2(%rsp,%rax,2)
	shrl	$2, %edx
	subl	%ecx, %edx
	movw	%dx, 18(%rsp,%rax,2)
	cmpq	$7, %rax
	ja	.LBB10_7
.LBB10_6:                               # %pred.store.if469
                                        #   in Loop: Header=BB10_1 Depth=1
	movswl	-92(%rsp,%rax,2), %ecx
	movl	%ecx, -112(%rsp)                # 4-byte Spill
	movswl	20(%rsp,%rax,2), %r10d
	movswl	-76(%rsp,%rax,2), %ebp
	movswl	4(%rsp,%rax,2), %r11d
	movswl	-60(%rsp,%rax,2), %r14d
	movswl	-12(%rsp,%rax,2), %r8d
	movswl	-44(%rsp,%rax,2), %r15d
	movswl	-28(%rsp,%rax,2), %r9d
	movl	%r15d, %r12d
	subl	%r9d, %r12d
	movl	%ecx, %esi
	subl	%r10d, %esi
	movl	%ebp, %ecx
	subl	%r11d, %ecx
	movl	%r14d, %r13d
	subl	%r8d, %r13d
	movl	%ecx, %edi
	sarl	%edi
	movl	%esi, %edx
	sarl	%edx
	addl	%ecx, %edi
	addl	%esi, %edx
	addl	%ecx, %edx
	leal	(%r12,%r13), %ebx
	subl	%r13d, %ecx
	addl	%r13d, %edx
                                        # kill: def $r13d killed $r13d killed $r13
	sarl	%r13d
	addl	%ebx, %r13d
	movl	%esi, %ebx
	subl	%edi, %ebx
	addl	%r12d, %ecx
	addl	%r12d, %ebx
	movl	%r12d, %edi
	sarl	%edi
	addl	%edi, %ecx
	addl	%ebp, %r11d
	addl	%r14d, %r8d
	addl	-112(%rsp), %r10d               # 4-byte Folded Reload
	addl	%r15d, %r9d
	subl	%r13d, %esi
	movl	%r11d, %edi
	subl	%r8d, %edi
	addl	%r11d, %r8d
	movl	%r10d, %r11d
	subl	%r9d, %r11d
	addl	%r10d, %r9d
	leal	(%r9,%r8), %r10d
	movw	%r10w, -92(%rsp,%rax,2)
	movl	%ecx, %r10d
	shrl	$2, %r10d
	addl	%edx, %r10d
	movw	%r10w, -76(%rsp,%rax,2)
	movl	%edi, %r10d
	shrl	%r10d
	addl	%r11d, %r10d
	movw	%r10w, -60(%rsp,%rax,2)
	movl	%ebx, %r10d
	shrl	$2, %r10d
	addl	%esi, %r10d
	movw	%r10w, -44(%rsp,%rax,2)
	subl	%r8d, %r9d
	movw	%r9w, -28(%rsp,%rax,2)
	shrl	$2, %esi
	subl	%esi, %ebx
	movw	%bx, -12(%rsp,%rax,2)
	shrl	%r11d
	subl	%edi, %r11d
	movw	%r11w, 4(%rsp,%rax,2)
	shrl	$2, %edx
	subl	%ecx, %edx
	movw	%dx, 20(%rsp,%rax,2)
	cmpq	$7, %rax
	ja	.LBB10_9
.LBB10_8:                               # %pred.store.if471
                                        #   in Loop: Header=BB10_1 Depth=1
	movswl	-90(%rsp,%rax,2), %ecx
	movl	%ecx, -112(%rsp)                # 4-byte Spill
	movswl	22(%rsp,%rax,2), %r10d
	movswl	-74(%rsp,%rax,2), %ebp
	movswl	6(%rsp,%rax,2), %r11d
	movswl	-58(%rsp,%rax,2), %r14d
	movswl	-10(%rsp,%rax,2), %r8d
	movswl	-42(%rsp,%rax,2), %r15d
	movswl	-26(%rsp,%rax,2), %r9d
	movl	%r15d, %r12d
	subl	%r9d, %r12d
	movl	%ecx, %esi
	subl	%r10d, %esi
	movl	%ebp, %ecx
	subl	%r11d, %ecx
	movl	%r14d, %r13d
	subl	%r8d, %r13d
	movl	%ecx, %edi
	sarl	%edi
	movl	%esi, %edx
	sarl	%edx
	addl	%ecx, %edi
	addl	%esi, %edx
	addl	%ecx, %edx
	leal	(%r12,%r13), %ebx
	subl	%r13d, %ecx
	addl	%r13d, %edx
                                        # kill: def $r13d killed $r13d killed $r13
	sarl	%r13d
	addl	%ebx, %r13d
	movl	%esi, %ebx
	subl	%edi, %ebx
	addl	%r12d, %ecx
	addl	%r12d, %ebx
	movl	%r12d, %edi
	sarl	%edi
	addl	%edi, %ecx
	addl	%ebp, %r11d
	addl	%r14d, %r8d
	addl	-112(%rsp), %r10d               # 4-byte Folded Reload
	addl	%r15d, %r9d
	subl	%r13d, %esi
	movl	%r11d, %edi
	subl	%r8d, %edi
	addl	%r11d, %r8d
	movl	%r10d, %r11d
	subl	%r9d, %r11d
	addl	%r10d, %r9d
	leal	(%r9,%r8), %r10d
	movw	%r10w, -90(%rsp,%rax,2)
	movl	%ecx, %r10d
	shrl	$2, %r10d
	addl	%edx, %r10d
	movw	%r10w, -74(%rsp,%rax,2)
	movl	%edi, %r10d
	shrl	%r10d
	addl	%r11d, %r10d
	movw	%r10w, -58(%rsp,%rax,2)
	movl	%ebx, %r10d
	shrl	$2, %r10d
	addl	%esi, %r10d
	movw	%r10w, -42(%rsp,%rax,2)
	subl	%r8d, %r9d
	movw	%r9w, -26(%rsp,%rax,2)
	shrl	$2, %esi
	subl	%esi, %ebx
	movw	%bx, -10(%rsp,%rax,2)
	shrl	%r11d
	subl	%edi, %r11d
	movw	%r11w, 6(%rsp,%rax,2)
	shrl	$2, %edx
	subl	%ecx, %edx
	movw	%dx, 22(%rsp,%rax,2)
	jmp	.LBB10_9
.LBB10_10:                              # %vector.body477.preheader
	leaq	-34(%rsp), %rax
	xorl	%ecx, %ecx
	jmp	.LBB10_11
	.p2align	4, 0x90
.LBB10_19:                              # %pred.store.continue486
                                        #   in Loop: Header=BB10_11 Depth=1
	addq	$4, %rcx
	addq	$64, %rax
	cmpq	$8, %rcx
	je	.LBB10_20
.LBB10_11:                              # %vector.body477
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$7, %rcx
	movq	%rax, -112(%rsp)                # 8-byte Spill
	jbe	.LBB10_12
# %bb.13:                               # %pred.store.continue480
                                        #   in Loop: Header=BB10_11 Depth=1
	cmpq	$7, %rcx
	jbe	.LBB10_14
.LBB10_15:                              # %pred.store.continue482
                                        #   in Loop: Header=BB10_11 Depth=1
	cmpq	$7, %rcx
	jbe	.LBB10_16
.LBB10_17:                              # %pred.store.continue484
                                        #   in Loop: Header=BB10_11 Depth=1
	cmpq	$7, %rcx
	ja	.LBB10_19
	jmp	.LBB10_18
	.p2align	4, 0x90
.LBB10_12:                              # %pred.store.if479
                                        #   in Loop: Header=BB10_11 Depth=1
	movswl	-62(%rax), %r9d
	movswl	-48(%rax), %r11d
	movswl	-60(%rax), %edx
	movl	%edx, -116(%rsp)                # 4-byte Spill
	movswl	-50(%rax), %ebx
	movswl	-58(%rax), %esi
	movl	%esi, -120(%rsp)                # 4-byte Spill
	movswl	-52(%rax), %r12d
	movswl	-56(%rax), %r15d
	movswl	-54(%rax), %r10d
	movl	%r15d, %r13d
	subl	%r10d, %r13d
	movl	%r9d, %r8d
	subl	%r11d, %r8d
                                        # kill: def $edx killed $edx def $rdx
	subl	%ebx, %edx
	movl	%esi, %eax
	subl	%r12d, %eax
	movl	%edx, %edi
	sarl	%edi
	movl	%r8d, %esi
	sarl	%esi
	addl	%edx, %edi
	addl	%r8d, %esi
	addl	%edx, %esi
	subl	%eax, %edx
	addl	%eax, %esi
	movl	%eax, %ebp
	sarl	%ebp
	addl	%eax, %ebp
	addl	%r13d, %ebp
	movl	%r8d, %eax
	subl	%edi, %eax
	addl	%r13d, %edx
	addl	%r13d, %eax
	movl	%r13d, %edi
	sarl	%edi
	addl	%edi, %edx
	addl	-116(%rsp), %ebx                # 4-byte Folded Reload
	addl	-120(%rsp), %r12d               # 4-byte Folded Reload
	addl	%r9d, %r11d
	addl	%r15d, %r10d
	subl	%ebp, %r8d
	movl	%ebx, %edi
	subl	%r12d, %edi
	addl	%ebx, %r12d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	addl	%r11d, %r10d
	leal	(%r10,%r12), %r11d
	movq	-104(%rsp), %r9                 # 8-byte Reload
	movw	%r11w, (%r9,%rcx,2)
	movl	%edx, %r11d
	shrl	$2, %r11d
	addl	%esi, %r11d
	movw	%r11w, 16(%r9,%rcx,2)
	movl	%edi, %r11d
	shrl	%r11d
	addl	%ebx, %r11d
	movw	%r11w, 32(%r9,%rcx,2)
	movl	%eax, %r11d
	shrl	$2, %r11d
	addl	%r8d, %r11d
	movw	%r11w, 48(%r9,%rcx,2)
	subl	%r12d, %r10d
	movw	%r10w, 64(%r9,%rcx,2)
	shrl	$2, %r8d
	subl	%r8d, %eax
	movw	%ax, 80(%r9,%rcx,2)
	movq	-112(%rsp), %rax                # 8-byte Reload
	shrl	%ebx
	subl	%edi, %ebx
	movw	%bx, 96(%r9,%rcx,2)
	shrl	$2, %esi
	subl	%edx, %esi
	movw	%si, 112(%r9,%rcx,2)
	cmpq	$7, %rcx
	ja	.LBB10_15
.LBB10_14:                              # %pred.store.if481
                                        #   in Loop: Header=BB10_11 Depth=1
	movswl	-46(%rax), %r9d
	movswl	-32(%rax), %r11d
	movswl	-44(%rax), %esi
	movl	%esi, -120(%rsp)                # 4-byte Spill
	movswl	-34(%rax), %ebx
	movswl	-42(%rax), %ebp
	movswl	-36(%rax), %r12d
	movswl	-40(%rax), %edx
	movl	%edx, -116(%rsp)                # 4-byte Spill
	movswl	-38(%rax), %r10d
	movl	%edx, %r13d
	subl	%r10d, %r13d
	movl	%r9d, %r8d
	subl	%r11d, %r8d
	movl	%esi, %edx
	subl	%ebx, %edx
	movl	%ebp, %edi
	subl	%r12d, %edi
	movl	%edx, %eax
	sarl	%eax
	movl	%r8d, %esi
	sarl	%esi
	addl	%edx, %eax
	addl	%r8d, %esi
	addl	%edx, %esi
	subl	%edi, %edx
	addl	%edi, %esi
	movl	%edi, %r15d
	sarl	%r15d
	addl	%edi, %r15d
	addl	%r13d, %r15d
	movl	%r8d, %edi
	subl	%eax, %edi
	addl	%r13d, %edx
	addl	%r13d, %edi
	movl	%r13d, %eax
	sarl	%eax
	addl	%eax, %edx
	addl	-120(%rsp), %ebx                # 4-byte Folded Reload
	addl	%ebp, %r12d
	addl	%r9d, %r11d
	addl	-116(%rsp), %r10d               # 4-byte Folded Reload
	subl	%r15d, %r8d
	movl	%ebx, %eax
	subl	%r12d, %eax
	addl	%ebx, %r12d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	addl	%r11d, %r10d
	leal	(%r10,%r12), %r11d
	movq	-104(%rsp), %r9                 # 8-byte Reload
	movw	%r11w, 2(%r9,%rcx,2)
	movl	%edx, %r11d
	shrl	$2, %r11d
	addl	%esi, %r11d
	movw	%r11w, 18(%r9,%rcx,2)
	movl	%eax, %r11d
	shrl	%r11d
	addl	%ebx, %r11d
	movw	%r11w, 34(%r9,%rcx,2)
	movl	%edi, %r11d
	shrl	$2, %r11d
	addl	%r8d, %r11d
	movw	%r11w, 50(%r9,%rcx,2)
	subl	%r12d, %r10d
	movw	%r10w, 66(%r9,%rcx,2)
	shrl	$2, %r8d
	subl	%r8d, %edi
	movw	%di, 82(%r9,%rcx,2)
	shrl	%ebx
	subl	%eax, %ebx
	movq	-112(%rsp), %rax                # 8-byte Reload
	movw	%bx, 98(%r9,%rcx,2)
	shrl	$2, %esi
	subl	%edx, %esi
	movw	%si, 114(%r9,%rcx,2)
	cmpq	$7, %rcx
	ja	.LBB10_17
.LBB10_16:                              # %pred.store.if483
                                        #   in Loop: Header=BB10_11 Depth=1
	movswl	-30(%rax), %r9d
	movswl	-16(%rax), %ebp
	movswl	-28(%rax), %edx
	movl	%edx, -116(%rsp)                # 4-byte Spill
	movswl	-18(%rax), %ebx
	movswl	-26(%rax), %esi
	movl	%esi, -120(%rsp)                # 4-byte Spill
	movswl	-20(%rax), %r11d
	movswl	-24(%rax), %r15d
	movswl	-22(%rax), %r10d
	movl	%r15d, %r13d
	subl	%r10d, %r13d
	movl	%r9d, %r8d
	subl	%ebp, %r8d
                                        # kill: def $edx killed $edx def $rdx
	subl	%ebx, %edx
	movl	%esi, %edi
	subl	%r11d, %edi
	movl	%edx, %eax
	sarl	%eax
	movl	%r8d, %esi
	sarl	%esi
	addl	%edx, %eax
	addl	%r8d, %esi
	addl	%edx, %esi
	subl	%edi, %edx
	addl	%edi, %esi
	movl	%edi, %r12d
	sarl	%r12d
	addl	%edi, %r12d
	addl	%r13d, %r12d
	movl	%r8d, %edi
	subl	%eax, %edi
	addl	%r13d, %edx
	addl	%r13d, %edi
	movl	%r13d, %eax
	sarl	%eax
	addl	%eax, %edx
	addl	-116(%rsp), %ebx                # 4-byte Folded Reload
	addl	-120(%rsp), %r11d               # 4-byte Folded Reload
	addl	%r9d, %ebp
	addl	%r15d, %r10d
	subl	%r12d, %r8d
	movl	%ebx, %eax
	subl	%r11d, %eax
	addl	%ebx, %r11d
	movl	%ebp, %ebx
	subl	%r10d, %ebx
	addl	%ebp, %r10d
	leal	(%r10,%r11), %ebp
	movq	-104(%rsp), %r9                 # 8-byte Reload
	movw	%bp, 4(%r9,%rcx,2)
	movl	%edx, %ebp
	shrl	$2, %ebp
	addl	%esi, %ebp
	movw	%bp, 20(%r9,%rcx,2)
	movl	%eax, %ebp
	shrl	%ebp
	addl	%ebx, %ebp
	movw	%bp, 36(%r9,%rcx,2)
	movl	%edi, %ebp
	shrl	$2, %ebp
	addl	%r8d, %ebp
	movw	%bp, 52(%r9,%rcx,2)
	subl	%r11d, %r10d
	movw	%r10w, 68(%r9,%rcx,2)
	shrl	$2, %r8d
	subl	%r8d, %edi
	movw	%di, 84(%r9,%rcx,2)
	shrl	%ebx
	subl	%eax, %ebx
	movq	-112(%rsp), %rax                # 8-byte Reload
	movw	%bx, 100(%r9,%rcx,2)
	shrl	$2, %esi
	subl	%edx, %esi
	movw	%si, 116(%r9,%rcx,2)
	cmpq	$7, %rcx
	ja	.LBB10_19
.LBB10_18:                              # %pred.store.if485
                                        #   in Loop: Header=BB10_11 Depth=1
	movswl	-14(%rax), %edx
	movl	%edx, -116(%rsp)                # 4-byte Spill
	movswl	(%rax), %r11d
	movswl	-12(%rax), %esi
	movl	%esi, -120(%rsp)                # 4-byte Spill
	movswl	-2(%rax), %ebx
	movswl	-10(%rax), %ebp
	movswl	-4(%rax), %r12d
	movswl	-8(%rax), %r15d
	movswl	-6(%rax), %r10d
	movl	%r15d, %r13d
	subl	%r10d, %r13d
	movl	%edx, %r8d
	subl	%r11d, %r8d
	movl	%esi, %edx
	subl	%ebx, %edx
	movl	%ebp, %edi
	subl	%r12d, %edi
	movl	%edx, %eax
	sarl	%eax
	movl	%r8d, %esi
	sarl	%esi
	addl	%edx, %eax
	addl	%r8d, %esi
	addl	%edx, %esi
	subl	%edi, %edx
	addl	%edi, %esi
	movl	%edi, %r9d
	sarl	%r9d
	addl	%edi, %r9d
	addl	%r13d, %r9d
	movl	%r8d, %edi
	subl	%eax, %edi
	addl	%r13d, %edx
	addl	%r13d, %edi
	movl	%r13d, %eax
	sarl	%eax
	addl	%eax, %edx
	addl	-120(%rsp), %ebx                # 4-byte Folded Reload
	addl	%ebp, %r12d
	addl	-116(%rsp), %r11d               # 4-byte Folded Reload
	addl	%r15d, %r10d
	subl	%r9d, %r8d
	movl	%ebx, %eax
	subl	%r12d, %eax
	addl	%ebx, %r12d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	addl	%r11d, %r10d
	leal	(%r10,%r12), %r9d
	movq	-104(%rsp), %r11                # 8-byte Reload
	movw	%r9w, 6(%r11,%rcx,2)
	movl	%edx, %r9d
	shrl	$2, %r9d
	addl	%esi, %r9d
	movw	%r9w, 22(%r11,%rcx,2)
	movl	%eax, %r9d
	shrl	%r9d
	addl	%ebx, %r9d
	movw	%r9w, 38(%r11,%rcx,2)
	movl	%edi, %r9d
	shrl	$2, %r9d
	addl	%r8d, %r9d
	movw	%r9w, 54(%r11,%rcx,2)
	subl	%r12d, %r10d
	movw	%r10w, 70(%r11,%rcx,2)
	shrl	$2, %r8d
	subl	%r8d, %edi
	movw	%di, 86(%r11,%rcx,2)
	shrl	%ebx
	subl	%eax, %ebx
	movq	-112(%rsp), %rax                # 8-byte Reload
	movw	%bx, 102(%r11,%rcx,2)
	shrl	$2, %esi
	subl	%edx, %esi
	movw	%si, 118(%r11,%rcx,2)
	jmp	.LBB10_19
.LBB10_20:                              # %for.cond.cleanup137
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
.Lfunc_end10:
	.size	sub8x8_dct8, .Lfunc_end10-sub8x8_dct8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add8x8_idct8
	.type	add8x8_idct8,@function
add8x8_idct8:                           # @add8x8_idct8
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
	addw	$32, (%rsi)
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	leaq	118(%rsi), %r10
	xorl	%ecx, %ecx
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	jmp	.LBB11_1
	.p2align	4, 0x90
.LBB11_9:                               # %pred.store.continue685
                                        #   in Loop: Header=BB11_1 Depth=1
	addq	$4, %rcx
	cmpq	$8, %rcx
	je	.LBB11_10
.LBB11_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$7, %rcx
	jbe	.LBB11_2
# %bb.3:                                # %pred.store.continue
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$7, %rcx
	jbe	.LBB11_4
.LBB11_5:                               # %pred.store.continue681
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$7, %rcx
	jbe	.LBB11_6
.LBB11_7:                               # %pred.store.continue683
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$7, %rcx
	ja	.LBB11_9
	jmp	.LBB11_8
	.p2align	4, 0x90
.LBB11_2:                               # %pred.store.if
                                        #   in Loop: Header=BB11_1 Depth=1
	movzwl	-118(%r10,%rcx,2), %ebp
	movzwl	-54(%r10,%rcx,2), %esi
	movswl	-86(%r10,%rcx,2), %r15d
	movswl	-22(%r10,%rcx,2), %edx
	movswl	-70(%r10,%rcx,2), %r12d
	movswl	-38(%r10,%rcx,2), %r11d
	movswl	-6(%r10,%rcx,2), %r8d
	movswl	-102(%r10,%rcx,2), %r14d
	movl	%r11d, %ebx
	sarl	%ebx
	addl	%r8d, %ebx
	addl	%r11d, %ebx
	leal	(%r11,%r12), %r9d
	addl	%r14d, %r9d
	subl	%r14d, %ebx
	movl	%r12d, %r13d
	sarl	%r13d
	movl	%r8d, %eax
	leal	(%r12,%r8), %edi
	addl	%r12d, %r13d
	subl	%r13d, %r8d
	addl	%r14d, %r8d
	sarl	%r14d
	addl	%r14d, %r9d
	sarl	%eax
	addl	%edi, %eax
	movl	%r15d, %r14d
	sarl	%r14d
	subl	%eax, %r11d
	movl	%r9d, %r13d
	sarl	$2, %r13d
	movl	%ebx, %r12d
	sarl	$2, %r12d
	movl	%ebp, %eax
	subl	%esi, %eax
	subl	%edx, %r14d
	sarl	%edx
	addl	%ebp, %esi
	addl	%r15d, %edx
	movl	%esi, %r15d
	subl	%edx, %r15d
	addl	%r11d, %r13d
	sarl	$2, %r11d
	movl	%eax, %ebp
	subl	%r14d, %ebp
	addl	%r8d, %r12d
	sarl	$2, %r8d
	addl	%eax, %r14d
	subl	%ebx, %r8d
	addl	%esi, %edx
	subl	%r11d, %r9d
	leal	(%r9,%rdx), %eax
	movw	%ax, -118(%r10,%rcx,2)
	leal	(%r8,%r14), %eax
	movw	%ax, -102(%r10,%rcx,2)
	leal	(%r12,%rbp), %eax
	movw	%ax, -86(%r10,%rcx,2)
	leal	(%r15,%r13), %eax
	movw	%ax, -70(%r10,%rcx,2)
	subl	%r13d, %r15d
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	movw	%r15w, -54(%r10,%rcx,2)
	subl	%r12d, %ebp
	movw	%bp, -38(%r10,%rcx,2)
	subl	%r8d, %r14d
	movw	%r14w, -22(%r10,%rcx,2)
	subl	%r9d, %edx
	movw	%dx, -6(%r10,%rcx,2)
	cmpq	$7, %rcx
	ja	.LBB11_5
.LBB11_4:                               # %pred.store.if680
                                        #   in Loop: Header=BB11_1 Depth=1
	movzwl	-116(%r10,%rcx,2), %ebp
	movzwl	-52(%r10,%rcx,2), %eax
	movswl	-84(%r10,%rcx,2), %r15d
	movswl	-20(%r10,%rcx,2), %edx
	movswl	-68(%r10,%rcx,2), %r12d
	movswl	-36(%r10,%rcx,2), %r11d
	movswl	-4(%r10,%rcx,2), %r8d
	movswl	-100(%r10,%rcx,2), %r14d
	movl	%r11d, %ebx
	sarl	%ebx
	addl	%r8d, %ebx
	addl	%r11d, %ebx
	leal	(%r11,%r12), %r9d
	addl	%r14d, %r9d
	subl	%r14d, %ebx
	movl	%r12d, %esi
	sarl	%esi
	movl	%r8d, %edi
	leal	(%r12,%r8), %r13d
	addl	%r12d, %esi
	subl	%esi, %r8d
	addl	%r14d, %r8d
	sarl	%r14d
	addl	%r14d, %r9d
	sarl	%edi
	addl	%r13d, %edi
	movl	%r15d, %r14d
	sarl	%r14d
	subl	%edi, %r11d
	movl	%r9d, %r13d
	sarl	$2, %r13d
	movl	%ebx, %r12d
	sarl	$2, %r12d
	movl	%ebp, %esi
	subl	%eax, %esi
	subl	%edx, %r14d
	sarl	%edx
	addl	%ebp, %eax
	addl	%r15d, %edx
	movl	%eax, %r15d
	subl	%edx, %r15d
	addl	%r11d, %r13d
	sarl	$2, %r11d
	movl	%esi, %ebp
	subl	%r14d, %ebp
	addl	%r8d, %r12d
	sarl	$2, %r8d
	addl	%esi, %r14d
	subl	%ebx, %r8d
	addl	%eax, %edx
	subl	%r11d, %r9d
	leal	(%r9,%rdx), %eax
	movw	%ax, -116(%r10,%rcx,2)
	leal	(%r8,%r14), %eax
	movw	%ax, -100(%r10,%rcx,2)
	leal	(%r12,%rbp), %eax
	movw	%ax, -84(%r10,%rcx,2)
	leal	(%r15,%r13), %eax
	movw	%ax, -68(%r10,%rcx,2)
	subl	%r13d, %r15d
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	movw	%r15w, -52(%r10,%rcx,2)
	subl	%r12d, %ebp
	movw	%bp, -36(%r10,%rcx,2)
	subl	%r8d, %r14d
	movw	%r14w, -20(%r10,%rcx,2)
	subl	%r9d, %edx
	movw	%dx, -4(%r10,%rcx,2)
	cmpq	$7, %rcx
	ja	.LBB11_7
.LBB11_6:                               # %pred.store.if682
                                        #   in Loop: Header=BB11_1 Depth=1
	movzwl	-114(%r10,%rcx,2), %ebp
	movzwl	-50(%r10,%rcx,2), %eax
	movswl	-82(%r10,%rcx,2), %r15d
	movswl	-18(%r10,%rcx,2), %edx
	movswl	-66(%r10,%rcx,2), %r12d
	movswl	-34(%r10,%rcx,2), %r11d
	movswl	-2(%r10,%rcx,2), %r8d
	movswl	-98(%r10,%rcx,2), %r14d
	movl	%r11d, %ebx
	sarl	%ebx
	addl	%r8d, %ebx
	addl	%r11d, %ebx
	leal	(%r11,%r12), %r9d
	addl	%r14d, %r9d
	subl	%r14d, %ebx
	movl	%r12d, %esi
	sarl	%esi
	movl	%r8d, %edi
	leal	(%r12,%r8), %r13d
	addl	%r12d, %esi
	subl	%esi, %r8d
	addl	%r14d, %r8d
	sarl	%r14d
	addl	%r14d, %r9d
	sarl	%edi
	addl	%r13d, %edi
	movl	%r15d, %r14d
	sarl	%r14d
	subl	%edi, %r11d
	movl	%r9d, %r13d
	sarl	$2, %r13d
	movl	%ebx, %r12d
	sarl	$2, %r12d
	movl	%ebp, %esi
	subl	%eax, %esi
	subl	%edx, %r14d
	sarl	%edx
	addl	%ebp, %eax
	addl	%r15d, %edx
	movl	%eax, %r15d
	subl	%edx, %r15d
	addl	%r11d, %r13d
	sarl	$2, %r11d
	movl	%esi, %ebp
	subl	%r14d, %ebp
	addl	%r8d, %r12d
	sarl	$2, %r8d
	addl	%esi, %r14d
	subl	%ebx, %r8d
	addl	%eax, %edx
	subl	%r11d, %r9d
	leal	(%r9,%rdx), %eax
	movw	%ax, -114(%r10,%rcx,2)
	leal	(%r8,%r14), %eax
	movw	%ax, -98(%r10,%rcx,2)
	leal	(%r12,%rbp), %eax
	movw	%ax, -82(%r10,%rcx,2)
	leal	(%r15,%r13), %eax
	movw	%ax, -66(%r10,%rcx,2)
	subl	%r13d, %r15d
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	movw	%r15w, -50(%r10,%rcx,2)
	subl	%r12d, %ebp
	movw	%bp, -34(%r10,%rcx,2)
	subl	%r8d, %r14d
	movw	%r14w, -18(%r10,%rcx,2)
	subl	%r9d, %edx
	movw	%dx, -2(%r10,%rcx,2)
	cmpq	$7, %rcx
	ja	.LBB11_9
.LBB11_8:                               # %pred.store.if684
                                        #   in Loop: Header=BB11_1 Depth=1
	movzwl	-112(%r10,%rcx,2), %ebp
	movzwl	-48(%r10,%rcx,2), %eax
	movswl	-80(%r10,%rcx,2), %r15d
	movswl	-16(%r10,%rcx,2), %edx
	movswl	-64(%r10,%rcx,2), %r12d
	movswl	-32(%r10,%rcx,2), %r11d
	movswl	(%r10,%rcx,2), %r8d
	movswl	-96(%r10,%rcx,2), %r14d
	movl	%r11d, %ebx
	sarl	%ebx
	addl	%r8d, %ebx
	addl	%r11d, %ebx
	leal	(%r11,%r12), %r9d
	addl	%r14d, %r9d
	subl	%r14d, %ebx
	movl	%r12d, %esi
	sarl	%esi
	movl	%r8d, %edi
	leal	(%r12,%r8), %r13d
	addl	%r12d, %esi
	subl	%esi, %r8d
	addl	%r14d, %r8d
	sarl	%r14d
	addl	%r14d, %r9d
	sarl	%edi
	addl	%r13d, %edi
	movl	%r15d, %r14d
	sarl	%r14d
	subl	%edi, %r11d
	movl	%r9d, %r13d
	sarl	$2, %r13d
	movl	%ebx, %r12d
	sarl	$2, %r12d
	movl	%ebp, %esi
	subl	%eax, %esi
	subl	%edx, %r14d
	sarl	%edx
	addl	%ebp, %eax
	addl	%r15d, %edx
	movl	%eax, %r15d
	subl	%edx, %r15d
	addl	%r11d, %r13d
	sarl	$2, %r11d
	movl	%esi, %ebp
	subl	%r14d, %ebp
	addl	%r8d, %r12d
	sarl	$2, %r8d
	addl	%esi, %r14d
	subl	%ebx, %r8d
	addl	%eax, %edx
	subl	%r11d, %r9d
	leal	(%r9,%rdx), %eax
	movw	%ax, -112(%r10,%rcx,2)
	leal	(%r8,%r14), %eax
	movw	%ax, -96(%r10,%rcx,2)
	leal	(%r12,%rbp), %eax
	movw	%ax, -80(%r10,%rcx,2)
	leal	(%r15,%r13), %eax
	movw	%ax, -64(%r10,%rcx,2)
	subl	%r13d, %r15d
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	movw	%r15w, -48(%r10,%rcx,2)
	subl	%r12d, %ebp
	movw	%bp, -32(%r10,%rcx,2)
	subl	%r8d, %r14d
	movw	%r14w, -16(%r10,%rcx,2)
	subl	%r9d, %edx
	movw	%dx, (%r10,%rcx,2)
	jmp	.LBB11_9
.LBB11_10:                              # %for.body177.preheader
	movq	-8(%rsp), %r12                  # 8-byte Reload
	addq	$14, %r12
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB11_11:                              # %for.body177
                                        # =>This Inner Loop Header: Depth=1
	movswl	-14(%r12), %edx
	movswl	-6(%r12), %ecx
	leal	(%rcx,%rdx), %r10d
	subl	%ecx, %edx
	movswl	-10(%r12), %ecx
	movl	%ecx, %esi
	sarl	%esi
	movswl	-2(%r12), %r9d
	subl	%r9d, %esi
	sarl	%r9d
	addl	%ecx, %r9d
	leal	(%r9,%r10), %ecx
	leal	(%rsi,%rdx), %r8d
	subl	%esi, %edx
	subl	%r9d, %r10d
	movswl	-8(%r12), %esi
	movswl	-4(%r12), %ebx
	movswl	(%r12), %r15d
	movl	%r15d, %r11d
	sarl	%r11d
	addl	%esi, %r11d
	addl	%r15d, %r11d
	movl	%ebx, %ebp
	subl	%r11d, %ebp
	movswl	-12(%r12), %r9d
	movl	%esi, %r14d
	sarl	%r14d
	addl	%esi, %r14d
	movl	%r15d, %r11d
	subl	%r14d, %r11d
	addl	%r9d, %r11d
	movl	%ebx, %r14d
	sarl	%r14d
	addl	%ebx, %r15d
	addl	%r14d, %r15d
	subl	%r9d, %r15d
	addl	%esi, %ebx
	addl	%r9d, %ebx
	sarl	%r9d
	addl	%ebx, %r9d
	movl	%r9d, %r14d
	sarl	$2, %r14d
	addl	%ebp, %r14d
	movl	%r15d, %ebx
	sarl	$2, %ebx
	addl	%r11d, %ebx
	sarl	$2, %r11d
	subl	%r15d, %r11d
	sarl	$2, %ebp
	subl	%ebp, %r9d
	movzbl	(%rdi,%rax), %esi
	leal	(%r9,%rcx), %ebp
	sarl	$6, %ebp
	addl	%esi, %ebp
	testl	%ebp, %ebp
	setg	%sil
	negb	%sil
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%sil, %esi
	cmovbl	%ebp, %esi
	movb	%sil, (%rdi,%rax)
	movzbl	32(%rdi,%rax), %esi
	leal	(%r11,%r8), %ebp
	sarl	$6, %ebp
	addl	%esi, %ebp
	testl	%ebp, %ebp
	setg	%sil
	negb	%sil
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%sil, %esi
	cmovbl	%ebp, %esi
	movb	%sil, 32(%rdi,%rax)
	movzbl	64(%rdi,%rax), %esi
	leal	(%rbx,%rdx), %ebp
	sarl	$6, %ebp
	addl	%esi, %ebp
	testl	%ebp, %ebp
	setg	%sil
	negb	%sil
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%sil, %esi
	cmovbl	%ebp, %esi
	movb	%sil, 64(%rdi,%rax)
	movzbl	96(%rdi,%rax), %esi
	leal	(%r14,%r10), %ebp
	sarl	$6, %ebp
	addl	%esi, %ebp
	testl	%ebp, %ebp
	setg	%sil
	negb	%sil
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%sil, %esi
	cmovbl	%ebp, %esi
	movb	%sil, 96(%rdi,%rax)
	movzbl	128(%rdi,%rax), %esi
	subl	%r14d, %r10d
	sarl	$6, %r10d
	addl	%esi, %r10d
	testl	%r10d, %r10d
	setg	%sil
	negb	%sil
	cmpl	$256, %r10d                     # imm = 0x100
	movzbl	%sil, %esi
	cmovbl	%r10d, %esi
	movb	%sil, 128(%rdi,%rax)
	movzbl	160(%rdi,%rax), %esi
	subl	%ebx, %edx
	sarl	$6, %edx
	addl	%esi, %edx
	testl	%edx, %edx
	setg	%sil
	negb	%sil
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%sil, %esi
	cmovbl	%edx, %esi
	movb	%sil, 160(%rdi,%rax)
	movzbl	192(%rdi,%rax), %edx
	subl	%r11d, %r8d
	sarl	$6, %r8d
	addl	%edx, %r8d
	testl	%r8d, %r8d
	setg	%dl
	negb	%dl
	cmpl	$256, %r8d                      # imm = 0x100
	movzbl	%dl, %edx
	cmovbl	%r8d, %edx
	movb	%dl, 192(%rdi,%rax)
	movzbl	224(%rdi,%rax), %edx
	subl	%r9d, %ecx
	sarl	$6, %ecx
	addl	%edx, %ecx
	testl	%ecx, %ecx
	setg	%dl
	negb	%dl
	cmpl	$256, %ecx                      # imm = 0x100
	movzbl	%dl, %edx
	cmovbl	%ecx, %edx
	movb	%dl, 224(%rdi,%rax)
	incq	%rax
	addq	$16, %r12
	cmpq	$8, %rax
	jne	.LBB11_11
# %bb.12:                               # %for.cond.cleanup176
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
.Lfunc_end11:
	.size	add8x8_idct8, .Lfunc_end11-add8x8_idct8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sub16x16_dct8
	.type	sub16x16_dct8,@function
sub16x16_dct8:                          # @sub16x16_dct8
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
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	sub8x8_dct8
	leaq	128(%r15), %rdi
	leaq	8(%r14), %rsi
	leaq	8(%rbx), %rdx
	callq	sub8x8_dct8
	leaq	256(%r15), %rdi
	leaq	128(%r14), %rsi
	leaq	256(%rbx), %rdx
	callq	sub8x8_dct8
	addq	$384, %r15                      # imm = 0x180
	addq	$136, %r14
	addq	$264, %rbx                      # imm = 0x108
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	sub8x8_dct8                     # TAILCALL
.Lfunc_end12:
	.size	sub16x16_dct8, .Lfunc_end12-sub16x16_dct8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add16x16_idct8
	.type	add16x16_idct8,@function
add16x16_idct8:                         # @add16x16_idct8
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
	callq	add8x8_idct8
	leaq	8(%r14), %rdi
	leaq	128(%rbx), %rsi
	callq	add8x8_idct8
	leaq	256(%r14), %rdi
	leaq	256(%rbx), %rsi
	callq	add8x8_idct8
	addq	$264, %r14                      # imm = 0x108
	addq	$384, %rbx                      # imm = 0x180
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	add8x8_idct8                    # TAILCALL
.Lfunc_end13:
	.size	add16x16_idct8, .Lfunc_end13-add16x16_idct8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function dct4x4dc
	.type	dct4x4dc,@function
dct4x4dc:                               # @dct4x4dc
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
	movzwl	(%rdi), %eax
	movzwl	2(%rdi), %ecx
	leal	(%rcx,%rax), %r10d
	subl	%ecx, %eax
	movzwl	4(%rdi), %r15d
	movzwl	6(%rdi), %ecx
	leal	(%rcx,%r15), %edx
	subl	%ecx, %r15d
	leal	(%rdx,%r10), %ecx
	movl	%ecx, -16(%rsp)                 # 4-byte Spill
	subl	%edx, %r10d
	movl	%eax, %ecx
	subl	%r15d, %ecx
	movl	%ecx, -4(%rsp)                  # 4-byte Spill
	addl	%eax, %r15d
	movzwl	8(%rdi), %eax
	movzwl	10(%rdi), %ecx
	leal	(%rcx,%rax), %ebx
	subl	%ecx, %eax
	movzwl	12(%rdi), %r9d
	movzwl	14(%rdi), %edx
	leal	(%rdx,%r9), %esi
	subl	%edx, %r9d
	leal	(%rsi,%rbx), %r13d
	subl	%esi, %ebx
	movl	%eax, %ecx
	subl	%r9d, %ecx
	movl	%ecx, -8(%rsp)                  # 4-byte Spill
	addl	%eax, %r9d
	movzwl	16(%rdi), %esi
	movzwl	18(%rdi), %eax
	leal	(%rax,%rsi), %r14d
	subl	%eax, %esi
	movzwl	20(%rdi), %edx
	movzwl	22(%rdi), %eax
	leal	(%rax,%rdx), %r11d
	subl	%eax, %edx
	leal	(%r11,%r14), %r8d
	subl	%r11d, %r14d
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, -12(%rsp)                 # 4-byte Spill
	addl	%esi, %edx
	movzwl	24(%rdi), %eax
	movzwl	26(%rdi), %esi
	leal	(%rsi,%rax), %r12d
	subl	%esi, %eax
	movzwl	28(%rdi), %esi
	movzwl	30(%rdi), %ebp
	leal	(%rsi,%rbp), %ecx
	subl	%ebp, %esi
	leal	(%rcx,%r12), %ebp
	subl	%ecx, %r12d
	movl	%eax, %r11d
	subl	%esi, %r11d
	addl	%eax, %esi
	movswl	%r8w, %ecx
	movswl	%bp, %r8d
	leal	(%r8,%rcx), %ebp
	subl	%r8d, %ecx
	movswl	-16(%rsp), %r8d                 # 2-byte Folded Reload
	movswl	%r13w, %r13d
	leal	(%r8,%r13), %eax
	incl	%eax
                                        # kill: def $r8d killed $r8d killed $r8 def $r8
	subl	%r13d, %r8d
	leal	(%rax,%rbp), %r13d
	shrl	%r13d
	movw	%r13w, (%rdi)
	subl	%ebp, %eax
	shrl	%eax
	movw	%ax, 2(%rdi)
	leal	(%r8,%rcx), %eax
	incl	%eax
                                        # kill: def $r8d killed $r8d killed $r8
	subl	%ecx, %r8d
	incl	%r8d
	shrl	%r8d
	movw	%r8w, 4(%rdi)
	shrl	%eax
	movw	%ax, 6(%rdi)
	movswl	%r10w, %ecx
	movswl	%bx, %r8d
	movswl	%r14w, %eax
	movswl	%r12w, %r10d
	leal	(%r10,%rax), %ebx
	subl	%r10d, %eax
	leal	(%r8,%rcx), %r10d
	incl	%r10d
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%r8d, %ecx
	leal	(%r10,%rbx), %r8d
	shrl	%r8d
	movw	%r8w, 8(%rdi)
	subl	%ebx, %r10d
	shrl	%r10d
	movw	%r10w, 10(%rdi)
	leal	(%rcx,%rax), %r8d
	incl	%r8d
                                        # kill: def $ecx killed $ecx killed $rcx
	subl	%eax, %ecx
	incl	%ecx
	shrl	%ecx
	movw	%cx, 12(%rdi)
	shrl	%r8d
	movw	%r8w, 14(%rdi)
	movswl	-4(%rsp), %ecx                  # 2-byte Folded Reload
	movswl	-8(%rsp), %r8d                  # 2-byte Folded Reload
	movswl	-12(%rsp), %eax                 # 2-byte Folded Reload
	movswl	%r11w, %r10d
	leal	(%r10,%rax), %r11d
	subl	%r10d, %eax
	leal	(%r8,%rcx), %r10d
	incl	%r10d
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%r8d, %ecx
	leal	(%r10,%r11), %r8d
	shrl	%r8d
	movw	%r8w, 16(%rdi)
	subl	%r11d, %r10d
	shrl	%r10d
	movw	%r10w, 18(%rdi)
	leal	(%rcx,%rax), %r8d
	incl	%r8d
                                        # kill: def $ecx killed $ecx killed $rcx
	subl	%eax, %ecx
	incl	%ecx
	shrl	%ecx
	movw	%cx, 20(%rdi)
	shrl	%r8d
	movw	%r8w, 22(%rdi)
	movswl	%r15w, %ecx
	movswl	%r9w, %r8d
	movswl	%dx, %eax
	movswl	%si, %edx
	leal	(%rdx,%rax), %esi
	subl	%edx, %eax
	leal	(%r8,%rcx), %edx
	incl	%edx
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%r8d, %ecx
	leal	(%rdx,%rsi), %r8d
	shrl	%r8d
	movw	%r8w, 24(%rdi)
	subl	%esi, %edx
	shrl	%edx
	movw	%dx, 26(%rdi)
	leal	(%rcx,%rax), %edx
	incl	%edx
                                        # kill: def $ecx killed $ecx killed $rcx
	subl	%eax, %ecx
	incl	%ecx
	shrl	%ecx
	movw	%cx, 28(%rdi)
	shrl	%edx
	movw	%dx, 30(%rdi)
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
.Lfunc_end14:
	.size	dct4x4dc, .Lfunc_end14-dct4x4dc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function idct4x4dc
	.type	idct4x4dc,@function
idct4x4dc:                              # @idct4x4dc
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
	movzwl	(%rdi), %eax
	movzwl	2(%rdi), %ecx
	leal	(%rcx,%rax), %r15d
	subl	%ecx, %eax
	movzwl	4(%rdi), %r10d
	movzwl	6(%rdi), %ecx
	leal	(%rcx,%r10), %edx
	subl	%ecx, %r10d
	leal	(%rdx,%r15), %ecx
	movl	%ecx, -16(%rsp)                 # 4-byte Spill
	subl	%edx, %r15d
	movl	%eax, %ecx
	subl	%r10d, %ecx
	movl	%ecx, -4(%rsp)                  # 4-byte Spill
	addl	%eax, %r10d
	movzwl	8(%rdi), %eax
	movzwl	10(%rdi), %ecx
	leal	(%rcx,%rax), %ebx
	subl	%ecx, %eax
	movzwl	12(%rdi), %r9d
	movzwl	14(%rdi), %edx
	leal	(%rdx,%r9), %r8d
	subl	%edx, %r9d
	leal	(%r8,%rbx), %ecx
	movl	%ecx, -20(%rsp)                 # 4-byte Spill
	subl	%r8d, %ebx
	movl	%eax, %ecx
	subl	%r9d, %ecx
	movl	%ecx, -8(%rsp)                  # 4-byte Spill
	addl	%eax, %r9d
	movzwl	16(%rdi), %eax
	movzwl	18(%rdi), %edx
	leal	(%rdx,%rax), %r14d
	subl	%edx, %eax
	movzwl	20(%rdi), %esi
	movzwl	22(%rdi), %r8d
	leal	(%r8,%rsi), %r11d
	subl	%r8d, %esi
	leal	(%r11,%r14), %r13d
	subl	%r11d, %r14d
	movl	%eax, %ecx
	subl	%esi, %ecx
	movl	%ecx, -12(%rsp)                 # 4-byte Spill
	addl	%eax, %esi
	movzwl	24(%rdi), %eax
	movzwl	26(%rdi), %r8d
	leal	(%r8,%rax), %r12d
	subl	%r8d, %eax
	movzwl	28(%rdi), %r8d
	movzwl	30(%rdi), %ebp
	leal	(%r8,%rbp), %ecx
	subl	%ebp, %r8d
	leal	(%rcx,%r12), %ebp
	subl	%ecx, %r12d
	movl	%eax, %r11d
	subl	%r8d, %r11d
	addl	%eax, %r8d
	movzwl	-16(%rsp), %ecx                 # 2-byte Folded Reload
	movzwl	-20(%rsp), %edx                 # 2-byte Folded Reload
	leal	(%rdx,%rcx), %eax
	subl	%edx, %ecx
	movzwl	%r13w, %edx
	movzwl	%bp, %r13d
	leal	(%rdx,%r13), %ebp
	subl	%r13d, %edx
	leal	(%rax,%rbp), %r13d
	movw	%r13w, (%rdi)
	subl	%ebp, %eax
	movw	%ax, 2(%rdi)
	movl	%ecx, %eax
	subl	%edx, %eax
	movw	%ax, 4(%rdi)
	addl	%ecx, %edx
	movw	%dx, 6(%rdi)
	movzwl	%r15w, %eax
	movzwl	%bx, %ecx
	leal	(%rcx,%rax), %edx
	subl	%ecx, %eax
	movzwl	%r14w, %ecx
	movzwl	%r12w, %ebx
	leal	(%rbx,%rcx), %r14d
	subl	%ebx, %ecx
	leal	(%r14,%rdx), %ebx
	movw	%bx, 8(%rdi)
	subl	%r14d, %edx
	movw	%dx, 10(%rdi)
	movl	%eax, %edx
	subl	%ecx, %edx
	movw	%dx, 12(%rdi)
	addl	%eax, %ecx
	movw	%cx, 14(%rdi)
	movzwl	-4(%rsp), %eax                  # 2-byte Folded Reload
	movzwl	-8(%rsp), %ecx                  # 2-byte Folded Reload
	leal	(%rcx,%rax), %edx
	subl	%ecx, %eax
	movzwl	-12(%rsp), %ecx                 # 2-byte Folded Reload
	movzwl	%r11w, %r11d
	leal	(%r11,%rcx), %ebx
	subl	%r11d, %ecx
	leal	(%rbx,%rdx), %r11d
	movw	%r11w, 16(%rdi)
	subl	%ebx, %edx
	movw	%dx, 18(%rdi)
	movl	%eax, %edx
	subl	%ecx, %edx
	movw	%dx, 20(%rdi)
	addl	%eax, %ecx
	movw	%cx, 22(%rdi)
	movzwl	%r10w, %eax
	movzwl	%r9w, %ecx
	leal	(%rcx,%rax), %edx
	subl	%ecx, %eax
	movzwl	%si, %ecx
	movzwl	%r8w, %esi
	leal	(%rsi,%rcx), %r8d
	subl	%esi, %ecx
	leal	(%r8,%rdx), %esi
	movw	%si, 24(%rdi)
	subl	%r8d, %edx
	movw	%dx, 26(%rdi)
	movl	%eax, %edx
	subl	%ecx, %edx
	movw	%dx, 28(%rdi)
	addl	%eax, %ecx
	movw	%cx, 30(%rdi)
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
.Lfunc_end15:
	.size	idct4x4dc, .Lfunc_end15-idct4x4dc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_dct_init_weights
.LCPI16_0:
	.long	800                             # 0x320
	.long	320                             # 0x140
	.long	320                             # 0x140
	.long	800                             # 0x320
.LCPI16_1:
	.long	128                             # 0x80
	.long	800                             # 0x320
	.long	320                             # 0x140
	.long	320                             # 0x140
.LCPI16_2:
	.long	320                             # 0x140
	.long	320                             # 0x140
	.long	128                             # 0x80
	.long	800                             # 0x320
.LCPI16_3:
	.long	128                             # 0x80
	.long	320                             # 0x140
	.long	320                             # 0x140
	.long	128                             # 0x80
.LCPI16_4:
	.long	320                             # 0x140
	.long	128                             # 0x80
	.long	320                             # 0x140
	.long	128                             # 0x80
.LCPI16_5:
	.long	800                             # 0x320
	.long	320                             # 0x140
	.long	800                             # 0x320
	.long	320                             # 0x140
	.text
	.globl	x264_dct_init_weights
	.p2align	4, 0x90
	.type	x264_dct_init_weights,@function
x264_dct_init_weights:                  # @x264_dct_init_weights
	.cfi_startproc
# %bb.0:                                # %entry
	movaps	.LCPI16_0(%rip), %xmm0          # xmm0 = [800,320,320,800]
	movaps	%xmm0, x264_dct4_weight2_zigzag(%rip)
	movaps	.LCPI16_1(%rip), %xmm1          # xmm1 = [128,800,320,320]
	movaps	%xmm1, x264_dct4_weight2_zigzag+16(%rip)
	movaps	.LCPI16_2(%rip), %xmm1          # xmm1 = [320,320,128,800]
	movaps	%xmm1, x264_dct4_weight2_zigzag+32(%rip)
	movaps	.LCPI16_3(%rip), %xmm1          # xmm1 = [128,320,320,128]
	movaps	%xmm1, x264_dct4_weight2_zigzag+48(%rip)
	movq	$-64, %rax
	.p2align	4, 0x90
.LBB16_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	x264_zigzag_scan8+64(%rax), %ecx
	movzbl	x264_zigzag_scan8+65(%rax), %edx
	movzbl	x264_zigzag_scan8+66(%rax), %esi
	movzbl	x264_zigzag_scan8+67(%rax), %edi
	movzwl	x264_dct8_weight2_tab(%rcx,%rcx), %ecx
	movzwl	x264_dct8_weight2_tab(%rdx,%rdx), %edx
	movzwl	x264_dct8_weight2_tab(%rsi,%rsi), %esi
	movzwl	x264_dct8_weight2_tab(%rdi,%rdi), %edi
	movl	%ecx, x264_dct8_weight2_zigzag+256(,%rax,4)
	movl	%edx, x264_dct8_weight2_zigzag+260(,%rax,4)
	movl	%esi, x264_dct8_weight2_zigzag+264(,%rax,4)
	movl	%edi, x264_dct8_weight2_zigzag+268(,%rax,4)
	addq	$4, %rax
	jne	.LBB16_1
# %bb.2:                                # %for.cond.cleanup17
	movaps	%xmm0, x264_dct4_weight2_zigzag+64(%rip)
	movaps	.LCPI16_4(%rip), %xmm0          # xmm0 = [320,128,320,128]
	movaps	%xmm0, x264_dct4_weight2_zigzag+80(%rip)
	movaps	.LCPI16_5(%rip), %xmm1          # xmm1 = [800,320,800,320]
	movaps	%xmm1, x264_dct4_weight2_zigzag+96(%rip)
	movaps	%xmm0, x264_dct4_weight2_zigzag+112(%rip)
	movq	$-64, %rax
	.p2align	4, 0x90
.LBB16_3:                               # %vector.body64
                                        # =>This Inner Loop Header: Depth=1
	movzbl	x264_zigzag_scan8+128(%rax), %ecx
	movzbl	x264_zigzag_scan8+129(%rax), %edx
	movzbl	x264_zigzag_scan8+130(%rax), %esi
	movzbl	x264_zigzag_scan8+131(%rax), %edi
	movzwl	x264_dct8_weight2_tab(%rcx,%rcx), %ecx
	movzwl	x264_dct8_weight2_tab(%rdx,%rdx), %edx
	movzwl	x264_dct8_weight2_tab(%rsi,%rsi), %esi
	movzwl	x264_dct8_weight2_tab(%rdi,%rdi), %edi
	movl	%ecx, x264_dct8_weight2_zigzag+512(,%rax,4)
	movl	%edx, x264_dct8_weight2_zigzag+516(,%rax,4)
	movl	%esi, x264_dct8_weight2_zigzag+520(,%rax,4)
	movl	%edi, x264_dct8_weight2_zigzag+524(,%rax,4)
	addq	$4, %rax
	jne	.LBB16_3
# %bb.4:                                # %for.cond.cleanup17.1
	retq
.Lfunc_end16:
	.size	x264_dct_init_weights, .Lfunc_end16-x264_dct_init_weights
	.cfi_endproc
                                        # -- End function
	.globl	x264_zigzag_init                # -- Begin function x264_zigzag_init
	.p2align	4, 0x90
	.type	x264_zigzag_init,@function
x264_zigzag_init:                       # @x264_zigzag_init
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edx, %edx
	je	.LBB17_2
# %bb.1:
	movl	$zigzag_sub_4x4ac_field, %eax
	movl	$zigzag_sub_4x4_field, %ecx
	movl	$zigzag_sub_8x8_field, %edx
	movl	$zigzag_scan_4x4_field, %edi
	movl	$zigzag_scan_8x8_field, %r8d
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movl	$zigzag_sub_4x4ac_frame, %eax
	movl	$zigzag_sub_4x4_frame, %ecx
	movl	$zigzag_sub_8x8_frame, %edx
	movl	$zigzag_scan_4x4_frame, %edi
	movl	$zigzag_scan_8x8_frame, %r8d
.LBB17_3:                               # %if.end
	movq	%r8, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%rcx, 24(%rsi)
	movq	%rax, 32(%rsi)
	movq	$zigzag_interleave_8x8_cavlc, 40(%rsi)
	retq
.Lfunc_end17:
	.size	x264_zigzag_init, .Lfunc_end17-x264_zigzag_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_scan_8x8_field
	.type	zigzag_scan_8x8_field,@function
zigzag_scan_8x8_field:                  # @zigzag_scan_8x8_field
	.cfi_startproc
# %bb.0:                                # %entry
	movzwl	(%rsi), %eax
	movw	%ax, (%rdi)
	movzwl	2(%rsi), %eax
	movw	%ax, 2(%rdi)
	movzwl	4(%rsi), %eax
	movw	%ax, 4(%rdi)
	movzwl	16(%rsi), %eax
	movw	%ax, 6(%rdi)
	movzwl	18(%rsi), %eax
	movw	%ax, 8(%rdi)
	movzwl	6(%rsi), %eax
	movw	%ax, 10(%rdi)
	movzwl	8(%rsi), %eax
	movw	%ax, 12(%rdi)
	movzwl	20(%rsi), %eax
	movw	%ax, 14(%rdi)
	movzwl	32(%rsi), %eax
	movw	%ax, 16(%rdi)
	movzwl	22(%rsi), %eax
	movw	%ax, 18(%rdi)
	movzwl	10(%rsi), %eax
	movw	%ax, 20(%rdi)
	movzwl	12(%rsi), %eax
	movw	%ax, 22(%rdi)
	movzwl	14(%rsi), %eax
	movw	%ax, 24(%rdi)
	movzwl	24(%rsi), %eax
	movw	%ax, 26(%rdi)
	movzwl	34(%rsi), %eax
	movw	%ax, 28(%rdi)
	movzwl	48(%rsi), %eax
	movw	%ax, 30(%rdi)
	movzwl	36(%rsi), %eax
	movw	%ax, 32(%rdi)
	movzwl	26(%rsi), %eax
	movw	%ax, 34(%rdi)
	movzwl	28(%rsi), %eax
	movw	%ax, 36(%rdi)
	movzwl	30(%rsi), %eax
	movw	%ax, 38(%rdi)
	movzwl	38(%rsi), %eax
	movw	%ax, 40(%rdi)
	movzwl	50(%rsi), %eax
	movw	%ax, 42(%rdi)
	movzwl	64(%rsi), %eax
	movw	%ax, 44(%rdi)
	movzwl	52(%rsi), %eax
	movw	%ax, 46(%rdi)
	movzwl	40(%rsi), %eax
	movw	%ax, 48(%rdi)
	movzwl	42(%rsi), %eax
	movw	%ax, 50(%rdi)
	movzwl	44(%rsi), %eax
	movw	%ax, 52(%rdi)
	movzwl	46(%rsi), %eax
	movw	%ax, 54(%rdi)
	movzwl	54(%rsi), %eax
	movw	%ax, 56(%rdi)
	movzwl	66(%rsi), %eax
	movw	%ax, 58(%rdi)
	movzwl	80(%rsi), %eax
	movw	%ax, 60(%rdi)
	movzwl	68(%rsi), %eax
	movw	%ax, 62(%rdi)
	movzwl	56(%rsi), %eax
	movw	%ax, 64(%rdi)
	movzwl	58(%rsi), %eax
	movw	%ax, 66(%rdi)
	movzwl	60(%rsi), %eax
	movw	%ax, 68(%rdi)
	movzwl	62(%rsi), %eax
	movw	%ax, 70(%rdi)
	movzwl	70(%rsi), %eax
	movw	%ax, 72(%rdi)
	movzwl	82(%rsi), %eax
	movw	%ax, 74(%rdi)
	movzwl	96(%rsi), %eax
	movw	%ax, 76(%rdi)
	movzwl	84(%rsi), %eax
	movw	%ax, 78(%rdi)
	movzwl	72(%rsi), %eax
	movw	%ax, 80(%rdi)
	movzwl	74(%rsi), %eax
	movw	%ax, 82(%rdi)
	movzwl	76(%rsi), %eax
	movw	%ax, 84(%rdi)
	movzwl	78(%rsi), %eax
	movw	%ax, 86(%rdi)
	movzwl	86(%rsi), %eax
	movw	%ax, 88(%rdi)
	movzwl	98(%rsi), %eax
	movw	%ax, 90(%rdi)
	movzwl	100(%rsi), %eax
	movw	%ax, 92(%rdi)
	movzwl	88(%rsi), %eax
	movw	%ax, 94(%rdi)
	movzwl	90(%rsi), %eax
	movw	%ax, 96(%rdi)
	movzwl	92(%rsi), %eax
	movw	%ax, 98(%rdi)
	movzwl	94(%rsi), %eax
	movw	%ax, 100(%rdi)
	movzwl	102(%rsi), %eax
	movw	%ax, 102(%rdi)
	movzwl	112(%rsi), %eax
	movw	%ax, 104(%rdi)
	movzwl	114(%rsi), %eax
	movw	%ax, 106(%rdi)
	movzwl	104(%rsi), %eax
	movw	%ax, 108(%rdi)
	movzwl	106(%rsi), %eax
	movw	%ax, 110(%rdi)
	movzwl	108(%rsi), %eax
	movw	%ax, 112(%rdi)
	movzwl	110(%rsi), %eax
	movw	%ax, 114(%rdi)
	movzwl	116(%rsi), %eax
	movw	%ax, 116(%rdi)
	movzwl	118(%rsi), %eax
	movw	%ax, 118(%rdi)
	movzwl	120(%rsi), %eax
	movw	%ax, 120(%rdi)
	movzwl	122(%rsi), %eax
	movw	%ax, 122(%rdi)
	movzwl	124(%rsi), %eax
	movw	%ax, 124(%rdi)
	movzwl	126(%rsi), %eax
	movw	%ax, 126(%rdi)
	retq
.Lfunc_end18:
	.size	zigzag_scan_8x8_field, .Lfunc_end18-zigzag_scan_8x8_field
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_scan_4x4_field
	.type	zigzag_scan_4x4_field,@function
zigzag_scan_4x4_field:                  # @zigzag_scan_4x4_field
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movzwl	8(%rsi), %eax
	movw	%ax, 4(%rdi)
	movzwl	4(%rsi), %eax
	movw	%ax, 6(%rdi)
	movzwl	6(%rsi), %eax
	movw	%ax, 8(%rdi)
	movzwl	10(%rsi), %eax
	movw	%ax, 10(%rdi)
	movl	12(%rsi), %eax
	movl	%eax, 12(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rdi)
	retq
.Lfunc_end19:
	.size	zigzag_scan_4x4_field, .Lfunc_end19-zigzag_scan_4x4_field
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_sub_8x8_field
	.type	zigzag_sub_8x8_field,@function
zigzag_sub_8x8_field:                   # @zigzag_sub_8x8_field
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, (%rdi)
	movzbl	16(%rsi), %r8d
	movzbl	32(%rdx), %ecx
	subl	%ecx, %r8d
	movw	%r8w, 2(%rdi)
	orl	%eax, %r8d
	movzbl	32(%rsi), %eax
	movzbl	64(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, 4(%rdi)
	movzbl	1(%rsi), %ecx
	movzbl	1(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 6(%rdi)
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movzbl	17(%rsi), %eax
	movzbl	33(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 8(%rdi)
	movzbl	48(%rsi), %r8d
	movzbl	96(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 10(%rdi)
	orl	%eax, %r8d
	movzbl	64(%rsi), %eax
	movzbl	128(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 12(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	33(%rsi), %ecx
	movzbl	65(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 14(%rdi)
	movzbl	2(%rsi), %r8d
	movzbl	2(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 16(%rdi)
	orl	%ecx, %r8d
	movzbl	49(%rsi), %r9d
	movzbl	97(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 18(%rdi)
	orl	%r8d, %r9d
	movzbl	80(%rsi), %ecx
	movzbl	160(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 20(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	96(%rsi), %eax
	movzbl	192(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 22(%rdi)
	movzbl	112(%rsi), %r8d
	movzbl	224(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 24(%rdi)
	orl	%eax, %r8d
	movzbl	65(%rsi), %eax
	movzbl	129(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 26(%rdi)
	orl	%r8d, %eax
	movzbl	18(%rsi), %r8d
	movzbl	34(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 28(%rdi)
	orl	%eax, %r8d
	movzbl	3(%rsi), %eax
	movzbl	3(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 30(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	34(%rsi), %ecx
	movzbl	66(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 32(%rdi)
	movzbl	81(%rsi), %r8d
	movzbl	161(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 34(%rdi)
	orl	%ecx, %r8d
	movzbl	97(%rsi), %ecx
	movzbl	193(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 36(%rdi)
	orl	%r8d, %ecx
	movzbl	113(%rsi), %r8d
	movzbl	225(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 38(%rdi)
	orl	%ecx, %r8d
	movzbl	50(%rsi), %r9d
	movzbl	98(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 40(%rdi)
	orl	%r8d, %r9d
	movzbl	19(%rsi), %ecx
	movzbl	35(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 42(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	4(%rsi), %eax
	movzbl	4(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 44(%rdi)
	movzbl	35(%rsi), %r8d
	movzbl	67(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 46(%rdi)
	orl	%eax, %r8d
	movzbl	66(%rsi), %eax
	movzbl	130(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 48(%rdi)
	orl	%r8d, %eax
	movzbl	82(%rsi), %r8d
	movzbl	162(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 50(%rdi)
	orl	%eax, %r8d
	movzbl	98(%rsi), %eax
	movzbl	194(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 52(%rdi)
	orl	%r8d, %eax
	movzbl	114(%rsi), %r8d
	movzbl	226(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 54(%rdi)
	orl	%eax, %r8d
	movzbl	51(%rsi), %eax
	movzbl	99(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 56(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	20(%rsi), %ecx
	movzbl	36(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 58(%rdi)
	movzbl	5(%rsi), %r8d
	movzbl	5(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 60(%rdi)
	orl	%ecx, %r8d
	movzbl	36(%rsi), %ecx
	movzbl	68(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 62(%rdi)
	orl	%r8d, %ecx
	movzbl	67(%rsi), %r8d
	movzbl	131(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 64(%rdi)
	orl	%ecx, %r8d
	movzbl	83(%rsi), %ecx
	movzbl	163(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 66(%rdi)
	orl	%r8d, %ecx
	movzbl	99(%rsi), %r8d
	movzbl	195(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 68(%rdi)
	orl	%ecx, %r8d
	movzbl	115(%rsi), %r9d
	movzbl	227(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 70(%rdi)
	orl	%r8d, %r9d
	movzbl	52(%rsi), %ecx
	movzbl	100(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 72(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	21(%rsi), %eax
	movzbl	37(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 74(%rdi)
	movzbl	6(%rsi), %r8d
	movzbl	6(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 76(%rdi)
	orl	%eax, %r8d
	movzbl	37(%rsi), %eax
	movzbl	69(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 78(%rdi)
	orl	%r8d, %eax
	movzbl	68(%rsi), %r8d
	movzbl	132(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 80(%rdi)
	orl	%eax, %r8d
	movzbl	84(%rsi), %eax
	movzbl	164(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 82(%rdi)
	orl	%r8d, %eax
	movzbl	100(%rsi), %r8d
	movzbl	196(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 84(%rdi)
	orl	%eax, %r8d
	movzbl	116(%rsi), %eax
	movzbl	228(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 86(%rdi)
	orl	%r8d, %eax
	movzbl	53(%rsi), %r8d
	movzbl	101(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 88(%rdi)
	orl	%eax, %r8d
	movzbl	22(%rsi), %eax
	movzbl	38(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 90(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	38(%rsi), %ecx
	movzbl	70(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 92(%rdi)
	movzbl	69(%rsi), %r8d
	movzbl	133(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 94(%rdi)
	orl	%ecx, %r8d
	movzbl	85(%rsi), %ecx
	movzbl	165(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 96(%rdi)
	orl	%r8d, %ecx
	movzbl	101(%rsi), %r8d
	movzbl	197(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 98(%rdi)
	orl	%ecx, %r8d
	movzbl	117(%rsi), %ecx
	movzbl	229(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 100(%rdi)
	orl	%r8d, %ecx
	movzbl	54(%rsi), %r8d
	movzbl	102(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 102(%rdi)
	orl	%ecx, %r8d
	movzbl	7(%rsi), %ecx
	movzbl	7(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 104(%rdi)
	orl	%r8d, %ecx
	movzbl	23(%rsi), %r8d
	movzbl	39(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 106(%rdi)
	orl	%ecx, %r8d
	movzbl	70(%rsi), %r9d
	movzbl	134(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 108(%rdi)
	orl	%r8d, %r9d
	movzbl	86(%rsi), %ecx
	movzbl	166(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 110(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	102(%rsi), %eax
	movzbl	198(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 112(%rdi)
	movzbl	118(%rsi), %r8d
	movzbl	230(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 114(%rdi)
	orl	%eax, %r8d
	movzbl	39(%rsi), %eax
	movzbl	71(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 116(%rdi)
	orl	%r8d, %eax
	movzbl	55(%rsi), %r8d
	movzbl	103(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 118(%rdi)
	orl	%eax, %r8d
	movzbl	71(%rsi), %eax
	movzbl	135(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 120(%rdi)
	orl	%r8d, %eax
	movzbl	87(%rsi), %r9d
	movzbl	167(%rdx), %r8d
	subl	%r8d, %r9d
	movw	%r9w, 122(%rdi)
	orl	%eax, %r9d
	movzbl	103(%rsi), %r8d
	movzbl	199(%rdx), %eax
	subl	%eax, %r8d
	movw	%r8w, 124(%rdi)
	orl	%r9d, %r8d
	orl	%ecx, %r8d
	movzbl	119(%rsi), %ecx
	movzbl	231(%rdx), %eax
	subl	%eax, %ecx
	movw	%cx, 126(%rdi)
	movq	(%rsi), %rax
	movq	%rax, (%rdx)
	movq	16(%rsi), %rax
	movq	%rax, 32(%rdx)
	movq	32(%rsi), %rax
	movq	%rax, 64(%rdx)
	movq	48(%rsi), %rax
	movq	%rax, 96(%rdx)
	movq	64(%rsi), %rax
	movq	%rax, 128(%rdx)
	movq	80(%rsi), %rax
	movq	%rax, 160(%rdx)
	movq	96(%rsi), %rax
	movq	%rax, 192(%rdx)
	movq	112(%rsi), %rax
	movq	%rax, 224(%rdx)
	xorl	%eax, %eax
	orw	%cx, %r8w
	setne	%al
	retq
.Lfunc_end20:
	.size	zigzag_sub_8x8_field, .Lfunc_end20-zigzag_sub_8x8_field
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_sub_4x4_field
	.type	zigzag_sub_4x4_field,@function
zigzag_sub_4x4_field:                   # @zigzag_sub_4x4_field
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, (%rdi)
	movzbl	16(%rsi), %r8d
	movzbl	32(%rdx), %ecx
	subl	%ecx, %r8d
	movw	%r8w, 2(%rdi)
	orl	%eax, %r8d
	movzbl	1(%rsi), %eax
	movzbl	1(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, 4(%rdi)
	movzbl	32(%rsi), %ecx
	movzbl	64(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 6(%rdi)
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movzbl	48(%rsi), %eax
	movzbl	96(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 8(%rdi)
	movzbl	17(%rsi), %r8d
	movzbl	33(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 10(%rdi)
	orl	%eax, %r8d
	movzbl	33(%rsi), %eax
	movzbl	65(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 12(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	49(%rsi), %ecx
	movzbl	97(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 14(%rdi)
	movzbl	2(%rsi), %r8d
	movzbl	2(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 16(%rdi)
	orl	%ecx, %r8d
	movzbl	18(%rsi), %r9d
	movzbl	34(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 18(%rdi)
	orl	%r8d, %r9d
	movzbl	34(%rsi), %ecx
	movzbl	66(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 20(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	50(%rsi), %eax
	movzbl	98(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 22(%rdi)
	movzbl	3(%rsi), %r8d
	movzbl	3(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 24(%rdi)
	orl	%eax, %r8d
	movzbl	19(%rsi), %eax
	movzbl	35(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 26(%rdi)
	orl	%r8d, %eax
	movzbl	35(%rsi), %r8d
	movzbl	67(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 28(%rdi)
	orl	%eax, %r8d
	orl	%ecx, %r8d
	movzbl	51(%rsi), %ecx
	movzbl	99(%rdx), %eax
	subl	%eax, %ecx
	movw	%cx, 30(%rdi)
	movl	(%rsi), %eax
	movl	%eax, (%rdx)
	movl	16(%rsi), %eax
	movl	%eax, 32(%rdx)
	movl	32(%rsi), %eax
	movl	%eax, 64(%rdx)
	movl	48(%rsi), %eax
	movl	%eax, 96(%rdx)
	xorl	%eax, %eax
	orw	%cx, %r8w
	setne	%al
	retq
.Lfunc_end21:
	.size	zigzag_sub_4x4_field, .Lfunc_end21-zigzag_sub_4x4_field
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_sub_4x4ac_field
	.type	zigzag_sub_4x4ac_field,@function
zigzag_sub_4x4ac_field:                 # @zigzag_sub_4x4ac_field
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, (%rcx)
	movw	$0, (%rdi)
	movzbl	16(%rsi), %eax
	movzbl	32(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, 2(%rdi)
	movzbl	1(%rsi), %r8d
	movzbl	1(%rdx), %ecx
	subl	%ecx, %r8d
	movw	%r8w, 4(%rdi)
	orl	%eax, %r8d
	movzbl	32(%rsi), %eax
	movzbl	64(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, 6(%rdi)
	movzbl	48(%rsi), %ecx
	movzbl	96(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 8(%rdi)
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movzbl	17(%rsi), %eax
	movzbl	33(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 10(%rdi)
	movzbl	33(%rsi), %r8d
	movzbl	65(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 12(%rdi)
	orl	%eax, %r8d
	movzbl	49(%rsi), %eax
	movzbl	97(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 14(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	2(%rsi), %ecx
	movzbl	2(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 16(%rdi)
	movzbl	18(%rsi), %r8d
	movzbl	34(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 18(%rdi)
	orl	%ecx, %r8d
	movzbl	34(%rsi), %r9d
	movzbl	66(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 20(%rdi)
	orl	%r8d, %r9d
	movzbl	50(%rsi), %ecx
	movzbl	98(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 22(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	3(%rsi), %eax
	movzbl	3(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 24(%rdi)
	movzbl	19(%rsi), %r8d
	movzbl	35(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 26(%rdi)
	orl	%eax, %r8d
	movzbl	35(%rsi), %r9d
	movzbl	67(%rdx), %eax
	subl	%eax, %r9d
	movw	%r9w, 28(%rdi)
	orl	%r8d, %r9d
	orl	%ecx, %r9d
	movzbl	51(%rsi), %ecx
	movzbl	99(%rdx), %eax
	subl	%eax, %ecx
	movw	%cx, 30(%rdi)
	movl	(%rsi), %eax
	movl	%eax, (%rdx)
	movl	16(%rsi), %eax
	movl	%eax, 32(%rdx)
	movl	32(%rsi), %eax
	movl	%eax, 64(%rdx)
	movl	48(%rsi), %eax
	movl	%eax, 96(%rdx)
	xorl	%eax, %eax
	orw	%cx, %r9w
	setne	%al
	retq
.Lfunc_end22:
	.size	zigzag_sub_4x4ac_field, .Lfunc_end22-zigzag_sub_4x4ac_field
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_scan_8x8_frame
	.type	zigzag_scan_8x8_frame,@function
zigzag_scan_8x8_frame:                  # @zigzag_scan_8x8_frame
	.cfi_startproc
# %bb.0:                                # %entry
	movzwl	(%rsi), %eax
	movw	%ax, (%rdi)
	movzwl	16(%rsi), %eax
	movw	%ax, 2(%rdi)
	movzwl	2(%rsi), %eax
	movw	%ax, 4(%rdi)
	movzwl	4(%rsi), %eax
	movw	%ax, 6(%rdi)
	movzwl	18(%rsi), %eax
	movw	%ax, 8(%rdi)
	movzwl	32(%rsi), %eax
	movw	%ax, 10(%rdi)
	movzwl	48(%rsi), %eax
	movw	%ax, 12(%rdi)
	movzwl	34(%rsi), %eax
	movw	%ax, 14(%rdi)
	movzwl	20(%rsi), %eax
	movw	%ax, 16(%rdi)
	movzwl	6(%rsi), %eax
	movw	%ax, 18(%rdi)
	movzwl	8(%rsi), %eax
	movw	%ax, 20(%rdi)
	movzwl	22(%rsi), %eax
	movw	%ax, 22(%rdi)
	movzwl	36(%rsi), %eax
	movw	%ax, 24(%rdi)
	movzwl	50(%rsi), %eax
	movw	%ax, 26(%rdi)
	movzwl	64(%rsi), %eax
	movw	%ax, 28(%rdi)
	movzwl	80(%rsi), %eax
	movw	%ax, 30(%rdi)
	movzwl	66(%rsi), %eax
	movw	%ax, 32(%rdi)
	movzwl	52(%rsi), %eax
	movw	%ax, 34(%rdi)
	movzwl	38(%rsi), %eax
	movw	%ax, 36(%rdi)
	movzwl	24(%rsi), %eax
	movw	%ax, 38(%rdi)
	movzwl	10(%rsi), %eax
	movw	%ax, 40(%rdi)
	movzwl	12(%rsi), %eax
	movw	%ax, 42(%rdi)
	movzwl	26(%rsi), %eax
	movw	%ax, 44(%rdi)
	movzwl	40(%rsi), %eax
	movw	%ax, 46(%rdi)
	movzwl	54(%rsi), %eax
	movw	%ax, 48(%rdi)
	movzwl	68(%rsi), %eax
	movw	%ax, 50(%rdi)
	movzwl	82(%rsi), %eax
	movw	%ax, 52(%rdi)
	movzwl	96(%rsi), %eax
	movw	%ax, 54(%rdi)
	movzwl	112(%rsi), %eax
	movw	%ax, 56(%rdi)
	movzwl	98(%rsi), %eax
	movw	%ax, 58(%rdi)
	movzwl	84(%rsi), %eax
	movw	%ax, 60(%rdi)
	movzwl	70(%rsi), %eax
	movw	%ax, 62(%rdi)
	movzwl	56(%rsi), %eax
	movw	%ax, 64(%rdi)
	movzwl	42(%rsi), %eax
	movw	%ax, 66(%rdi)
	movzwl	28(%rsi), %eax
	movw	%ax, 68(%rdi)
	movzwl	14(%rsi), %eax
	movw	%ax, 70(%rdi)
	movzwl	30(%rsi), %eax
	movw	%ax, 72(%rdi)
	movzwl	44(%rsi), %eax
	movw	%ax, 74(%rdi)
	movzwl	58(%rsi), %eax
	movw	%ax, 76(%rdi)
	movzwl	72(%rsi), %eax
	movw	%ax, 78(%rdi)
	movzwl	86(%rsi), %eax
	movw	%ax, 80(%rdi)
	movzwl	100(%rsi), %eax
	movw	%ax, 82(%rdi)
	movzwl	114(%rsi), %eax
	movw	%ax, 84(%rdi)
	movzwl	116(%rsi), %eax
	movw	%ax, 86(%rdi)
	movzwl	102(%rsi), %eax
	movw	%ax, 88(%rdi)
	movzwl	88(%rsi), %eax
	movw	%ax, 90(%rdi)
	movzwl	74(%rsi), %eax
	movw	%ax, 92(%rdi)
	movzwl	60(%rsi), %eax
	movw	%ax, 94(%rdi)
	movzwl	46(%rsi), %eax
	movw	%ax, 96(%rdi)
	movzwl	62(%rsi), %eax
	movw	%ax, 98(%rdi)
	movzwl	76(%rsi), %eax
	movw	%ax, 100(%rdi)
	movzwl	90(%rsi), %eax
	movw	%ax, 102(%rdi)
	movzwl	104(%rsi), %eax
	movw	%ax, 104(%rdi)
	movzwl	118(%rsi), %eax
	movw	%ax, 106(%rdi)
	movzwl	120(%rsi), %eax
	movw	%ax, 108(%rdi)
	movzwl	106(%rsi), %eax
	movw	%ax, 110(%rdi)
	movzwl	92(%rsi), %eax
	movw	%ax, 112(%rdi)
	movzwl	78(%rsi), %eax
	movw	%ax, 114(%rdi)
	movzwl	94(%rsi), %eax
	movw	%ax, 116(%rdi)
	movzwl	108(%rsi), %eax
	movw	%ax, 118(%rdi)
	movzwl	122(%rsi), %eax
	movw	%ax, 120(%rdi)
	movzwl	124(%rsi), %eax
	movw	%ax, 122(%rdi)
	movzwl	110(%rsi), %eax
	movw	%ax, 124(%rdi)
	movzwl	126(%rsi), %eax
	movw	%ax, 126(%rdi)
	retq
.Lfunc_end23:
	.size	zigzag_scan_8x8_frame, .Lfunc_end23-zigzag_scan_8x8_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_scan_4x4_frame
	.type	zigzag_scan_4x4_frame,@function
zigzag_scan_4x4_frame:                  # @zigzag_scan_4x4_frame
	.cfi_startproc
# %bb.0:                                # %entry
	movzwl	(%rsi), %eax
	movw	%ax, (%rdi)
	movzwl	8(%rsi), %eax
	movw	%ax, 2(%rdi)
	movzwl	2(%rsi), %eax
	movw	%ax, 4(%rdi)
	movzwl	4(%rsi), %eax
	movw	%ax, 6(%rdi)
	movzwl	10(%rsi), %eax
	movw	%ax, 8(%rdi)
	movzwl	16(%rsi), %eax
	movw	%ax, 10(%rdi)
	movzwl	24(%rsi), %eax
	movw	%ax, 12(%rdi)
	movzwl	18(%rsi), %eax
	movw	%ax, 14(%rdi)
	movzwl	12(%rsi), %eax
	movw	%ax, 16(%rdi)
	movzwl	6(%rsi), %eax
	movw	%ax, 18(%rdi)
	movzwl	14(%rsi), %eax
	movw	%ax, 20(%rdi)
	movzwl	20(%rsi), %eax
	movw	%ax, 22(%rdi)
	movzwl	26(%rsi), %eax
	movw	%ax, 24(%rdi)
	movzwl	28(%rsi), %eax
	movw	%ax, 26(%rdi)
	movzwl	22(%rsi), %eax
	movw	%ax, 28(%rdi)
	movzwl	30(%rsi), %eax
	movw	%ax, 30(%rdi)
	retq
.Lfunc_end24:
	.size	zigzag_scan_4x4_frame, .Lfunc_end24-zigzag_scan_4x4_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_sub_8x8_frame
	.type	zigzag_sub_8x8_frame,@function
zigzag_sub_8x8_frame:                   # @zigzag_sub_8x8_frame
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, (%rdi)
	movzbl	1(%rsi), %r8d
	movzbl	1(%rdx), %ecx
	subl	%ecx, %r8d
	movw	%r8w, 2(%rdi)
	orl	%eax, %r8d
	movzbl	16(%rsi), %eax
	movzbl	32(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, 4(%rdi)
	movzbl	32(%rsi), %ecx
	movzbl	64(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 6(%rdi)
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movzbl	17(%rsi), %eax
	movzbl	33(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 8(%rdi)
	movzbl	2(%rsi), %r8d
	movzbl	2(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 10(%rdi)
	orl	%eax, %r8d
	movzbl	3(%rsi), %eax
	movzbl	3(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 12(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	18(%rsi), %ecx
	movzbl	34(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 14(%rdi)
	movzbl	33(%rsi), %r8d
	movzbl	65(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 16(%rdi)
	orl	%ecx, %r8d
	movzbl	48(%rsi), %r9d
	movzbl	96(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 18(%rdi)
	orl	%r8d, %r9d
	movzbl	64(%rsi), %ecx
	movzbl	128(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 20(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	49(%rsi), %eax
	movzbl	97(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 22(%rdi)
	movzbl	34(%rsi), %r8d
	movzbl	66(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 24(%rdi)
	orl	%eax, %r8d
	movzbl	19(%rsi), %eax
	movzbl	35(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 26(%rdi)
	orl	%r8d, %eax
	movzbl	4(%rsi), %r8d
	movzbl	4(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 28(%rdi)
	orl	%eax, %r8d
	movzbl	5(%rsi), %eax
	movzbl	5(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 30(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	20(%rsi), %ecx
	movzbl	36(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 32(%rdi)
	movzbl	35(%rsi), %r8d
	movzbl	67(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 34(%rdi)
	orl	%ecx, %r8d
	movzbl	50(%rsi), %ecx
	movzbl	98(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 36(%rdi)
	orl	%r8d, %ecx
	movzbl	65(%rsi), %r8d
	movzbl	129(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 38(%rdi)
	orl	%ecx, %r8d
	movzbl	80(%rsi), %r9d
	movzbl	160(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 40(%rdi)
	orl	%r8d, %r9d
	movzbl	96(%rsi), %ecx
	movzbl	192(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 42(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	81(%rsi), %eax
	movzbl	161(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 44(%rdi)
	movzbl	66(%rsi), %r8d
	movzbl	130(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 46(%rdi)
	orl	%eax, %r8d
	movzbl	51(%rsi), %eax
	movzbl	99(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 48(%rdi)
	orl	%r8d, %eax
	movzbl	36(%rsi), %r8d
	movzbl	68(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 50(%rdi)
	orl	%eax, %r8d
	movzbl	21(%rsi), %eax
	movzbl	37(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 52(%rdi)
	orl	%r8d, %eax
	movzbl	6(%rsi), %r8d
	movzbl	6(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 54(%rdi)
	orl	%eax, %r8d
	movzbl	7(%rsi), %eax
	movzbl	7(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 56(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	22(%rsi), %ecx
	movzbl	38(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 58(%rdi)
	movzbl	37(%rsi), %r8d
	movzbl	69(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 60(%rdi)
	orl	%ecx, %r8d
	movzbl	52(%rsi), %ecx
	movzbl	100(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 62(%rdi)
	orl	%r8d, %ecx
	movzbl	67(%rsi), %r8d
	movzbl	131(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 64(%rdi)
	orl	%ecx, %r8d
	movzbl	82(%rsi), %ecx
	movzbl	162(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 66(%rdi)
	orl	%r8d, %ecx
	movzbl	97(%rsi), %r8d
	movzbl	193(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 68(%rdi)
	orl	%ecx, %r8d
	movzbl	112(%rsi), %r9d
	movzbl	224(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 70(%rdi)
	orl	%r8d, %r9d
	movzbl	113(%rsi), %ecx
	movzbl	225(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 72(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	98(%rsi), %eax
	movzbl	194(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 74(%rdi)
	movzbl	83(%rsi), %r8d
	movzbl	163(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 76(%rdi)
	orl	%eax, %r8d
	movzbl	68(%rsi), %eax
	movzbl	132(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 78(%rdi)
	orl	%r8d, %eax
	movzbl	53(%rsi), %r8d
	movzbl	101(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 80(%rdi)
	orl	%eax, %r8d
	movzbl	38(%rsi), %eax
	movzbl	70(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 82(%rdi)
	orl	%r8d, %eax
	movzbl	23(%rsi), %r8d
	movzbl	39(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 84(%rdi)
	orl	%eax, %r8d
	movzbl	39(%rsi), %eax
	movzbl	71(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 86(%rdi)
	orl	%r8d, %eax
	movzbl	54(%rsi), %r8d
	movzbl	102(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 88(%rdi)
	orl	%eax, %r8d
	movzbl	69(%rsi), %eax
	movzbl	133(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 90(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	84(%rsi), %ecx
	movzbl	164(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 92(%rdi)
	movzbl	99(%rsi), %r8d
	movzbl	195(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 94(%rdi)
	orl	%ecx, %r8d
	movzbl	114(%rsi), %ecx
	movzbl	226(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 96(%rdi)
	orl	%r8d, %ecx
	movzbl	115(%rsi), %r8d
	movzbl	227(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 98(%rdi)
	orl	%ecx, %r8d
	movzbl	100(%rsi), %ecx
	movzbl	196(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 100(%rdi)
	orl	%r8d, %ecx
	movzbl	85(%rsi), %r8d
	movzbl	165(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 102(%rdi)
	orl	%ecx, %r8d
	movzbl	70(%rsi), %ecx
	movzbl	134(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 104(%rdi)
	orl	%r8d, %ecx
	movzbl	55(%rsi), %r8d
	movzbl	103(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 106(%rdi)
	orl	%ecx, %r8d
	movzbl	71(%rsi), %r9d
	movzbl	135(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 108(%rdi)
	orl	%r8d, %r9d
	movzbl	86(%rsi), %ecx
	movzbl	166(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 110(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	101(%rsi), %eax
	movzbl	197(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 112(%rdi)
	movzbl	116(%rsi), %r8d
	movzbl	228(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 114(%rdi)
	orl	%eax, %r8d
	movzbl	117(%rsi), %eax
	movzbl	229(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 116(%rdi)
	orl	%r8d, %eax
	movzbl	102(%rsi), %r8d
	movzbl	198(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 118(%rdi)
	orl	%eax, %r8d
	movzbl	87(%rsi), %eax
	movzbl	167(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 120(%rdi)
	orl	%r8d, %eax
	movzbl	103(%rsi), %r9d
	movzbl	199(%rdx), %r8d
	subl	%r8d, %r9d
	movw	%r9w, 122(%rdi)
	orl	%eax, %r9d
	movzbl	118(%rsi), %r8d
	movzbl	230(%rdx), %eax
	subl	%eax, %r8d
	movw	%r8w, 124(%rdi)
	orl	%r9d, %r8d
	orl	%ecx, %r8d
	movzbl	119(%rsi), %ecx
	movzbl	231(%rdx), %eax
	subl	%eax, %ecx
	movw	%cx, 126(%rdi)
	movq	(%rsi), %rax
	movq	%rax, (%rdx)
	movq	16(%rsi), %rax
	movq	%rax, 32(%rdx)
	movq	32(%rsi), %rax
	movq	%rax, 64(%rdx)
	movq	48(%rsi), %rax
	movq	%rax, 96(%rdx)
	movq	64(%rsi), %rax
	movq	%rax, 128(%rdx)
	movq	80(%rsi), %rax
	movq	%rax, 160(%rdx)
	movq	96(%rsi), %rax
	movq	%rax, 192(%rdx)
	movq	112(%rsi), %rax
	movq	%rax, 224(%rdx)
	xorl	%eax, %eax
	orw	%cx, %r8w
	setne	%al
	retq
.Lfunc_end25:
	.size	zigzag_sub_8x8_frame, .Lfunc_end25-zigzag_sub_8x8_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_sub_4x4_frame
	.type	zigzag_sub_4x4_frame,@function
zigzag_sub_4x4_frame:                   # @zigzag_sub_4x4_frame
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, (%rdi)
	movzbl	1(%rsi), %r8d
	movzbl	1(%rdx), %ecx
	subl	%ecx, %r8d
	movw	%r8w, 2(%rdi)
	orl	%eax, %r8d
	movzbl	16(%rsi), %eax
	movzbl	32(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, 4(%rdi)
	movzbl	32(%rsi), %ecx
	movzbl	64(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 6(%rdi)
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movzbl	17(%rsi), %eax
	movzbl	33(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 8(%rdi)
	movzbl	2(%rsi), %r8d
	movzbl	2(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 10(%rdi)
	orl	%eax, %r8d
	movzbl	3(%rsi), %eax
	movzbl	3(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 12(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	18(%rsi), %ecx
	movzbl	34(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 14(%rdi)
	movzbl	33(%rsi), %r8d
	movzbl	65(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 16(%rdi)
	orl	%ecx, %r8d
	movzbl	48(%rsi), %r9d
	movzbl	96(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 18(%rdi)
	orl	%r8d, %r9d
	movzbl	49(%rsi), %ecx
	movzbl	97(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 20(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	34(%rsi), %eax
	movzbl	66(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 22(%rdi)
	movzbl	19(%rsi), %r8d
	movzbl	35(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 24(%rdi)
	orl	%eax, %r8d
	movzbl	35(%rsi), %eax
	movzbl	67(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 26(%rdi)
	orl	%r8d, %eax
	movzbl	50(%rsi), %r8d
	movzbl	98(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 28(%rdi)
	orl	%eax, %r8d
	orl	%ecx, %r8d
	movzbl	51(%rsi), %ecx
	movzbl	99(%rdx), %eax
	subl	%eax, %ecx
	movw	%cx, 30(%rdi)
	movl	(%rsi), %eax
	movl	%eax, (%rdx)
	movl	16(%rsi), %eax
	movl	%eax, 32(%rdx)
	movl	32(%rsi), %eax
	movl	%eax, 64(%rdx)
	movl	48(%rsi), %eax
	movl	%eax, 96(%rdx)
	xorl	%eax, %eax
	orw	%cx, %r8w
	setne	%al
	retq
.Lfunc_end26:
	.size	zigzag_sub_4x4_frame, .Lfunc_end26-zigzag_sub_4x4_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_sub_4x4ac_frame
	.type	zigzag_sub_4x4ac_frame,@function
zigzag_sub_4x4ac_frame:                 # @zigzag_sub_4x4ac_frame
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, (%rcx)
	movw	$0, (%rdi)
	movzbl	1(%rsi), %eax
	movzbl	1(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, 2(%rdi)
	movzbl	16(%rsi), %r8d
	movzbl	32(%rdx), %ecx
	subl	%ecx, %r8d
	movw	%r8w, 4(%rdi)
	orl	%eax, %r8d
	movzbl	32(%rsi), %eax
	movzbl	64(%rdx), %ecx
	subl	%ecx, %eax
	movw	%ax, 6(%rdi)
	movzbl	17(%rsi), %ecx
	movzbl	33(%rdx), %r9d
	subl	%r9d, %ecx
	movw	%cx, 8(%rdi)
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movzbl	2(%rsi), %eax
	movzbl	2(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 10(%rdi)
	movzbl	3(%rsi), %r8d
	movzbl	3(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 12(%rdi)
	orl	%eax, %r8d
	movzbl	18(%rsi), %eax
	movzbl	34(%rdx), %r9d
	subl	%r9d, %eax
	movw	%ax, 14(%rdi)
	orl	%r8d, %eax
	orl	%ecx, %eax
	movzbl	33(%rsi), %ecx
	movzbl	65(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 16(%rdi)
	movzbl	48(%rsi), %r8d
	movzbl	96(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 18(%rdi)
	orl	%ecx, %r8d
	movzbl	49(%rsi), %r9d
	movzbl	97(%rdx), %ecx
	subl	%ecx, %r9d
	movw	%r9w, 20(%rdi)
	orl	%r8d, %r9d
	movzbl	34(%rsi), %ecx
	movzbl	66(%rdx), %r8d
	subl	%r8d, %ecx
	movw	%cx, 22(%rdi)
	orl	%r9d, %ecx
	orl	%eax, %ecx
	movzbl	19(%rsi), %eax
	movzbl	35(%rdx), %r8d
	subl	%r8d, %eax
	movw	%ax, 24(%rdi)
	movzbl	35(%rsi), %r8d
	movzbl	67(%rdx), %r9d
	subl	%r9d, %r8d
	movw	%r8w, 26(%rdi)
	orl	%eax, %r8d
	movzbl	50(%rsi), %r9d
	movzbl	98(%rdx), %eax
	subl	%eax, %r9d
	movw	%r9w, 28(%rdi)
	orl	%r8d, %r9d
	orl	%ecx, %r9d
	movzbl	51(%rsi), %ecx
	movzbl	99(%rdx), %eax
	subl	%eax, %ecx
	movw	%cx, 30(%rdi)
	movl	(%rsi), %eax
	movl	%eax, (%rdx)
	movl	16(%rsi), %eax
	movl	%eax, 32(%rdx)
	movl	32(%rsi), %eax
	movl	%eax, 64(%rdx)
	movl	48(%rsi), %eax
	movl	%eax, 96(%rdx)
	xorl	%eax, %eax
	orw	%cx, %r9w
	setne	%al
	retq
.Lfunc_end27:
	.size	zigzag_sub_4x4ac_frame, .Lfunc_end27-zigzag_sub_4x4ac_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function zigzag_interleave_8x8_cavlc
	.type	zigzag_interleave_8x8_cavlc,@function
zigzag_interleave_8x8_cavlc:            # @zigzag_interleave_8x8_cavlc
	.cfi_startproc
# %bb.0:                                # %entry
	movzwl	(%rsi), %eax
	movw	%ax, (%rdi)
	movzwl	8(%rsi), %ecx
	orl	%ecx, %eax
	movw	%cx, 2(%rdi)
	movzwl	16(%rsi), %r8d
	movw	%r8w, 4(%rdi)
	movzwl	24(%rsi), %ecx
	orl	%ecx, %r8d
	orl	%eax, %r8d
	movw	%cx, 6(%rdi)
	movzwl	32(%rsi), %ecx
	movw	%cx, 8(%rdi)
	movzwl	40(%rsi), %eax
	orl	%eax, %ecx
	movw	%ax, 10(%rdi)
	movzwl	48(%rsi), %eax
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movw	%ax, 12(%rdi)
	movzwl	56(%rsi), %eax
	movw	%ax, 14(%rdi)
	movzwl	64(%rsi), %r8d
	orl	%r8d, %eax
	movw	%r8w, 16(%rdi)
	movzwl	72(%rsi), %r8d
	orl	%r8d, %eax
	movw	%r8w, 18(%rdi)
	movzwl	80(%rsi), %r8d
	orl	%r8d, %eax
	orl	%ecx, %eax
	movw	%r8w, 20(%rdi)
	movzwl	88(%rsi), %ecx
	movw	%cx, 22(%rdi)
	movzwl	96(%rsi), %r8d
	orl	%r8d, %ecx
	movw	%r8w, 24(%rdi)
	movzwl	104(%rsi), %r8d
	orl	%r8d, %ecx
	movw	%r8w, 26(%rdi)
	movzwl	112(%rsi), %r8d
	orl	%r8d, %ecx
	orl	%eax, %ecx
	movw	%r8w, 28(%rdi)
	movzwl	120(%rsi), %eax
	movw	%ax, 30(%rdi)
	orw	%ax, %cx
	setne	(%rdx)
	movzwl	2(%rsi), %eax
	movw	%ax, 32(%rdi)
	movzwl	10(%rsi), %ecx
	orl	%ecx, %eax
	movw	%cx, 34(%rdi)
	movzwl	18(%rsi), %r8d
	movw	%r8w, 36(%rdi)
	movzwl	26(%rsi), %ecx
	orl	%ecx, %r8d
	orl	%eax, %r8d
	movw	%cx, 38(%rdi)
	movzwl	34(%rsi), %ecx
	movw	%cx, 40(%rdi)
	movzwl	42(%rsi), %eax
	orl	%eax, %ecx
	movw	%ax, 42(%rdi)
	movzwl	50(%rsi), %eax
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movw	%ax, 44(%rdi)
	movzwl	58(%rsi), %eax
	movw	%ax, 46(%rdi)
	movzwl	66(%rsi), %r8d
	orl	%r8d, %eax
	movw	%r8w, 48(%rdi)
	movzwl	74(%rsi), %r8d
	orl	%r8d, %eax
	movw	%r8w, 50(%rdi)
	movzwl	82(%rsi), %r8d
	orl	%r8d, %eax
	orl	%ecx, %eax
	movw	%r8w, 52(%rdi)
	movzwl	90(%rsi), %ecx
	movw	%cx, 54(%rdi)
	movzwl	98(%rsi), %r8d
	orl	%r8d, %ecx
	movw	%r8w, 56(%rdi)
	movzwl	106(%rsi), %r8d
	orl	%r8d, %ecx
	movw	%r8w, 58(%rdi)
	movzwl	114(%rsi), %r8d
	orl	%r8d, %ecx
	orl	%eax, %ecx
	movw	%r8w, 60(%rdi)
	movzwl	122(%rsi), %eax
	movw	%ax, 62(%rdi)
	orw	%ax, %cx
	setne	1(%rdx)
	movzwl	4(%rsi), %eax
	movw	%ax, 64(%rdi)
	movzwl	12(%rsi), %ecx
	orl	%ecx, %eax
	movw	%cx, 66(%rdi)
	movzwl	20(%rsi), %r8d
	movw	%r8w, 68(%rdi)
	movzwl	28(%rsi), %ecx
	orl	%ecx, %r8d
	orl	%eax, %r8d
	movw	%cx, 70(%rdi)
	movzwl	36(%rsi), %ecx
	movw	%cx, 72(%rdi)
	movzwl	44(%rsi), %eax
	orl	%eax, %ecx
	movw	%ax, 74(%rdi)
	movzwl	52(%rsi), %eax
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movw	%ax, 76(%rdi)
	movzwl	60(%rsi), %eax
	movw	%ax, 78(%rdi)
	movzwl	68(%rsi), %r8d
	orl	%r8d, %eax
	movw	%r8w, 80(%rdi)
	movzwl	76(%rsi), %r8d
	orl	%r8d, %eax
	movw	%r8w, 82(%rdi)
	movzwl	84(%rsi), %r8d
	orl	%r8d, %eax
	orl	%ecx, %eax
	movw	%r8w, 84(%rdi)
	movzwl	92(%rsi), %ecx
	movw	%cx, 86(%rdi)
	movzwl	100(%rsi), %r8d
	orl	%r8d, %ecx
	movw	%r8w, 88(%rdi)
	movzwl	108(%rsi), %r8d
	orl	%r8d, %ecx
	movw	%r8w, 90(%rdi)
	movzwl	116(%rsi), %r8d
	orl	%r8d, %ecx
	orl	%eax, %ecx
	movw	%r8w, 92(%rdi)
	movzwl	124(%rsi), %eax
	movw	%ax, 94(%rdi)
	orw	%ax, %cx
	setne	8(%rdx)
	movzwl	6(%rsi), %eax
	movw	%ax, 96(%rdi)
	movzwl	14(%rsi), %ecx
	orl	%ecx, %eax
	movw	%cx, 98(%rdi)
	movzwl	22(%rsi), %r8d
	movw	%r8w, 100(%rdi)
	movzwl	30(%rsi), %ecx
	orl	%ecx, %r8d
	orl	%eax, %r8d
	movw	%cx, 102(%rdi)
	movzwl	38(%rsi), %ecx
	movw	%cx, 104(%rdi)
	movzwl	46(%rsi), %eax
	orl	%eax, %ecx
	movw	%ax, 106(%rdi)
	movzwl	54(%rsi), %eax
	orl	%eax, %ecx
	orl	%r8d, %ecx
	movw	%ax, 108(%rdi)
	movzwl	62(%rsi), %eax
	movw	%ax, 110(%rdi)
	movzwl	70(%rsi), %r8d
	orl	%r8d, %eax
	movw	%r8w, 112(%rdi)
	movzwl	78(%rsi), %r8d
	orl	%r8d, %eax
	movw	%r8w, 114(%rdi)
	movzwl	86(%rsi), %r8d
	orl	%r8d, %eax
	orl	%ecx, %eax
	movw	%r8w, 116(%rdi)
	movzwl	94(%rsi), %ecx
	movw	%cx, 118(%rdi)
	movzwl	102(%rsi), %r8d
	orl	%r8d, %ecx
	movw	%r8w, 120(%rdi)
	movzwl	110(%rsi), %r8d
	orl	%r8d, %ecx
	movw	%r8w, 122(%rdi)
	movzwl	118(%rsi), %r8d
	orl	%r8d, %ecx
	orl	%eax, %ecx
	movw	%r8w, 124(%rdi)
	movzwl	126(%rsi), %eax
	movw	%ax, 126(%rdi)
	orw	%ax, %cx
	setne	9(%rdx)
	retq
.Lfunc_end28:
	.size	zigzag_interleave_8x8_cavlc, .Lfunc_end28-zigzag_interleave_8x8_cavlc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function add4x4_idct_dc
.LCPI29_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI29_1:
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
.LCPI29_2:
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.text
	.p2align	4, 0x90
	.type	add4x4_idct_dc,@function
add4x4_idct_dc:                         # @add4x4_idct_dc
	.cfi_startproc
# %bb.0:                                # %entry
	shll	$10, %esi
	addl	$32768, %esi                    # imm = 0x8000
	movd	(%rdi), %xmm4                   # xmm4 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm2                # xmm2 = xmm1[0,0,0,0]
	psrad	$16, %xmm2
	paddd	%xmm2, %xmm4
	movdqa	.LCPI29_0(%rip), %xmm3          # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm4, %xmm5
	pxor	%xmm3, %xmm5
	movdqa	.LCPI29_1(%rip), %xmm1          # xmm1 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm1, %xmm6
	pcmpgtd	%xmm5, %xmm6
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm0, %xmm5
	pand	%xmm6, %xmm4
	pandn	%xmm5, %xmm6
	por	%xmm4, %xmm6
	movdqa	.LCPI29_2(%rip), %xmm4          # xmm4 = [255,0,255,0,255,0,255,0]
	pand	%xmm4, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm6
	movd	%xmm6, (%rdi)
	movd	32(%rdi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	paddd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm6
	pxor	%xmm3, %xmm6
	movdqa	%xmm1, %xmm7
	pcmpgtd	%xmm6, %xmm7
	movdqa	%xmm5, %xmm6
	pcmpgtd	%xmm0, %xmm6
	pand	%xmm7, %xmm5
	pandn	%xmm6, %xmm7
	por	%xmm5, %xmm7
	pand	%xmm4, %xmm7
	packuswb	%xmm7, %xmm7
	packuswb	%xmm7, %xmm7
	movd	%xmm7, 32(%rdi)
	movd	64(%rdi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	paddd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm6
	pxor	%xmm3, %xmm6
	movdqa	%xmm1, %xmm7
	pcmpgtd	%xmm6, %xmm7
	movdqa	%xmm5, %xmm6
	pcmpgtd	%xmm0, %xmm6
	pand	%xmm7, %xmm5
	pandn	%xmm6, %xmm7
	por	%xmm5, %xmm7
	pand	%xmm4, %xmm7
	packuswb	%xmm7, %xmm7
	packuswb	%xmm7, %xmm7
	movd	%xmm7, 64(%rdi)
	movd	96(%rdi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	paddd	%xmm2, %xmm5
	pxor	%xmm5, %xmm3
	pcmpgtd	%xmm3, %xmm1
	movdqa	%xmm5, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm1, %xmm5
	pandn	%xmm2, %xmm1
	por	%xmm5, %xmm1
	pand	%xmm4, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, 96(%rdi)
	retq
.Lfunc_end29:
	.size	add4x4_idct_dc, .Lfunc_end29-add4x4_idct_dc
	.cfi_endproc
                                        # -- End function
	.type	x264_dct4_weight2_zigzag,@object # @x264_dct4_weight2_zigzag
	.bss
	.globl	x264_dct4_weight2_zigzag
	.p2align	4, 0x0
x264_dct4_weight2_zigzag:
	.zero	128
	.size	x264_dct4_weight2_zigzag, 128

	.type	x264_dct8_weight2_tab,@object   # @x264_dct8_weight2_tab
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_dct8_weight2_tab:
	.short	256                             # 0x100
	.short	227                             # 0xe3
	.short	410                             # 0x19a
	.short	227                             # 0xe3
	.short	256                             # 0x100
	.short	227                             # 0xe3
	.short	410                             # 0x19a
	.short	227                             # 0xe3
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	410                             # 0x19a
	.short	363                             # 0x16b
	.short	656                             # 0x290
	.short	363                             # 0x16b
	.short	410                             # 0x19a
	.short	363                             # 0x16b
	.short	656                             # 0x290
	.short	363                             # 0x16b
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	256                             # 0x100
	.short	227                             # 0xe3
	.short	410                             # 0x19a
	.short	227                             # 0xe3
	.short	256                             # 0x100
	.short	227                             # 0xe3
	.short	410                             # 0x19a
	.short	227                             # 0xe3
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	410                             # 0x19a
	.short	363                             # 0x16b
	.short	656                             # 0x290
	.short	363                             # 0x16b
	.short	410                             # 0x19a
	.short	363                             # 0x16b
	.short	656                             # 0x290
	.short	363                             # 0x16b
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.size	x264_dct8_weight2_tab, 128

	.type	x264_zigzag_scan8,@object       # @x264_zigzag_scan8
	.p2align	4, 0x0
x264_zigzag_scan8:
	.ascii	"\000\b\001\002\t\020\030\021\n\003\004\013\022\031 (!\032\023\f\005\006\r\024\033\")081*#\034\025\016\007\017\026\035$+29:3,%\036\027\037&-4;<5.'/6=>7?"
	.ascii	"\000\001\002\b\t\003\004\n\020\013\005\006\007\f\021\030\022\r\016\017\023\031 \032\024\025\026\027\033!(\"\034\035\036\037#)0*$%&'+12,-./3894567:;<=>?"
	.size	x264_zigzag_scan8, 128

	.type	x264_dct8_weight2_zigzag,@object # @x264_dct8_weight2_zigzag
	.bss
	.globl	x264_dct8_weight2_zigzag
	.p2align	4, 0x0
x264_dct8_weight2_zigzag:
	.zero	512
	.size	x264_dct8_weight2_zigzag, 512

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
