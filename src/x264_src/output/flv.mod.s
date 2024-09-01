	.text
	.file	"flv.c"
	.p2align	4, 0x90                         # -- Begin function open_file
	.type	open_file,@function
open_file:                              # @open_file
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
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$1, %edi
	movl	$120, %esi
	callq	calloc@PLT
	movq	$0, (%rbx)
	movl	$-1, %ebp
	testq	%rax, %rax
	je	.LBB0_4
# %bb.1:                                # %if.end
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	flv_create_writer@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.2:                                # %do.body
	movq	%rax, %r15
	movl	$.L.str, %esi
	movq	%rax, %rdi
	callq	x264_put_tag@PLT
	movq	%r15, %rdi
	movl	$1, %esi
	callq	x264_put_byte@PLT
	movq	%r15, %rdi
	movl	$1, %esi
	callq	x264_put_byte@PLT
	movq	%r15, %rdi
	movl	$9, %esi
	callq	x264_put_be32@PLT
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	x264_put_be32@PLT
	movq	%r15, %rdi
	callq	flv_flush_data@PLT
	testl	%eax, %eax
	js	.LBB0_4
# %bb.3:                                # %do.end
	movq	%r14, (%rbx)
	xorl	%ebp, %ebp
.LBB0_4:                                # %cleanup
	movl	%ebp, %eax
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
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function set_param
.LCPI1_0:
	.quad	0x401c000000000000              # double 7
	.text
	.p2align	4, 0x90
	.type	set_param,@function
set_param:                              # @set_param
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rdi), %r15
	movq	%r15, %rdi
	movl	$18, %esi
	callq	x264_put_byte@PLT
	movl	8(%r15), %ebp
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	x264_put_be24@PLT
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	x264_put_be24@PLT
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	x264_put_be32@PLT
	movq	%r15, %rdi
	movl	$2, %esi
	callq	x264_put_byte@PLT
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	callq	x264_put_amf_string@PLT
	movq	%r15, %rdi
	movl	$8, %esi
	callq	x264_put_byte@PLT
	movq	%r15, %rdi
	movl	$7, %esi
	callq	x264_put_be32@PLT
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	callq	x264_put_amf_string@PLT
	cvtsi2sdl	20(%r14), %xmm0
	movq	%r15, %rdi
	callq	x264_put_amf_double@PLT
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	callq	x264_put_amf_string@PLT
	xorps	%xmm0, %xmm0
	cvtsi2sdl	24(%r14), %xmm0
	movq	%r15, %rdi
	callq	x264_put_amf_double@PLT
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	callq	x264_put_amf_string@PLT
	cmpl	$0, 648(%r14)
	je	.LBB1_1
# %bb.2:                                # %if.else
	movl	8(%r15), %eax
	movq	24(%r15), %rcx
	addq	%rcx, %rax
	incq	%rax
	movq	%rax, 48(%rbx)
	xorpd	%xmm0, %xmm0
	jmp	.LBB1_3
.LBB1_1:                                # %if.then
	movl	652(%r14), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movl	656(%r14), %eax
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm1, %xmm0
.LBB1_3:                                # %if.end
	movq	%r15, %rdi
	callq	x264_put_amf_double@PLT
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	x264_put_amf_string@PLT
	movsd	.LCPI1_0(%rip), %xmm0           # xmm0 = [7.0E+0,0.0E+0]
	movq	%r15, %rdi
	callq	x264_put_amf_double@PLT
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	x264_put_amf_string@PLT
	movl	8(%r15), %eax
	movq	24(%r15), %rcx
	addq	%rcx, %rax
	incq	%rax
	movq	%rax, 56(%rbx)
	xorps	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	x264_put_amf_double@PLT
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	callq	x264_put_amf_string@PLT
	movl	8(%r15), %eax
	movq	24(%r15), %rcx
	addq	%rcx, %rax
	incq	%rax
	movq	%rax, 64(%rbx)
	xorps	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	x264_put_amf_double@PLT
	movl	$.L.str.8, %esi
	movq	%r15, %rdi
	callq	x264_put_amf_string@PLT
	movl	8(%r15), %eax
	movq	24(%r15), %rcx
	addq	%rcx, %rax
	incq	%rax
	movq	%rax, 72(%rbx)
	xorps	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	x264_put_amf_double@PLT
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	callq	x264_put_amf_string@PLT
	movq	%r15, %rdi
	movl	$9, %esi
	callq	x264_put_byte@PLT
	movl	8(%r15), %r12d
	subl	%ebp, %r12d
	leal	-10(%r12), %esi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	rewrite_amf_be24@PLT
	incl	%r12d
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	x264_put_be32@PLT
	movl	652(%r14), %eax
	movq	%rax, 24(%rbx)
	movl	656(%r14), %eax
	movq	%rax, 32(%rbx)
	movl	660(%r14), %eax
	movl	%eax, 104(%rbx)
	movl	664(%r14), %eax
	movl	%eax, 108(%rbx)
	movl	648(%r14), %eax
	movl	%eax, 112(%rbx)
	xorl	%eax, %eax
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	(%rdi), %r14
	movl	8(%rsi), %ebp
	movl	32(%rsi), %r13d
	movl	56(%rsi), %eax
	movslq	%eax, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.LBB2_1
# %bb.2:                                # %if.end
	movl	%ebx, 16(%r15)
	movq	64(%r12), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	16(%r12), %rbp
	leaq	4(%rbp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	movl	$9, %esi
	callq	x264_put_byte@PLT
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	x264_put_be24@PLT
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	x264_put_be24@PLT
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	x264_put_byte@PLT
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	x264_put_be24@PLT
	movl	8(%r14), %eax
	movl	%eax, 116(%r15)
	movq	%r14, %rdi
	movl	$23, %esi
	callq	x264_put_byte@PLT
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	x264_put_byte@PLT
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	x264_put_be24@PLT
	movq	%r14, %rdi
	movl	$1, %esi
	callq	x264_put_byte@PLT
	movzbl	5(%rbp), %esi
	movq	%r14, %rdi
	callq	x264_put_byte@PLT
	movzbl	6(%rbp), %esi
	movq	%r14, %rdi
	callq	x264_put_byte@PLT
	movzbl	7(%rbp), %esi
	movq	%r14, %rdi
	callq	x264_put_byte@PLT
	movq	%r14, %rdi
	movl	$255, %esi
	callq	x264_put_byte@PLT
	movq	%r14, %rdi
	movl	$225, %esi
	callq	x264_put_byte@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	leal	-4(%rax), %ebp
	movzwl	%bp, %esi
	movq	%r14, %rdi
	callq	x264_put_be16@PLT
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	%ebp, %edx
	callq	flv_append_data@PLT
	movq	%r14, %rdi
	movl	$1, %esi
	callq	x264_put_byte@PLT
	leal	-4(%r13), %ebp
	movzwl	%bp, %esi
	movq	%r14, %rdi
	callq	x264_put_be16@PLT
	movq	40(%r12), %rsi
	addq	$4, %rsi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	flv_append_data@PLT
	movl	8(%r14), %ebp
	movl	116(%r15), %edx
	subl	%edx, %ebp
	addl	$-10, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	rewrite_amf_be24@PLT
	addl	$11, %ebp
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	x264_put_be32@PLT
	movq	%r14, %rdi
	callq	flv_flush_data@PLT
	addl	8(%rsp), %r13d                  # 4-byte Folded Reload
	addl	%ebx, %r13d
	testl	%eax, %eax
	movl	$-1, %eax
	cmovnsl	%r13d, %eax
	jmp	.LBB2_3
.LBB2_1:
	movl	$-1, %eax
.LBB2_3:                                # %cleanup37
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
.Lfunc_end2:
	.size	write_headers, .Lfunc_end2-write_headers
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function write_frame
.LCPI3_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.p2align	4, 0x90
	.type	write_frame,@function
write_frame:                            # @write_frame
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
	movq	%rcx, %r13
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movq	24(%rcx), %rax
	imulq	$1000, %rax, %rcx               # imm = 0x3E8
	cvtsi2sd	%rcx, %xmm4
	movq	%rdi, %r14
	movl	104(%rdi), %ecx
	cvtsi2sd	%rcx, %xmm1
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movl	108(%rdi), %ecx
	cvtsi2sd	%rcx, %xmm0
	movq	(%rdi), %r15
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm4
	movsd	.LCPI3_0(%rip), %xmm3           # xmm3 = [5.0E-1,0.0E+0]
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %r12
	imulq	$1000, 16(%r13), %rcx           # imm = 0x3E8
	xorps	%xmm4, %xmm4
	cvtsi2sd	%rcx, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %rbp
	movq	%rbp, %rbx
	subq	%r12, %rbx
	cmpq	$0, 40(%rdi)
	je	.LBB3_5
# %bb.1:                                # %if.then
	movq	88(%r14), %rcx
	imulq	$1000, %rcx, %rdx               # imm = 0x3E8
	xorps	%xmm4, %xmm4
	cvtsi2sd	%rdx, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %rdx
	imulq	$1000, 96(%r14), %rsi           # imm = 0x3E8
	xorps	%xmm4, %xmm4
	cvtsi2sd	%rsi, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %rsi
	cmpq	%r12, %rdx
	je	.LBB3_2
# %bb.3:                                # %if.end
	cmpq	%rbp, %rsi
	je	.LBB3_4
.LBB3_5:                                # %if.end61
	movq	24(%r13), %rax
	movq	%rax, 88(%r14)
	movq	16(%r13), %rax
	movq	%rax, 96(%r14)
	movq	%r15, %rdi
	movl	$9, %esi
	callq	x264_put_byte@PLT
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	x264_put_be24@PLT
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	x264_put_be24@PLT
	shrl	$24, %r12d
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	x264_put_byte@PLT
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	x264_put_be24@PLT
	movl	8(%r15), %eax
	movl	%eax, 116(%r14)
	xorl	%esi, %esi
	cmpl	$0, 12(%r13)
	sete	%sil
	shll	$4, %esi
	addl	$23, %esi
	movq	%r15, %rdi
	callq	x264_put_byte@PLT
	movq	%r15, %rdi
	movl	$1, %esi
	callq	x264_put_byte@PLT
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	x264_put_be24@PLT
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB3_7
# %bb.6:                                # %if.then72
	movl	16(%r14), %edx
	movq	%r15, %rdi
	callq	flv_append_data@PLT
	movq	8(%r14), %rdi
	callq	free@PLT
	movq	$0, 8(%r14)
.LBB3_7:                                # %if.end77
	movq	%r15, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	4(%rsp), %ebp                   # 4-byte Reload
	movl	%ebp, %edx
	callq	flv_append_data@PLT
	movl	8(%r15), %ebx
	movl	116(%r14), %edx
	subl	%edx, %ebx
	addl	$-10, %edx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	rewrite_amf_be24@PLT
	addl	$11, %ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	x264_put_be32@PLT
	movq	%r15, %rdi
	callq	flv_flush_data@PLT
	testl	%eax, %eax
	js	.LBB3_8
# %bb.9:                                # %do.end
	incq	40(%r14)
	jmp	.LBB3_10
.LBB3_8:
	movl	$-1, %ebp
.LBB3_10:                               # %cleanup
	movl	%ebp, %eax
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
.LBB3_2:                                # %if.then34
	.cfi_def_cfa_offset 80
	subq	%rcx, %rax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rax, %xmm2
	divsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movl	$.L.str.10, %esi
	movq	%r12, %rdx
	movb	$1, %al
	callq	fprintf@PLT
	movq	8(%rsp), %rsi                   # 8-byte Reload
	cmpq	%rbp, %rsi
	jne	.LBB3_5
.LBB3_4:                                # %if.then47
	movl	108(%r14), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movl	104(%r14), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	movq	16(%r13), %rax
	subq	96(%r14), %rax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rax, %xmm2
	divsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.11, %esi
	movq	%rbp, %rdx
	movb	$1, %al
	callq	fprintf@PLT
	jmp	.LBB3_5
.Lfunc_end3:
	.size	write_frame, .Lfunc_end3-write_frame
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function close_file
.LCPI4_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI4_1:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_2:
	.quad	0x408f400000000000              # double 1000
	.text
	.p2align	4, 0x90
	.type	close_file,@function
close_file:                             # @close_file
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
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	movq	%rbx, %rdi
	callq	flv_flush_data@PLT
	testl	%eax, %eax
	js	.LBB4_1
# %bb.2:                                # %do.end
	addq	%r12, %r12
	subq	%r15, %r12
	cvtsi2sd	%r12, %xmm0
	movl	104(%r14), %eax
	movl	108(%r14), %ecx
	cvtsi2sd	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rcx, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	movq	16(%rbx), %rdi
	callq	ftell@PLT
	movq	%rax, %r15
	movq	48(%r14), %r12
	testq	%r12, %r12
	je	.LBB4_4
# %bb.3:                                # %if.then10
	xorps	%xmm0, %xmm0
	cvtsi2sdq	40(%r14), %xmm0
	divsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	movq	16(%rbx), %r13
	callq	dbl2int@PLT
	bswapq	%rax
	movq	%rax, 8(%rsp)
	movq	%r13, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
	leaq	8(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	movq	%r13, %rcx
	callq	fwrite@PLT
.LBB4_4:                                # %if.end15
	movq	16(%rbx), %r12
	movq	56(%r14), %r13
	movsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	dbl2int@PLT
	bswapq	%rax
	movq	%rax, 8(%rsp)
	xorl	%ebp, %ebp
	movq	%r12, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
	leaq	8(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite@PLT
	movq	16(%rbx), %r12
	movq	64(%r14), %r13
	movq	%r15, %xmm1
	punpckldq	.LCPI4_0(%rip), %xmm1   # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI4_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	callq	dbl2int@PLT
	bswapq	%rax
	movq	%rax, 8(%rsp)
	movq	%r12, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
	leaq	8(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite@PLT
	movq	16(%rbx), %r12
	movq	72(%r14), %r13
	shlq	$3, %r15
	movq	%r15, %xmm1
	punpckldq	.LCPI4_0(%rip), %xmm1   # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI4_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	.LCPI4_2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	callq	dbl2int@PLT
	bswapq	%rax
	movq	%rax, 8(%rsp)
	movq	%r12, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
	leaq	8(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite@PLT
	movq	16(%rbx), %rdi
	callq	fclose@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	jmp	.LBB4_5
.LBB4_1:
	movl	$-1, %ebp
.LBB4_5:                                # %cleanup
	movl	%ebp, %eax
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
.Lfunc_end4:
	.size	close_file, .Lfunc_end4-close_file
	.cfi_endproc
                                        # -- End function
	.type	flv_output,@object              # @flv_output
	.section	.rodata,"a",@progbits
	.globl	flv_output
	.p2align	3, 0x0
flv_output:
	.quad	open_file
	.quad	set_param
	.quad	write_headers
	.quad	write_frame
	.quad	close_file
	.size	flv_output, 40

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FLV"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"onMetaData"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"width"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"height"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"framerate"
	.size	.L.str.4, 10

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"videocodecid"
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"duration"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"filesize"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"videodatarate"
	.size	.L.str.8, 14

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"flv [warning]: duplicate DTS %ld generated by rounding\n               current internal decoding framerate: %.6f fps\n"
	.size	.L.str.10, 117

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"flv [warning]: duplicate CTS %ld generated by rounding\n               current internal composition framerate: %.6f fps\n"
	.size	.L.str.11, 120

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
