	.text
	.file	"output.c"
	.globl	write_picture                   # -- Begin function write_picture
	.p2align	4, 0x90
	.type	write_picture,@function
write_picture:                          # @write_picture
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
	subq	$616, %rsp                      # imm = 0x268
	.cfi_def_cfa_offset 672
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %r12
	movl	344(%rsi), %esi
	callq	GetVOIdx@PLT
	cmpl	$0, 52(%rbx)
	je	.LBB0_2
.LBB0_1:                                # %write_out_picture.exit
	addq	$616, %rsp                      # imm = 0x268
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
.LBB0_2:                                # %if.end.i
	.cfi_def_cfa_offset 672
	movq	16(%r14), %rcx
	movl	3216(%rcx), %esi
	testl	%esi, %esi
	sete	%cl
	cmpl	$0, 324(%rbx)
	setne	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	%esi, 80(%rsp)                  # 4-byte Spill
	jne	.LBB0_5
# %bb.3:                                # %if.then4.i
	xorl	%eax, %eax
	cmpl	$9, 332(%rbx)
	setge	%al
	incl	%eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movq	128(%rbx), %rdi
	movq	336(%rbx), %rsi
	movl	64(%rbx), %edx
	movl	68(%rbx), %ecx
	callq	tone_map@PLT
	movq	136(%rbx), %rax
	movq	(%rax), %rdi
	movq	336(%rbx), %rsi
	movl	72(%rbx), %edx
	movl	76(%rbx), %ecx
	callq	tone_map@PLT
	movq	136(%rbx), %rax
	movq	8(%rax), %rdi
	movq	336(%rbx), %rsi
	movl	72(%rbx), %edx
	movl	76(%rbx), %ecx
	callq	tone_map@PLT
	cmpl	$0, 276(%rbx)
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	je	.LBB0_6
.LBB0_4:                                # %if.then15.i
	movslq	268(%rbx), %rdx
	movl	write_out_picture.SubWidthC(,%rdx,4), %edi
	movl	272(%rbx), %ebp
	movl	280(%rbx), %eax
	movl	%eax, %esi
	imull	%edi, %esi
	movl	284(%rbx), %ecx
	imull	%ecx, %edi
	movl	$2, %r8d
	subl	%ebp, %r8d
	imull	write_out_picture.SubHeightC(,%rdx,4), %r8d
	movl	288(%rbx), %r14d
	movl	%r8d, %edx
	imull	%r14d, %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movl	292(%rbx), %r15d
	imull	%r15d, %r8d
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	jmp	.LBB0_7
.LBB0_5:
	movl	849036(%r14), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	cmpl	$0, 276(%rbx)
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	jne	.LBB0_4
.LBB0_6:                                # %if.end13.if.end33_crit_edge.i
	movl	272(%rbx), %ebp
	movl	280(%rbx), %eax
	movl	284(%rbx), %ecx
	movl	288(%rbx), %r14d
	movl	292(%rbx), %r15d
	movq	$0, 32(%rsp)                    # 8-byte Folded Spill
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%edi, %edi
	xorl	%esi, %esi
.LBB0_7:                                # %if.end33.i
	addl	%eax, %ecx
	movl	72(%rbx), %eax
	subl	%ecx, %eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	movl	76(%rbx), %r12d
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movl	64(%rbx), %ecx
	subl	%esi, %ecx
	subl	%edi, %ecx
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	movl	68(%rbx), %r13d
	callq	testEndian@PLT
	testl	%eax, %eax
	movl	$img2buf_normal, %eax
	movl	$img2buf_endian, %ecx
	cmoveq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 856808(%rax)
	movq	856816(%rax), %rdi
	xorl	%esi, %esi
	callq	GetOneAvailDecPicFromList@PLT
	movq	%rax, %rsi
	movq	24(%rax), %rax
	testq	%rax, %rax
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	jne	.LBB0_9
# %bb.8:                                # %if.then66.i
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %eax
	movl	%r13d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 84(%rsp)                  # 4-byte Spill
	movl	12(%rsp), %r13d                 # 4-byte Reload
	movl	%r15d, %eax
	movl	%ecx, %r15d
	imull	60(%rsp), %r15d                 # 4-byte Folded Reload
	addl	$-2, %ebp
	addl	%eax, %r14d
	imull	%ebp, %r14d
	addl	%r14d, %r12d
	movl	72(%rsp), %r14d                 # 4-byte Reload
	imull	%r14d, %r12d
	movl	%r12d, %ebp
	addl	%r12d, %ebp
	leal	(%r15,%r12,2), %eax
	imull	%r13d, %eax
	imull	%r13d, %r15d
	movslq	%eax, %rdi
	callq	malloc@PLT
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%rax, 24(%rsi)
	movslq	%r15d, %rcx
	addq	%rax, %rcx
	movq	%rcx, 32(%rsi)
	imull	%r13d, %ebp
	sarl	%ebp
	movslq	%ebp, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 40(%rsi)
	movl	268(%rbx), %ecx
	movl	%ecx, 12(%rsi)
	movl	$0, 16(%rsi)
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movl	849036(%rcx), %ecx
	movl	%ecx, 20(%rsi)
	movl	60(%rsp), %edx                  # 4-byte Reload
	movl	%edx, 48(%rsi)
	movl	84(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, 52(%rsi)
	movl	%edx, %ecx
	imull	%r13d, %ecx
	movl	%ecx, 56(%rsi)
	movl	%r14d, %ecx
	imull	%r13d, %ecx
	movl	%ecx, 60(%rsi)
.LBB0_9:                                # %if.end80.i
	movl	$1, (%rsi)
	movl	344(%rbx), %ecx
	testl	%ecx, %ecx
	movl	$-1, %edx
	cmovnsl	%ecx, %edx
	movl	%edx, 4(%rsi)
	movl	16(%rbx), %ecx
	movl	%ecx, 8(%rsi)
	testq	%rax, %rax
	jne	.LBB0_11
# %bb.10:                               # %if.then89.i
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
	movq	24(%rsp), %rsi                  # 8-byte Reload
.LBB0_11:                               # %if.end90.i
	cmpl	$0, 344(%rbx)
	movq	48(%rsp), %r15                  # 8-byte Reload
	movq	88(%rsp), %r14                  # 8-byte Reload
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	64(%rsp), %r12                  # 8-byte Reload
	js	.LBB0_23
# %bb.12:                               # %land.lhs.true94.i
	cmpl	$1, 3976(%r12)
	jne	.LBB0_23
# %bb.13:                               # %if.then97.i
	movslq	8(%rsp), %rbp                   # 4-byte Folded Reload
	movl	851892(%r15,%rbp,4), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	cmpl	$-1, %eax
	jne	.LBB0_32
# %bb.14:                               # %land.lhs.true102.i
	movzbl	255(%r12), %eax
	movl	%eax, %ecx
	addl	$-34, %ecx
	jne	.LBB0_17
# %bb.15:                               # %sub_1.i
	movzbl	256(%r12), %ecx
	addl	$-34, %ecx
	jne	.LBB0_17
# %bb.16:                               # %sub_2.i
	movzbl	257(%r12), %ecx
.LBB0_17:                               # %land.lhs.true102.tail.i
	movl	$-1, 8(%rsp)                    # 4-byte Folded Spill
	testb	%al, %al
	je	.LBB0_32
# %bb.18:                               # %land.lhs.true102.tail.i
	testl	%ecx, %ecx
	je	.LBB0_32
# %bb.19:                               # %if.then112.i
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	leaq	255(%r12), %rsi
	leaq	96(%rsp), %r13
	movq	%r13, %rdi
	callq	strcpy@PLT
	movq	%r13, %rdi
	movl	$46, %esi
	callq	strrchr@PLT
	testq	%rax, %rax
	je	.LBB0_21
# %bb.20:                               # %if.then120.i
	movb	$0, (%rax)
.LBB0_21:                               # %if.end121.i
	cmpl	$7107950, 96(%rsp)              # imm = 0x6C756E
	jne	.LBB0_67
# %bb.22:                               # %if.else142.i
	movl	$-1, 851892(%r15,%rbp,4)
	jmp	.LBB0_68
.LBB0_23:                               # %if.else151.i
	movl	851892(%r15), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	cmpl	$-1, %eax
	jne	.LBB0_32
# %bb.24:                               # %land.lhs.true156.i
	movzbl	255(%r12), %eax
	cmpb	$34, %al
	jne	.LBB0_28
# %bb.25:                               # %sub_1875.i
	cmpb	$34, 256(%r12)
	jne	.LBB0_28
# %bb.26:                               # %sub_2876.i
	cmpb	$0, 257(%r12)
	sete	%cl
	movl	$-1, 8(%rsp)                    # 4-byte Folded Spill
	testb	%al, %al
	jne	.LBB0_29
	jmp	.LBB0_32
.LBB0_28:
	xorl	%ecx, %ecx
	movl	$-1, 8(%rsp)                    # 4-byte Folded Spill
	testb	%al, %al
	je	.LBB0_32
.LBB0_29:                               # %land.lhs.true156.tail.i
	testb	%cl, %cl
	jne	.LBB0_32
# %bb.30:                               # %land.lhs.true174.i
	movq	%r10, %rbp
	leaq	255(%r12), %r13
	movq	%r13, %rdi
	movl	$577, %esi                      # imm = 0x241
	movl	$384, %edx                      # imm = 0x180
	xorl	%eax, %eax
	callq	open@PLT
	movl	%eax, 851892(%r15)
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	cmpl	$-1, %eax
	je	.LBB0_69
# %bb.31:
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %r10
.LBB0_32:                               # %if.end191.i
	cmpl	$0, 80(%rsp)                    # 4-byte Folded Reload
	jne	.LBB0_42
.LBB0_33:                               # %if.then193.i
	movl	64(%rbx), %eax
	movq	%r15, %r14
	movl	12(%rsp), %r15d                 # 4-byte Reload
	imull	%r15d, %eax
	imull	68(%rbx), %eax
	movslq	%eax, %rdi
	movq	%rsi, %r12
	callq	malloc@PLT
	movq	%rax, %rsi
	movq	%r14, %r10
	movl	280(%rbx), %r9d
	movl	284(%rbx), %r14d
	movl	$2, %r13d
	subl	272(%rbx), %r13d
	movl	288(%rbx), %ebp
	imull	%r13d, %ebp
	imull	292(%rbx), %r13d
	movq	136(%rbx), %rax
	movq	8(%rax), %rdi
	movl	72(%rbx), %edx
	movl	76(%rbx), %ecx
	movl	56(%r12), %eax
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movl	%r15d, %r8d
	movl	%r9d, %r15d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*856808(%r10)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	js	.LBB0_36
# %bb.34:                               # %if.then217.i
	movl	72(%rbx), %eax
	movl	76(%rbx), %ecx
	addl	%ebp, %r13d
	subl	%r13d, %ecx
	addl	%r15d, %r14d
	subl	%r14d, %eax
	movl	12(%rsp), %ebp                  # 4-byte Reload
	imull	%ebp, %eax
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movl	8(%rsp), %edi                   # 4-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	write@PLT
	movl	72(%rbx), %ecx
	movl	76(%rbx), %edx
	subl	%r13d, %edx
	subl	%r14d, %ecx
	imull	%ebp, %ecx
	imull	%edx, %ecx
	cmpl	%eax, %ecx
	je	.LBB0_36
# %bb.35:                               # %if.then239.i
	movl	$.L.str.6, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_36:                               # %if.end241.i
	cmpl	$0, 276(%rbx)
	je	.LBB0_38
# %bb.37:                               # %if.then244.i
	movslq	268(%rbx), %rax
	movl	write_out_picture.SubWidthC(,%rax,4), %ecx
	movl	280(%rbx), %r14d
	imull	%ecx, %r14d
	imull	284(%rbx), %ecx
	movl	$2, %edx
	subl	272(%rbx), %edx
	imull	write_out_picture.SubHeightC(,%rax,4), %edx
	movl	288(%rbx), %r10d
	imull	%edx, %r10d
	imull	292(%rbx), %edx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_39
.LBB0_38:
	movq	$0, 32(%rsp)                    # 8-byte Folded Spill
	xorl	%r10d, %r10d
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
.LBB0_39:                               # %if.end272.i
	movq	48(%rsp), %r15                  # 8-byte Reload
	movq	64(%rsp), %r12                  # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	testq	%rdi, %rdi
	je	.LBB0_41
# %bb.40:                               # %if.then274.i
	movq	%r10, %r13
	callq	free@PLT
	movq	%r13, %r10
.LBB0_41:                               # %if.end276.i
	movq	24(%rsp), %rsi                  # 8-byte Reload
.LBB0_42:                               # %if.end276.i
	movq	%r12, %rbp
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movl	60(%rsp), %ecx                  # 4-byte Reload
	imull	%r8d, %ecx
	xorl	%eax, %eax
	cmpl	$1, (%rsi)
	cmovnel	%ecx, %eax
	movslq	%eax, %r13
	addq	24(%rsi), %r13
	movl	56(%rsi), %eax
	movq	128(%rbx), %rdi
	movl	64(%rbx), %edx
	movl	68(%rbx), %ecx
	movq	%r13, %rsi
	movl	%r14d, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	%r10, %r12
	callq	*856808(%r15)
	movq	%r12, %r8
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	js	.LBB0_45
# %bb.43:                               # %if.then296.i
	movl	64(%rbx), %eax
	movl	68(%rbx), %ecx
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	leal	(%rsi,%rdx), %ebp
	subl	%ebp, %ecx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%r14, %r15
	addl	%edx, %r14d
	subl	%r14d, %eax
	movl	12(%rsp), %r12d                 # 4-byte Reload
	imull	%r12d, %eax
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movl	8(%rsp), %edi                   # 4-byte Reload
	movq	%r13, %rsi
	callq	write@PLT
	movl	64(%rbx), %ecx
	movl	68(%rbx), %edx
	subl	%ebp, %edx
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	64(%rsp), %rbp                  # 8-byte Reload
	subl	%r14d, %ecx
	movq	%r15, %r14
	movq	48(%rsp), %r15                  # 8-byte Reload
	imull	%r12d, %ecx
	imull	%edx, %ecx
	cmpl	%eax, %ecx
	je	.LBB0_45
# %bb.44:                               # %if.then318.i
	movl	$.L.str.7, %edi
	movl	$500, %esi                      # imm = 0x1F4
	movq	%r8, %r12
	callq	error@PLT
	movq	%r12, %r8
.LBB0_45:                               # %if.end320.i
	cmpl	$0, 268(%rbx)
	je	.LBB0_53
# %bb.46:                               # %if.then324.i
	movl	280(%rbx), %r14d
	movl	284(%rbx), %r12d
	movl	$2, %ebp
	subl	272(%rbx), %ebp
	movl	288(%rbx), %r11d
	imull	%ebp, %r11d
	imull	292(%rbx), %ebp
	movl	72(%rsp), %edx                  # 4-byte Reload
	movl	12(%rsp), %r8d                  # 4-byte Reload
	imull	%r8d, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmpl	$1, (%rcx)
	movl	%edx, 72(%rsp)                  # 4-byte Spill
	cmovnel	%edx, %eax
	movl	60(%rcx), %r10d
	movslq	%eax, %r13
	addq	32(%rcx), %r13
	movq	136(%rbx), %rax
	movq	(%rax), %rdi
	movl	72(%rbx), %edx
	movl	76(%rbx), %ecx
	movq	%r13, %rsi
	movl	%r14d, %r9d
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	%r11, 32(%rsp)                  # 8-byte Spill
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	*856808(%r15)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	js	.LBB0_49
# %bb.47:                               # %if.then355.i
	movl	72(%rbx), %eax
	movl	76(%rbx), %ecx
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movl	12(%rsp), %r14d                 # 4-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	leal	(%rdx,%rbp), %r15d
	subl	%r15d, %ecx
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	leal	(%rdx,%rsi), %r12d
	subl	%r12d, %eax
	imull	%r14d, %eax
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movl	8(%rsp), %edi                   # 4-byte Reload
	movq	%r13, %rsi
	callq	write@PLT
	movl	72(%rbx), %ecx
	movl	76(%rbx), %edx
	subl	%r15d, %edx
	subl	%r12d, %ecx
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	48(%rsp), %r15                  # 8-byte Reload
	imull	%r14d, %ecx
	movq	32(%rsp), %r14                  # 8-byte Reload
	imull	%edx, %ecx
	cmpl	%eax, %ecx
	je	.LBB0_49
# %bb.48:                               # %if.then377.i
	movl	$.L.str.7, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_49:                               # %if.end379.i
	cmpl	$0, 80(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_1
# %bb.50:                               # %if.then381.i
	xorl	%eax, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmpl	$1, (%rcx)
	movl	72(%rsp), %edx                  # 4-byte Reload
	cmovel	%eax, %edx
	movl	60(%rcx), %eax
	movslq	%edx, %r13
	addq	40(%rcx), %r13
	movq	136(%rbx), %rcx
	movq	8(%rcx), %rdi
	movl	72(%rbx), %edx
	movl	76(%rbx), %ecx
	movq	%r13, %rsi
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movl	%r14d, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	*856808(%r15)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	js	.LBB0_1
# %bb.51:                               # %if.then402.i
	movl	72(%rbx), %eax
	movl	76(%rbx), %ecx
	addl	16(%rsp), %ebp                  # 4-byte Folded Reload
	subl	%ebp, %ecx
	addl	%r14d, %r12d
	subl	%r12d, %eax
	movl	12(%rsp), %r14d                 # 4-byte Reload
	imull	%r14d, %eax
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movl	8(%rsp), %edi                   # 4-byte Reload
	movq	%r13, %rsi
	callq	write@PLT
	movl	72(%rbx), %ecx
	movl	76(%rbx), %edx
	subl	%ebp, %edx
	subl	%r12d, %ecx
	imull	%r14d, %ecx
	imull	%edx, %ecx
	cmpl	%eax, %ecx
	je	.LBB0_1
# %bb.52:                               # %if.then424.i
	movl	$.L.str.7, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	jmp	.LBB0_1
.LBB0_53:                               # %if.else428.i
	cmpl	$0, 780(%rbp)
	je	.LBB0_1
# %bb.54:                               # %if.then430.i
	movq	%r14, %r12
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movzbl	849040(%r15), %ecx
	decb	%cl
	movl	$1, %ebp
	shll	%cl, %ebp
	leaq	136(%rbx), %rdi
	movl	64(%rbx), %eax
	movl	68(%rbx), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	movl	$1, %esi
	callq	get_mem3Dpel@PLT
	movl	64(%rbx), %r14d
	movl	68(%rbx), %ecx
	cmpl	$2, %ecx
	jl	.LBB0_61
# %bb.55:                               # %for.cond443.preheader.i.preheader
	xorl	%eax, %eax
	jmp	.LBB0_57
	.p2align	4, 0x90
.LBB0_56:                               # %for.inc455.i
                                        #   in Loop: Header=BB0_57 Depth=1
	incq	%rax
	movl	%ecx, %r13d
	shrl	$31, %r13d
	addl	%ecx, %r13d
	sarl	%r13d
	movslq	%r13d, %rdx
	cmpq	%rdx, %rax
	jge	.LBB0_62
.LBB0_57:                               # %for.cond443.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
	cmpl	$2, %r14d
	jl	.LBB0_56
# %bb.58:                               # %for.body448.i.preheader
                                        #   in Loop: Header=BB0_57 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_59:                               # %for.body448.i
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	136(%rbx), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	movw	%bp, (%rdx,%rcx,2)
	incq	%rcx
	movl	64(%rbx), %r14d
	movl	%r14d, %edx
	shrl	$31, %edx
	addl	%r14d, %edx
	sarl	%edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rcx
	jl	.LBB0_59
# %bb.60:                               # %for.inc455.loopexit.i
                                        #   in Loop: Header=BB0_57 Depth=1
	movl	68(%rbx), %ecx
	jmp	.LBB0_56
.LBB0_61:
	movl	%ecx, %r13d
	shrl	$31, %r13d
	addl	%ecx, %r13d
	sarl	%r13d
.LBB0_62:                               # %for.end457.i
	movl	%r14d, %eax
	movl	12(%rsp), %ebp                  # 4-byte Reload
	imull	%ebp, %eax
	imull	%ecx, %eax
	movslq	%eax, %rdi
	callq	malloc@PLT
	movq	%rax, %rsi
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	136(%rbx), %rax
	movq	(%rax), %rdi
	movl	%r14d, %edx
	shrl	$31, %edx
	addl	%r14d, %edx
	sarl	%edx
	movq	%r12, %r15
	movl	%r15d, %r9d
	shrl	$31, %r9d
	addl	%r15d, %r9d
	sarl	%r9d
	movq	40(%rsp), %r12                  # 8-byte Reload
	movl	%r12d, %eax
	shrl	$31, %eax
	addl	%r12d, %eax
	sarl	%eax
	movq	16(%rsp), %r8                   # 8-byte Reload
	movl	%r8d, %r10d
	shrl	$31, %r10d
	addl	%r8d, %r10d
	sarl	%r10d
	movq	32(%rsp), %r12                  # 8-byte Reload
	movl	%r12d, %r11d
	shrl	$31, %r11d
	addl	%r12d, %r11d
	sarl	%r11d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	56(%rcx), %ecx
	movl	%ecx, %r14d
	shrl	$31, %r14d
	addl	%ecx, %r14d
	sarl	%r14d
	movl	%r13d, %ecx
	movq	%r8, %r13
	movl	%ebp, %r8d
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movq	80(%rsp), %rax                  # 8-byte Reload
	callq	*856808(%rax)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	64(%rbx), %eax
	movl	68(%rbx), %ecx
	addl	%r12d, %r13d
	movq	64(%rsp), %r12                  # 8-byte Reload
	subl	%r13d, %ecx
	imull	%ebp, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	addl	40(%rsp), %r15d                 # 4-byte Folded Reload
	subl	%r15d, %eax
	imull	%edx, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movslq	%ecx, %rdx
	movl	8(%rsp), %edi                   # 4-byte Reload
	movq	%r12, %rsi
	callq	write@PLT
	movl	64(%rbx), %ecx
	movl	68(%rbx), %edx
	subl	%r13d, %edx
	imull	%ebp, %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	subl	%r15d, %ecx
	imull	%esi, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	cmpl	%eax, %edx
	je	.LBB0_64
# %bb.63:                               # %if.then502.i
	movl	$.L.str.7, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movl	64(%rbx), %ecx
	movl	68(%rbx), %eax
	subl	%r13d, %eax
	imull	12(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	subl	%r15d, %ecx
	imull	%edx, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
.LBB0_64:                               # %if.end503.i
	movslq	%eax, %rdx
	movl	8(%rsp), %edi                   # 4-byte Reload
	movq	%r12, %rsi
	callq	write@PLT
	movl	64(%rbx), %ecx
	movl	68(%rbx), %edx
	subl	%r13d, %edx
	imull	12(%rsp), %edx                  # 4-byte Folded Reload
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	subl	%r15d, %ecx
	imull	%esi, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	cmpl	%eax, %edx
	je	.LBB0_66
# %bb.65:                               # %if.then529.i
	movl	$.L.str.7, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_66:                               # %if.end530.i
	movq	%r12, %rdi
	callq	free@PLT
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx), %rdi
	callq	free_mem3Dpel@PLT
	movq	$0, (%rbx)
	jmp	.LBB0_1
.LBB0_67:                               # %if.then125.i
	movl	344(%rbx), %ecx
	leaq	352(%rsp), %r13
	leaq	96(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	sprintf@PLT
	movq	%r13, %rdi
	movl	$577, %esi                      # imm = 0x241
	movl	$384, %edx                      # imm = 0x180
	xorl	%eax, %eax
	callq	open@PLT
	movl	%eax, 851892(%r15,%rbp,4)
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	cmpl	$-1, %eax
	je	.LBB0_71
.LBB0_68:
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	16(%rsp), %r10                  # 8-byte Reload
	cmpl	$0, 80(%rsp)                    # 4-byte Folded Reload
	jne	.LBB0_42
	jmp	.LBB0_33
.LBB0_69:                               # %if.then182.i
	movq	errortext@GOTPCREL(%rip), %rbx
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%r13, %rcx
.LBB0_70:                               # %if.then137.i
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.5, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$500, %edi                      # imm = 0x1F4
	callq	exit@PLT
.LBB0_71:                               # %if.then137.i
	movq	errortext@GOTPCREL(%rip), %rbx
	leaq	352(%rsp), %rcx
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	jmp	.LBB0_70
.Lfunc_end0:
	.size	write_picture, .Lfunc_end0-write_picture
	.cfi_endproc
                                        # -- End function
	.globl	init_out_buffer                 # -- Begin function init_out_buffer
	.p2align	4, 0x90
	.type	init_out_buffer,@function
init_out_buffer:                        # @init_out_buffer
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	alloc_frame_store@PLT
	movq	%rax, 856624(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	init_out_buffer, .Lfunc_end1-init_out_buffer
	.cfi_endproc
                                        # -- End function
	.globl	uninit_out_buffer               # -- Begin function uninit_out_buffer
	.p2align	4, 0x90
	.type	uninit_out_buffer,@function
uninit_out_buffer:                      # @uninit_out_buffer
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	856624(%rdi), %rdi
	callq	free_frame_store@PLT
	movq	$0, 856624(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	uninit_out_buffer, .Lfunc_end2-uninit_out_buffer
	.cfi_endproc
                                        # -- End function
	.globl	clear_picture                   # -- Begin function clear_picture
	.p2align	4, 0x90
	.type	clear_picture,@function
clear_picture:                          # @clear_picture
	.cfi_startproc
# %bb.0:                                # %entry
	movl	68(%rsi), %edx
	testl	%edx, %edx
	jle	.LBB3_8
# %bb.1:                                # %for.cond1.preheader.lr.ph
	movl	64(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_8
# %bb.2:                                # %for.cond1.preheader.preheader
	xorl	%eax, %eax
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_7:                                # %for.inc7
                                        #   in Loop: Header=BB3_3 Depth=1
	incq	%rax
	movslq	%edx, %r8
	cmpq	%r8, %rax
	jge	.LBB3_8
.LBB3_3:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	testl	%ecx, %ecx
	jle	.LBB3_7
# %bb.4:                                # %for.body3.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_5:                                # %for.body3
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	849060(%rdi), %ecx
	movq	128(%rsi), %r8
	movq	(%r8,%rax,8), %r8
	movw	%cx, (%r8,%rdx,2)
	incq	%rdx
	movslq	64(%rsi), %rcx
	cmpq	%rcx, %rdx
	jl	.LBB3_5
# %bb.6:                                # %for.inc7.loopexit
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	68(%rsi), %edx
	jmp	.LBB3_7
.LBB3_8:                                # %for.cond10.preheader
	movl	76(%rsi), %eax
	testl	%eax, %eax
	jle	.LBB3_24
# %bb.9:                                # %for.cond14.preheader.lr.ph
	movl	72(%rsi), %edx
	testl	%edx, %edx
	jle	.LBB3_17
# %bb.10:                               # %for.cond14.preheader.preheader
	xorl	%ecx, %ecx
	jmp	.LBB3_11
	.p2align	4, 0x90
.LBB3_15:                               # %for.inc29
                                        #   in Loop: Header=BB3_11 Depth=1
	incq	%rcx
	movslq	%eax, %r8
	cmpq	%r8, %rcx
	jge	.LBB3_16
.LBB3_11:                               # %for.cond14.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_13 Depth 2
	testl	%edx, %edx
	jle	.LBB3_15
# %bb.12:                               # %for.body17.preheader
                                        #   in Loop: Header=BB3_11 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_13:                               # %for.body17
                                        #   Parent Loop BB3_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	849064(%rdi), %edx
	movq	136(%rsi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rcx,8), %r8
	movw	%dx, (%r8,%rax,2)
	incq	%rax
	movslq	72(%rsi), %rdx
	cmpq	%rdx, %rax
	jl	.LBB3_13
# %bb.14:                               # %for.inc29.loopexit
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	76(%rsi), %eax
	jmp	.LBB3_15
.LBB3_16:                               # %for.cond32.preheader
	testl	%eax, %eax
	jle	.LBB3_24
.LBB3_17:                               # %for.cond37.preheader.lr.ph
	movl	72(%rsi), %edx
	testl	%edx, %edx
	jle	.LBB3_24
# %bb.18:                               # %for.cond37.preheader.preheader
	xorl	%ecx, %ecx
	jmp	.LBB3_19
	.p2align	4, 0x90
.LBB3_23:                               # %for.inc54
                                        #   in Loop: Header=BB3_19 Depth=1
	incq	%rcx
	movslq	%eax, %r8
	cmpq	%r8, %rcx
	jge	.LBB3_24
.LBB3_19:                               # %for.cond37.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_21 Depth 2
	testl	%edx, %edx
	jle	.LBB3_23
# %bb.20:                               # %for.body41.preheader
                                        #   in Loop: Header=BB3_19 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_21:                               # %for.body41
                                        #   Parent Loop BB3_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	849068(%rdi), %edx
	movq	136(%rsi), %r8
	movq	8(%r8), %r8
	movq	(%r8,%rcx,8), %r8
	movw	%dx, (%r8,%rax,2)
	incq	%rax
	movslq	72(%rsi), %rdx
	cmpq	%rdx, %rax
	jl	.LBB3_21
# %bb.22:                               # %for.inc54.loopexit
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	76(%rsi), %eax
	jmp	.LBB3_23
.LBB3_24:                               # %for.end56
	retq
.Lfunc_end3:
	.size	clear_picture, .Lfunc_end3-clear_picture
	.cfi_endproc
                                        # -- End function
	.globl	write_unpaired_field            # -- Begin function write_unpaired_field
	.p2align	4, 0x90
	.type	write_unpaired_field,@function
write_unpaired_field:                   # @write_unpaired_field
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	(%rsi), %eax
	testb	$1, %al
	je	.LBB4_2
# %bb.1:                                # %if.then
	movq	56(%rbx), %r15
	movl	64(%r15), %edx
	movl	68(%r15), %ecx
	addl	%ecx, %ecx
	movl	72(%r15), %r8d
	movl	76(%r15), %r9d
	addl	%r9d, %r9d
	movq	%r14, %rdi
	movl	$2, %esi
	callq	alloc_storable_picture@PLT
	movq	%rax, 64(%rbx)
	movl	268(%r15), %ecx
	movl	%ecx, 268(%rax)
	movq	64(%rbx), %rsi
	movq	%r14, %rdi
	callq	clear_picture
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	dpb_combine_field_yuv@PLT
	movl	72(%rbx), %eax
	movq	48(%rbx), %rcx
	movl	%eax, 344(%rcx)
	movq	48(%rbx), %rsi
	movq	%r14, %rdi
	callq	write_picture
	movl	(%rbx), %eax
.LBB4_2:                                # %if.end
	testb	$2, %al
	je	.LBB4_6
# %bb.3:                                # %if.then10
	movq	64(%rbx), %r15
	movl	64(%r15), %edx
	movl	68(%r15), %ecx
	addl	%ecx, %ecx
	movl	72(%r15), %r8d
	movl	76(%r15), %r9d
	addl	%r9d, %r9d
	movq	%r14, %rdi
	movl	$1, %esi
	callq	alloc_storable_picture@PLT
	movq	%rax, 56(%rbx)
	movl	268(%r15), %ecx
	movl	%ecx, 268(%rax)
	movq	56(%rbx), %rsi
	movq	%r14, %rdi
	callq	clear_picture
	movq	56(%rbx), %rax
	movq	64(%rbx), %rcx
	movl	276(%rcx), %ecx
	movl	%ecx, 276(%rax)
	movq	56(%rbx), %rax
	cmpl	$0, 276(%rax)
	je	.LBB4_5
# %bb.4:                                # %if.then30
	movq	64(%rbx), %rcx
	movl	288(%rcx), %ecx
	movl	%ecx, 288(%rax)
	movq	56(%rbx), %rax
	movq	64(%rbx), %rcx
	movl	292(%rcx), %ecx
	movl	%ecx, 292(%rax)
	movq	56(%rbx), %rax
	movq	64(%rbx), %rcx
	movl	280(%rcx), %ecx
	movl	%ecx, 280(%rax)
	movq	56(%rbx), %rax
	movq	64(%rbx), %rcx
	movl	284(%rcx), %ecx
	movl	%ecx, 284(%rax)
.LBB4_5:                                # %if.end43
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	dpb_combine_field_yuv@PLT
	movl	72(%rbx), %eax
	movq	48(%rbx), %rcx
	movl	%eax, 344(%rcx)
	movq	48(%rbx), %rsi
	movq	%r14, %rdi
	callq	write_picture
.LBB4_6:                                # %if.end48
	movl	$3, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	write_unpaired_field, .Lfunc_end4-write_unpaired_field
	.cfi_endproc
                                        # -- End function
	.globl	flush_direct_output             # -- Begin function flush_direct_output
	.p2align	4, 0x90
	.type	flush_direct_output,@function
flush_direct_output:                    # @flush_direct_output
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	856624(%rdi), %rsi
	callq	write_unpaired_field
	movq	856624(%rbx), %rax
	movq	48(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 48(%rax)
	movq	856624(%rbx), %rax
	movq	56(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 56(%rax)
	movq	856624(%rbx), %rax
	movq	64(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 64(%rax)
	movq	856624(%rbx), %rax
	movl	$0, (%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	flush_direct_output, .Lfunc_end5-flush_direct_output
	.cfi_endproc
                                        # -- End function
	.globl	write_stored_frame              # -- Begin function write_stored_frame
	.p2align	4, 0x90
	.type	write_stored_frame,@function
write_stored_frame:                     # @write_stored_frame
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
	movq	856624(%rdi), %rsi
	callq	write_unpaired_field
	movq	856624(%r14), %rax
	movq	48(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%r14), %rax
	movq	$0, 48(%rax)
	movq	856624(%r14), %rax
	movq	56(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%r14), %rax
	movq	$0, 56(%rax)
	movq	856624(%r14), %rax
	movq	64(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%r14), %rax
	movq	$0, 64(%rax)
	movq	856624(%r14), %rax
	movl	$0, (%rax)
	cmpl	$2, (%rbx)
	jg	.LBB6_2
# %bb.1:                                # %if.then
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	write_unpaired_field
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	cmpl	$0, 24(%rbx)
	je	.LBB6_4
# %bb.3:                                # %if.then1
	movl	$1, 856644(%r14)
.LBB6_4:                                # %if.end
	cmpl	$0, 848948(%r14)
	je	.LBB6_6
# %bb.5:                                # %lor.lhs.false
	cmpl	$0, 856644(%r14)
	je	.LBB6_7
.LBB6_6:                                # %if.then5
	movq	48(%rbx), %rsi
	movq	%r14, %rdi
	callq	write_picture
.LBB6_7:                                # %if.end7
	movl	$1, 36(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	write_stored_frame, .Lfunc_end6-write_stored_frame
	.cfi_endproc
                                        # -- End function
	.globl	direct_output                   # -- Begin function direct_output
	.p2align	4, 0x90
	.type	direct_output,@function
direct_output:                          # @direct_output
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rdi), %r15
	movl	(%rsi), %eax
	cmpl	$1, %eax
	je	.LBB7_6
# %bb.1:                                # %entry
	testl	%eax, %eax
	jne	.LBB7_9
# %bb.2:                                # %if.then
	movq	856624(%rbx), %rsi
	movq	%rbx, %rdi
	callq	write_unpaired_field
	movq	856624(%rbx), %rax
	movq	48(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 48(%rax)
	movq	856624(%rbx), %rax
	movq	56(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 56(%rax)
	movq	856624(%rbx), %rax
	movq	64(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 64(%rax)
	movq	856624(%rbx), %rax
	movl	$0, (%rax)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	write_picture
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	calculate_frame_no@PLT
	cmpl	$-1, 855988(%rbx)
	je	.LBB7_5
# %bb.3:                                # %land.lhs.true
	cmpl	$0, 784(%r15)
	jne	.LBB7_5
# %bb.4:                                # %if.then3
	leaq	855988(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	find_snr@PLT
.LBB7_5:                                # %if.end
	movq	%r14, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free_storable_picture@PLT       # TAILCALL
.LBB7_6:                                # %if.then8
	.cfi_def_cfa_offset 32
	movq	856624(%rbx), %rsi
	testb	$1, (%rsi)
	je	.LBB7_8
# %bb.7:                                # %if.then10
	movq	%rbx, %rdi
	callq	write_unpaired_field
	movq	856624(%rbx), %rax
	movq	48(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 48(%rax)
	movq	856624(%rbx), %rax
	movq	56(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 56(%rax)
	movq	856624(%rbx), %rax
	movq	64(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 64(%rax)
	movq	856624(%rbx), %rax
	movl	$0, (%rax)
	movq	856624(%rbx), %rsi
.LBB7_8:                                # %if.end12
	movq	%r14, 56(%rsi)
	movq	856624(%rbx), %rax
	orl	$1, (%rax)
	movl	(%r14), %eax
.LBB7_9:                                # %if.end16
	cmpl	$2, %eax
	je	.LBB7_10
# %bb.13:                               # %if.end31
	movq	856624(%rbx), %rsi
	cmpl	$3, (%rsi)
	je	.LBB7_14
.LBB7_18:                               # %cleanup
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB7_10:                               # %if.then19
	.cfi_def_cfa_offset 32
	movq	856624(%rbx), %rsi
	testb	$2, (%rsi)
	je	.LBB7_12
# %bb.11:                               # %if.then24
	movq	%rbx, %rdi
	callq	write_unpaired_field
	movq	856624(%rbx), %rax
	movq	48(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 48(%rax)
	movq	856624(%rbx), %rax
	movq	56(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 56(%rax)
	movq	856624(%rbx), %rax
	movq	64(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 64(%rax)
	movq	856624(%rbx), %rax
	movl	$0, (%rax)
	movq	856624(%rbx), %rsi
.LBB7_12:                               # %if.end26
	movq	%r14, 64(%rsi)
	movq	856624(%rbx), %rax
	orl	$2, (%rax)
	movq	856624(%rbx), %rsi
	cmpl	$3, (%rsi)
	jne	.LBB7_18
.LBB7_14:                               # %if.then35
	movq	%rbx, %rdi
	callq	dpb_combine_field_yuv@PLT
	movq	856624(%rbx), %rax
	movl	72(%rax), %ecx
	movq	48(%rax), %rax
	movl	%ecx, 344(%rax)
	movq	856624(%rbx), %rax
	movq	48(%rax), %rsi
	movq	%rbx, %rdi
	callq	write_picture
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	calculate_frame_no@PLT
	cmpl	$-1, 855988(%rbx)
	je	.LBB7_17
# %bb.15:                               # %land.lhs.true45
	cmpl	$0, 784(%r15)
	jne	.LBB7_17
# %bb.16:                               # %if.then48
	leaq	855988(%rbx), %rdx
	movq	856624(%rbx), %rax
	movq	48(%rax), %rsi
	movq	%rbx, %rdi
	callq	find_snr@PLT
.LBB7_17:                               # %if.end52
	movq	856624(%rbx), %rax
	movq	48(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 48(%rax)
	movq	856624(%rbx), %rax
	movq	56(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 56(%rax)
	movq	856624(%rbx), %rax
	movq	64(%rax), %rdi
	callq	free_storable_picture@PLT
	movq	856624(%rbx), %rax
	movq	$0, 64(%rax)
	movq	856624(%rbx), %rax
	movl	$0, (%rax)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	direct_output, .Lfunc_end7-direct_output
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function img2buf_endian
	.type	img2buf_endian,@function
img2buf_endian:                         # @img2buf_endian
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
	movl	56(%rsp), %eax
	movl	48(%rsp), %ebx
	movl	40(%rsp), %r10d
	movl	32(%rsp), %r11d
	cmpl	$1, %r8d
	je	.LBB8_15
# %bb.1:                                # %entry
	cmpl	$2, %r8d
	je	.LBB8_9
# %bb.2:                                # %entry
	cmpl	$4, %r8d
	jne	.LBB8_22
# %bb.3:                                # %for.cond44.preheader
	subl	%ebx, %ecx
	cmpl	%r10d, %ecx
	jle	.LBB8_21
# %bb.4:                                # %for.cond49.preheader.lr.ph
	subl	%r11d, %edx
	cmpl	%r9d, %edx
	jle	.LBB8_21
# %bb.5:                                # %for.cond49.preheader.us.preheader
	movslq	%r9d, %r8
	movslq	%edx, %rdx
	movslq	%r10d, %r9
	movslq	%ecx, %rcx
	shll	$2, %eax
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB8_6:                                # %for.cond49.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
	movl	%r10d, %r11d
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB8_7:                                # %for.body53.us
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%r9,8), %r14
	movzwl	(%r14,%rbx,2), %ebp
	bswapl	%ebp
	movslq	%r11d, %r11
	movl	%ebp, (%rsi,%r11)
	incq	%rbx
	addl	$4, %r11d
	cmpq	%rdx, %rbx
	jl	.LBB8_7
# %bb.8:                                # %for.cond49.for.inc80_crit_edge.us
                                        #   in Loop: Header=BB8_6 Depth=1
	incq	%r9
	addl	%eax, %r10d
	cmpq	%rcx, %r9
	jl	.LBB8_6
	jmp	.LBB8_21
.LBB8_9:                                # %for.cond15.preheader
	subl	%ebx, %ecx
	cmpl	%r10d, %ecx
	jle	.LBB8_21
# %bb.10:                               # %for.cond20.preheader.lr.ph
	subl	%r11d, %edx
	cmpl	%r9d, %edx
	jle	.LBB8_21
# %bb.11:                               # %for.cond20.preheader.us.preheader
	movslq	%r9d, %r8
	movslq	%edx, %rdx
	movslq	%r10d, %r9
	movslq	%ecx, %rcx
	addl	%eax, %eax
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB8_12:                               # %for.cond20.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_13 Depth 2
	movl	%r10d, %r11d
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB8_13:                               # %for.body24.us
                                        #   Parent Loop BB8_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%r9,8), %r14
	movzwl	(%r14,%rbx,2), %ebp
	rolw	$8, %bp
	movslq	%r11d, %r11
	movw	%bp, (%rsi,%r11)
	incq	%rbx
	addl	$2, %r11d
	cmpq	%rdx, %rbx
	jl	.LBB8_13
# %bb.14:                               # %for.cond20.for.inc40_crit_edge.us
                                        #   in Loop: Header=BB8_12 Depth=1
	incq	%r9
	addl	%eax, %r10d
	cmpq	%rcx, %r9
	jl	.LBB8_12
	jmp	.LBB8_21
.LBB8_15:                               # %for.cond.preheader
	subl	%ebx, %ecx
	cmpl	%r10d, %ecx
	jle	.LBB8_21
# %bb.16:                               # %for.cond1.preheader.lr.ph
	subl	%r11d, %edx
	cmpl	%r9d, %edx
	jle	.LBB8_21
# %bb.17:                               # %for.cond1.preheader.us.preheader
	movslq	%r9d, %r8
	movslq	%edx, %rdx
	movslq	%r10d, %r9
	movslq	%ecx, %rcx
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB8_18:                               # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_19 Depth 2
	movl	%r10d, %r11d
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB8_19:                               # %for.body4.us
                                        #   Parent Loop BB8_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%r9,8), %r14
	movzbl	(%r14,%rbx,2), %ebp
	movslq	%r11d, %r11
	movb	%bpl, (%rsi,%r11)
	incq	%rbx
	incl	%r11d
	cmpq	%rdx, %rbx
	jl	.LBB8_19
# %bb.20:                               # %for.cond1.for.inc11_crit_edge.us
                                        #   in Loop: Header=BB8_18 Depth=1
	incq	%r9
	addl	%eax, %r10d
	cmpq	%rcx, %r9
	jl	.LBB8_18
.LBB8_21:                               # %sw.epilog
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB8_22:                               # %sw.default
	.cfi_def_cfa_offset 32
	movl	$.L.str.8, %edi
	movl	$500, %esi                      # imm = 0x1F4
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	error@PLT                       # TAILCALL
.Lfunc_end8:
	.size	img2buf_endian, .Lfunc_end8-img2buf_endian
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function img2buf_normal
.LCPI9_0:
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.text
	.p2align	4, 0x90
	.type	img2buf_normal,@function
img2buf_normal:                         # @img2buf_normal
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
                                        # kill: def $r9d killed $r9d def $r9
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movl	144(%rsp), %r11d
	movl	136(%rsp), %esi
	movl	128(%rsp), %edi
	cmpl	$3, %r8d
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	jl	.LBB9_8
# %bb.1:                                # %for.cond.preheader
	movl	%ecx, %eax
	subl	%esi, %eax
	subl	%r11d, %eax
	movl	$2, %r10d
	testl	%eax, %eax
	jle	.LBB9_30
# %bb.2:                                # %for.body.lr.ph
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	movq	8(%rsp), %rdx                   # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	subl	%r9d, %edx
	subl	%edi, %edx
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	imull	%r8d, %edx
	movslq	%edx, %r13
	movslq	152(%rsp), %r12
	movl	%eax, %ecx
	movq	%rcx, %r14
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$7, %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	cmpl	$8, %eax
	jae	.LBB9_4
# %bb.3:
	xorl	%ebp, %ebp
	jmp	.LBB9_6
.LBB9_8:                                # %if.end
	movl	%edi, %eax
	orl	%r9d, %eax
	movl	%esi, %edx
	orl	%r11d, %edx
	orl	%eax, %edx
	movl	%r8d, %eax
	xorl	$1, %eax
	orl	%edx, %eax
	movl	%r8d, %r10d
	jne	.LBB9_30
# %bb.9:                                # %for.cond41.preheader
	testl	%ecx, %ecx
	setle	%al
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	setle	%dl
	orb	%al, %dl
	jne	.LBB9_36
# %bb.10:                               # %for.body44.us.preheader
	movslq	152(%rsp), %rax
	movl	%ecx, %ecx
	leaq	-1(%rcx), %rsi
	imulq	%rax, %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	leal	-1(%rdi), %edx
	addq	%r15, %rsi
	addq	%rdx, %rsi
	incq	%rsi
	addq	%rdx, %rdx
	movl	%edi, %edi
	movl	%edi, %r8d
	andl	$2147483616, %r8d               # imm = 0x7FFFFFE0
	leal	(%r8,%r8), %r9d
	leaq	24(%r15), %r10
	xorl	%r11d, %r11d
	movdqa	.LCPI9_0(%rip), %xmm0           # xmm0 = [255,255,255,255,255,255,255,255]
	jmp	.LBB9_11
	.p2align	4, 0x90
.LBB9_25:                               # %for.cond50.for.inc59_crit_edge.us
                                        #   in Loop: Header=BB9_11 Depth=1
	incq	%r11
	addq	%rax, %r10
	cmpq	%rcx, %r11
	movq	16(%rsp), %r15                  # 8-byte Reload
	je	.LBB9_36
.LBB9_11:                               # %for.body44.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_15 Depth 2
                                        #     Child Loop BB9_20 Depth 2
                                        #     Child Loop BB9_24 Depth 2
	movq	%r11, %rbx
	imulq	%rax, %rbx
	addq	%r15, %rbx
	movq	56(%rsp), %r14                  # 8-byte Reload
	movq	(%r14,%r11,8), %r12
	cmpl	$32, 8(%rsp)                    # 4-byte Folded Reload
	jb	.LBB9_12
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	$0, 152(%rsp)
	sets	%bpl
	leaq	(%r12,%rdx), %r14
	addq	$2, %r14
	cmpq	%r15, %r14
	seta	%r14b
	cmpq	%rsi, %r12
	setb	%r15b
	andb	%r14b, %r15b
	orb	%bpl, %r15b
	je	.LBB9_14
.LBB9_12:                               #   in Loop: Header=BB9_11 Depth=1
	movq	%r12, %r15
	xorl	%ebp, %ebp
.LBB9_17:                               # %for.body53.us.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	8(%rsp), %r14                   # 8-byte Reload
	movl	%r14d, %r12d
	subl	%ebp, %r12d
	andl	$7, %r12d
	je	.LBB9_18
# %bb.19:                               # %for.body53.us.prol.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	negl	%r12d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB9_20:                               # %for.body53.us.prol
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15), %r14d
	addq	$2, %r15
	movb	%r14b, (%rbx)
	incq	%rbx
	decl	%r13d
	cmpl	%r13d, %r12d
	jne	.LBB9_20
# %bb.21:                               # %for.body53.us.prol.loopexit.loopexit
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	%ebp, %r14d
	subl	%r13d, %r14d
	subl	8(%rsp), %ebp                   # 4-byte Folded Reload
	cmpl	$-8, %ebp
	ja	.LBB9_25
	jmp	.LBB9_23
	.p2align	4, 0x90
.LBB9_18:                               #   in Loop: Header=BB9_11 Depth=1
	movl	%ebp, %r14d
	subl	8(%rsp), %ebp                   # 4-byte Folded Reload
	cmpl	$-8, %ebp
	ja	.LBB9_25
.LBB9_23:                               # %for.body53.us.preheader1
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	8(%rsp), %r12                   # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	subl	%r14d, %r12d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB9_24:                               # %for.body53.us
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%r13,2), %ebp
	movb	%bpl, (%rbx,%r13)
	movzbl	2(%r15,%r13,2), %ebp
	movb	%bpl, 1(%rbx,%r13)
	movzbl	4(%r15,%r13,2), %ebp
	movb	%bpl, 2(%rbx,%r13)
	movzbl	6(%r15,%r13,2), %ebp
	movb	%bpl, 3(%rbx,%r13)
	movzbl	8(%r15,%r13,2), %ebp
	movb	%bpl, 4(%rbx,%r13)
	movzbl	10(%r15,%r13,2), %ebp
	movb	%bpl, 5(%rbx,%r13)
	movzbl	12(%r15,%r13,2), %ebp
	movb	%bpl, 6(%rbx,%r13)
	movzbl	14(%r15,%r13,2), %ebp
	movb	%bpl, 7(%rbx,%r13)
	addq	$8, %r13
	cmpl	%r13d, %r12d
	jne	.LBB9_24
	jmp	.LBB9_25
	.p2align	4, 0x90
.LBB9_14:                               # %vector.ph
                                        #   in Loop: Header=BB9_11 Depth=1
	addq	%r8, %rbx
	leaq	(%r12,%r9), %r15
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB9_15:                               # %vector.body
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r12,%r13,2), %xmm1
	movdqu	16(%r12,%r13,2), %xmm2
	movdqu	32(%r12,%r13,2), %xmm3
	movdqu	48(%r12,%r13,2), %xmm4
	pand	%xmm0, %xmm1
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm1
	pand	%xmm0, %xmm3
	pand	%xmm0, %xmm4
	packuswb	%xmm4, %xmm3
	movdqu	%xmm1, -24(%r10,%r13)
	movdqu	%xmm3, -8(%r10,%r13)
	addq	$32, %r13
	cmpq	%r13, %r8
	jne	.LBB9_15
# %bb.16:                               # %middle.block
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	%r8d, %ebp
	cmpl	%edi, %r8d
	je	.LBB9_25
	jmp	.LBB9_17
.LBB9_4:                                # %for.body.lr.ph.new
	andl	$2147483640, %r14d              # imm = 0x7FFFFFF8
	leaq	(,%r12,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB9_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	leaq	(%rbx,%r12), %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	%r12, %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	%r12, %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	%r12, %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	%r12, %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	%r12, %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	%r12, %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	$8, %rbp
	addq	40(%rsp), %rbx                  # 8-byte Folded Reload
	cmpq	%rbp, %r14
	jne	.LBB9_5
.LBB9_6:                                # %for.cond15.preheader.loopexit.unr-lcssa
	movq	64(%rsp), %rbx                  # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB9_7
# %bb.26:                               # %for.body.epil.preheader
	imulq	%r12, %rbp
	movq	16(%rsp), %r15                  # 8-byte Reload
	addq	%r15, %rbp
	.p2align	4, 0x90
.LBB9_27:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	%r12, %rbp
	decq	%rbx
	jne	.LBB9_27
# %bb.28:
	movl	32(%rsp), %ecx                  # 4-byte Reload
	movl	28(%rsp), %r8d                  # 4-byte Reload
	jmp	.LBB9_29
.LBB9_7:
	movl	32(%rsp), %ecx                  # 4-byte Reload
	movl	28(%rsp), %r8d                  # 4-byte Reload
	movq	16(%rsp), %r15                  # 8-byte Reload
.LBB9_29:                               # %for.cond15.preheader
	movl	136(%rsp), %esi
	movl	128(%rsp), %edi
	movl	144(%rsp), %r9d
	movq	%r9, %r11
	movl	$2, %r10d
	movq	48(%rsp), %r9                   # 8-byte Reload
.LBB9_30:                               # %for.cond15.preheader
	subl	%r11d, %ecx
	cmpl	%esi, %ecx
	jle	.LBB9_36
# %bb.31:                               # %for.body19.lr.ph
	movq	8(%rsp), %rdx                   # 8-byte Reload
	subl	%edi, %edx
	cmpl	%r9d, %edx
	jle	.LBB9_36
# %bb.32:                               # %for.body19.us.preheader
	movq	%rdx, %rax
	movslq	%r10d, %r13
	movslq	%r9d, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movslq	%r8d, %rbp
	movslq	%eax, %r12
	movslq	%esi, %rbx
	movslq	152(%rsp), %rsi
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB9_33:                               # %for.body19.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_34 Depth 2
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %r14                   # 8-byte Reload
	.p2align	4, 0x90
.LBB9_34:                               # %for.body26.us
                                        #   Parent Loop BB9_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r14,%r14), %rsi
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	(%rcx,%rbx,8), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
	incq	%r14
	addq	%rbp, %r15
	cmpq	%r12, %r14
	jl	.LBB9_34
# %bb.35:                               # %for.cond22.for.end36_crit_edge.us
                                        #   in Loop: Header=BB9_33 Depth=1
	incq	%rbx
	movq	16(%rsp), %r15                  # 8-byte Reload
	addq	40(%rsp), %r15                  # 8-byte Folded Reload
	cmpq	32(%rsp), %rbx                  # 8-byte Folded Reload
	jl	.LBB9_33
.LBB9_36:                               # %if.end62
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
.Lfunc_end9:
	.size	img2buf_normal, .Lfunc_end9-img2buf_normal
	.cfi_endproc
                                        # -- End function
	.type	write_out_picture.SubWidthC,@object # @write_out_picture.SubWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
write_out_picture.SubWidthC:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	1                               # 0x1
	.size	write_out_picture.SubWidthC, 16

	.type	write_out_picture.SubHeightC,@object # @write_out_picture.SubHeightC
	.p2align	4, 0x0
write_out_picture.SubHeightC:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.size	write_out_picture.SubHeightC, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"write_out_picture: buf"
	.size	.L.str, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s_ViewId%04d.yuv"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Error open file %s "
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"write_out_picture: error writing to RGB file"
	.size	.L.str.6, 45

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"write_out_picture: error writing to YUV file"
	.size	.L.str.7, 45

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"writing only to formats of 8, 16 or 32 bit allowed on big endian architecture"
	.size	.L.str.8, 78

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
