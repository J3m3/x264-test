	.text
	.file	"matroska.c"
	.p2align	4, 0x90                         # -- Begin function open_file
	.type	open_file,@function
open_file:                              # @open_file
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
	movq	%rdi, %r12
	movq	$0, (%rsi)
	movl	$1, %edi
	movl	$48, %esi
	callq	calloc@PLT
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB0_4
# %bb.1:                                # %if.end
	movq	%rax, %r15
	movq	%r12, %rdi
	callq	mk_create_writer@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.3:                                # %if.end5
	movq	%r15, (%r14)
	xorl	%ebx, %ebx
	jmp	.LBB0_4
.LBB0_2:                                # %if.then4
	movq	%r15, %rdi
	callq	free@PLT
.LBB0_4:                                # %cleanup
	movl	%ebx, %eax
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
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_param
	.type	set_param,@function
set_param:                              # @set_param
	.cfi_startproc
# %bb.0:                                # %entry
	movl	652(%rsi), %ecx
	testq	%rcx, %rcx
	je	.LBB1_3
# %bb.1:                                # %land.lhs.true
	cmpl	$0, 648(%rsi)
	je	.LBB1_4
.LBB1_3:
	xorl	%eax, %eax
.LBB1_7:                                # %if.end
	movq	%rax, 24(%rdi)
	movl	20(%rsi), %eax
	movl	%eax, 8(%rdi)
	movslq	24(%rsi), %rcx
	movl	%ecx, 12(%rdi)
	movslq	48(%rsi), %rax
	testq	%rax, %rax
	je	.LBB1_10
# %bb.8:                                # %land.lhs.true5
	movslq	44(%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB1_10
# %bb.9:                                # %if.then8
	movslq	20(%rsi), %r8
	imulq	%rax, %r8
	imulq	%rdx, %rcx
	testq	%r8, %r8
	jg	.LBB1_11
	jmp	.LBB1_21
.LBB1_10:                               # %if.else21
	movslq	20(%rsi), %r8
	testq	%r8, %r8
	jle	.LBB1_21
.LBB1_11:                               # %if.end26
	testq	%rcx, %rcx
	jle	.LBB1_21
# %bb.12:
	movq	%r8, %rax
	movq	%rcx, %rdx
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_14 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $edx killed $edx def $rdx
	movq	%r9, %rax
	testq	%rdx, %rdx
	je	.LBB1_16
.LBB1_14:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %r9
	movq	%rax, %rdx
	orq	%r9, %rdx
	shrq	$32, %rdx
	je	.LBB1_15
# %bb.13:                               #   in Loop: Header=BB1_14 Depth=1
	xorl	%edx, %edx
	divq	%r9
	movq	%r9, %rax
	testq	%rdx, %rdx
	jne	.LBB1_14
.LBB1_16:                               # %gcd.exit
	movq	%r8, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	je	.LBB1_19
# %bb.17:
	movq	%r8, %rax
	cqto
	idivq	%r9
	movq	%rax, %r8
	movq	%rcx, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	je	.LBB1_20
.LBB1_18:
	movq	%rcx, %rax
	cqto
	idivq	%r9
	movq	%rax, %rcx
	jmp	.LBB1_21
.LBB1_4:                                # %if.then
	movl	656(%rsi), %eax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	movabsq	$4611686014132420608, %rdx      # imm = 0x3FFFFFFF00000000
	testq	%rdx, %rax
	je	.LBB1_6
# %bb.5:
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB1_7
.LBB1_19:
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%r9d
	movl	%eax, %r8d
	movq	%rcx, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	jne	.LBB1_18
.LBB1_20:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r9d
	movl	%eax, %ecx
.LBB1_21:                               # %if.end35
	movl	%r8d, 16(%rdi)
	movl	%ecx, 20(%rdi)
	movl	660(%rsi), %eax
	movl	%eax, 36(%rdi)
	movl	664(%rsi), %eax
	movl	%eax, 40(%rdi)
	xorl	%eax, %eax
	retq
.LBB1_6:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB1_7
.Lfunc_end1:
	.size	set_param, .Lfunc_end1-set_param
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function write_headers
	.type	write_headers,@function
write_headers:                          # @write_headers
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
	movl	8(%rdi), %r14d
	movl	$-1, %eax
	testl	%r14d, %r14d
	je	.LBB2_12
# %bb.1:                                # %lor.lhs.false
	movl	12(%rdi), %r15d
	testl	%r15d, %r15d
	je	.LBB2_12
# %bb.2:                                # %lor.lhs.false13
	movl	16(%rdi), %r12d
	testl	%r12d, %r12d
	je	.LBB2_12
# %bb.3:                                # %lor.lhs.false15
	movl	20(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB2_12
# %bb.4:                                # %if.end
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movslq	8(%rsi), %rdx
	movslq	32(%rsi), %rcx
	addq	$-4, %rcx
	movl	56(%rsi), %eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movq	16(%rsi), %r13
	movq	40(%rsi), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	64(%rsi), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, %rbx
	leaq	(%rdx,%rcx), %rdi
	addq	$7, %rdi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB2_11
# %bb.5:                                # %if.end22
	movq	%rax, %rbp
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	addq	$-4, %rbx
	leaq	4(%r13), %rsi
	addq	$4, 24(%rsp)                    # 8-byte Folded Spill
	movb	$1, (%rax)
	movzbl	5(%r13), %eax
	movb	%al, 1(%rbp)
	movzbl	6(%r13), %eax
	movb	%al, 2(%rbp)
	movzbl	7(%r13), %eax
	movb	%al, 3(%rbp)
	movw	$-7681, 4(%rbp)                 # imm = 0xE1FF
	movb	%bh, 6(%rbp)
	movb	%bl, 7(%rbp)
	leaq	8(%rbp), %rdi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movb	$1, 4(%rbp,%rcx)
	movq	64(%rsp), %rax                  # 8-byte Reload
	movb	%ah, 5(%rbp,%rcx)
	movb	%al, 6(%rbp,%rcx)
	movq	%rbx, %r13
	leaq	11(%rbp,%rbx), %rdi
	movslq	%eax, %rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	memcpy@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rdi
	movq	24(%rax), %r9
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str, %esi
	movl	$.L.str.1, %edx
	movq	%rbp, %rcx
	movq	56(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	$50000                          # imm = 0xC350
	.cfi_adjust_cfa_offset 8
	callq	mk_writeHeader@PLT
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	testl	%eax, %eax
	js	.LBB2_12
# %bb.6:                                # %if.end59
	movq	%rbp, %rdi
	callq	free@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpb	$0, 32(%rax)
	movl	20(%rsp), %ebp                  # 4-byte Reload
	jne	.LBB2_9
# %bb.7:                                # %if.then61
	movq	(%rax), %rdi
	callq	mk_start_frame@PLT
	testl	%eax, %eax
	js	.LBB2_11
# %bb.8:                                # %if.end67
	movq	8(%rsp), %rax                   # 8-byte Reload
	movb	$1, 32(%rax)
.LBB2_9:                                # %if.end69
	movq	(%rax), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	%ebp, %edx
	callq	mk_add_frame_data@PLT
	testl	%eax, %eax
	movl	$-1, %eax
	js	.LBB2_12
# %bb.10:                               # %if.end75
	addl	%r13d, %ebp
	addl	%ebx, %ebp
	movl	%ebp, %eax
	jmp	.LBB2_12
.LBB2_11:
	movl	$-1, %eax
.LBB2_12:                               # %cleanup
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
.Lfunc_end2:
	.size	write_headers, .Lfunc_end2-write_headers
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function write_frame
.LCPI3_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
.LCPI3_1:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.p2align	4, 0x90
	.type	write_frame,@function
write_frame:                            # @write_frame
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
	movq	%rcx, %r14
	movl	%edx, %ebx
	movq	%rdi, %r15
	cmpb	$0, 32(%rdi)
	jne	.LBB3_3
# %bb.1:                                # %if.then
	movq	%rsi, %r12
	movq	(%r15), %rdi
	callq	mk_start_frame@PLT
	testl	%eax, %eax
	js	.LBB3_6
# %bb.2:                                # %if.end
	movb	$1, 32(%r15)
	movq	%r12, %rsi
.LBB3_3:                                # %if.end3
	movq	(%r15), %rdi
	movl	%ebx, %edx
	callq	mk_add_frame_data@PLT
	testl	%eax, %eax
	js	.LBB3_6
# %bb.4:                                # %if.end8
	cvtsi2sdq	16(%r14), %xmm0
	mulsd	.LCPI3_0(%rip), %xmm0
	movl	36(%r15), %eax
	cvtsi2sd	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	movl	40(%r15), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	%xmm0, %xmm1
	addsd	.LCPI3_1(%rip), %xmm1
	cvttsd2si	%xmm1, %rsi
	movb	$0, 32(%r15)
	movq	(%r15), %rdi
	movl	12(%r14), %edx
	xorl	%ecx, %ecx
	cmpl	$5, (%r14)
	sete	%cl
	callq	mk_set_frame_flags@PLT
	testl	%eax, %eax
	movl	$-1, %eax
	cmovnsl	%ebx, %eax
	jmp	.LBB3_7
.LBB3_6:
	movl	$-1, %eax
.LBB3_7:                                # %cleanup22
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
	.size	write_frame, .Lfunc_end3-write_frame
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function close_file
.LCPI4_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.p2align	4, 0x90
	.type	close_file,@function
close_file:                             # @close_file
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
	movq	%rdi, %rbx
	subq	%rdx, %rsi
	movl	36(%rdi), %eax
	movl	40(%rdi), %ecx
	imulq	%rsi, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB4_1
# %bb.2:
	cqto
	idivq	%rcx
	jmp	.LBB4_3
.LBB4_1:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
.LBB4_3:
	cvtsi2sd	%rax, %xmm0
	addsd	.LCPI4_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	movq	(%rbx), %rdi
	callq	mk_close@PLT
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	free@PLT
	movl	%ebp, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	close_file, .Lfunc_end4-close_file
	.cfi_endproc
                                        # -- End function
	.type	mkv_output,@object              # @mkv_output
	.section	.rodata,"a",@progbits
	.globl	mkv_output
	.p2align	3, 0x0
mkv_output:
	.quad	open_file
	.quad	set_param
	.quad	write_headers
	.quad	write_frame
	.quad	close_file
	.size	mkv_output, 40

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x264"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"V_MPEG4/ISO/AVC"
	.size	.L.str.1, 16

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
