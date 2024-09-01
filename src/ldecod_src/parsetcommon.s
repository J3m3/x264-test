	.text
	.file	"parsetcommon.c"
	.globl	AllocPPS                        # -- Begin function AllocPPS
	.p2align	4, 0x90
	.type	AllocPPS,@function
AllocPPS:                               # @AllocPPS
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$1, %edi
	movl	$2216, %esi                     # imm = 0x8A8
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %if.then
	.cfi_def_cfa_offset 16
	movl	$.L.str, %edi
	movq	%rax, %rbx
	callq	no_mem_exit@PLT
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	AllocPPS, .Lfunc_end0-AllocPPS
	.cfi_endproc
                                        # -- End function
	.globl	AllocSPS                        # -- Begin function AllocSPS
	.p2align	4, 0x90
	.type	AllocSPS,@function
AllocSPS:                               # @AllocSPS
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$1, %edi
	movl	$4128, %esi                     # imm = 0x1020
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:                                # %if.then
	.cfi_def_cfa_offset 16
	movl	$.L.str.1, %edi
	movq	%rax, %rbx
	callq	no_mem_exit@PLT
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	AllocSPS, .Lfunc_end1-AllocSPS
	.cfi_endproc
                                        # -- End function
	.globl	FreePPS                         # -- Begin function FreePPS
	.p2align	4, 0x90
	.type	FreePPS,@function
FreePPS:                                # @FreePPS
	.cfi_startproc
# %bb.0:                                # %entry
	movq	2160(%rdi), %rax
	testq	%rax, %rax
	je	free@PLT                        # TAILCALL
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	jmp	free@PLT                        # TAILCALL
.Lfunc_end2:
	.size	FreePPS, .Lfunc_end2-FreePPS
	.cfi_endproc
                                        # -- End function
	.globl	FreeSPS                         # -- Begin function FreeSPS
	.p2align	4, 0x90
	.type	FreeSPS,@function
FreeSPS:                                # @FreeSPS
	.cfi_startproc
# %bb.0:                                # %entry
	jmp	free@PLT                        # TAILCALL
.Lfunc_end3:
	.size	FreeSPS, .Lfunc_end3-FreeSPS
	.cfi_endproc
                                        # -- End function
	.globl	sps_is_equal                    # -- Begin function sps_is_equal
	.p2align	4, 0x90
	.type	sps_is_equal,@function
sps_is_equal:                           # @sps_is_equal
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	cmpl	$0, (%rdi)
	je	.LBB4_26
# %bb.1:                                # %lor.lhs.false
	cmpl	$0, (%rsi)
	je	.LBB4_26
# %bb.2:                                # %if.end
	movdqu	4(%rdi), %xmm0
	movdqu	4(%rsi), %xmm1
	pcmpeqd	%xmm0, %xmm1
	movq	28(%rdi), %xmm2                 # xmm2 = mem[0],zero
	movq	2068(%rdi), %xmm0               # xmm0 = mem[0],zero
	punpcklqdq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0]
	movq	2068(%rsi), %xmm3               # xmm3 = mem[0],zero
	movq	28(%rsi), %xmm4                 # xmm4 = mem[0],zero
	punpcklqdq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0]
	pcmpeqd	%xmm2, %xmm4
	pand	%xmm1, %xmm4
	movmskps	%xmm4, %ecx
	xorl	$15, %ecx
	je	.LBB4_3
.LBB4_26:                               # %cleanup
	retq
.LBB4_3:                                # %if.end34
	pshufd	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	movd	%xmm0, %ecx
	movl	$1, %r9d
	cmpl	$1, %ecx
	je	.LBB4_6
# %bb.4:                                # %if.end34
	testl	%ecx, %ecx
	jne	.LBB4_14
# %bb.5:                                # %if.then38
	movl	2076(%rdi), %ecx
	xorl	%r9d, %r9d
	cmpl	2076(%rsi), %ecx
	sete	%r9b
.LBB4_14:                               # %if.end76
	movl	3120(%rdi), %ecx
	cmpl	3120(%rsi), %ecx
	setne	%cl
	movdqu	3124(%rdi), %xmm0
	movdqu	3124(%rsi), %xmm1
	pcmpeqd	%xmm0, %xmm1
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm1, %xmm2
	pslld	$31, %xmm2
	movmskps	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB4_26
# %bb.15:                               # %if.end76
	testb	$1, %cl
	jne	.LBB4_26
# %bb.16:                               # %if.end76
	testl	%r9d, %r9d
	je	.LBB4_26
# %bb.17:                               # %if.end99
	pshufd	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	movd	%xmm0, %edx
	xorl	%eax, %eax
	movl	$0, %ecx
	testl	%edx, %edx
	jne	.LBB4_19
# %bb.18:                               # %if.then102
	movl	3140(%rdi), %ecx
	cmpl	3140(%rsi), %ecx
	setne	%cl
.LBB4_19:                               # %if.end107
	movl	3148(%rdi), %edx
	cmpl	3148(%rsi), %edx
	jne	.LBB4_26
# %bb.20:                               # %if.end107
	movl	3144(%rsi), %r8d
	cmpl	%r8d, 3144(%rdi)
	jne	.LBB4_26
# %bb.21:                               # %if.end107
	testb	%cl, %cl
	jne	.LBB4_26
# %bb.22:                               # %if.end118
	testl	%edx, %edx
	je	.LBB4_23
# %bb.24:                               # %if.then121
	movdqu	3152(%rdi), %xmm0
	movdqu	3152(%rsi), %xmm1
	pcmpeqd	%xmm0, %xmm1
	movmskps	%xmm1, %eax
	xorl	%ecx, %ecx
	xorl	$15, %eax
	sete	%cl
	jmp	.LBB4_25
.LBB4_6:                                # %if.then46
	movdqu	2080(%rdi), %xmm0
	movdqu	2080(%rsi), %xmm1
	pcmpeqd	%xmm0, %xmm1
	movmskps	%xmm1, %ecx
	xorl	$15, %ecx
	jne	.LBB4_26
# %bb.7:                                # %for.cond.preheader
	pshufd	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	movd	%xmm0, %r8d
	testl	%r8d, %r8d
	je	.LBB4_14
# %bb.8:                                # %for.body.lr.ph
	movl	%r8d, %ecx
	xorl	%edx, %edx
	cmpl	$16, %r8d
	jae	.LBB4_10
# %bb.9:
	xorl	%r8d, %r8d
	jmp	.LBB4_13
.LBB4_23:
	movl	$1, %ecx
.LBB4_25:                               # %if.end138
	movl	3168(%rdi), %edx
	xorl	%eax, %eax
	cmpl	3168(%rsi), %edx
	cmovel	%ecx, %eax
	retq
.LBB4_10:                               # %vector.ph
	movl	%ecx, %r8d
	andl	$-16, %r8d
	leaq	(,%rcx,4), %r9
	andq	$-64, %r9
	pxor	%xmm0, %xmm0
	xorl	%r10d, %r10d
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
.LBB4_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	2096(%rdi,%r10), %xmm5
	movdqu	2112(%rdi,%r10), %xmm6
	movdqu	2128(%rdi,%r10), %xmm7
	movdqu	2144(%rdi,%r10), %xmm8
	movdqu	2096(%rsi,%r10), %xmm9
	pcmpeqd	%xmm5, %xmm9
	movdqu	2112(%rsi,%r10), %xmm5
	pcmpeqd	%xmm6, %xmm5
	movdqu	2128(%rsi,%r10), %xmm6
	pcmpeqd	%xmm7, %xmm6
	movdqu	2144(%rsi,%r10), %xmm7
	pcmpeqd	%xmm8, %xmm7
	pxor	%xmm4, %xmm9
	por	%xmm9, %xmm0
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm3
	pxor	%xmm4, %xmm6
	por	%xmm6, %xmm2
	pxor	%xmm4, %xmm7
	por	%xmm7, %xmm1
	addq	$64, %r10
	cmpq	%r10, %r9
	jne	.LBB4_11
# %bb.12:                               # %middle.block
	por	%xmm0, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	pslld	$31, %xmm1
	movmskps	%xmm1, %r10d
	xorl	%r9d, %r9d
	testl	%r10d, %r10d
	sete	%r9b
	cmpl	%ecx, %r8d
	je	.LBB4_14
	.p2align	4, 0x90
.LBB4_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	2096(%rdi,%r8,4), %r10d
	cmpl	2096(%rsi,%r8,4), %r10d
	cmovnel	%edx, %r9d
	incq	%r8
	cmpq	%r8, %rcx
	jne	.LBB4_13
	jmp	.LBB4_14
.Lfunc_end4:
	.size	sps_is_equal, .Lfunc_end4-sps_is_equal
	.cfi_endproc
                                        # -- End function
	.globl	pps_is_equal                    # -- Begin function pps_is_equal
	.p2align	4, 0x90
	.type	pps_is_equal,@function
pps_is_equal:                           # @pps_is_equal
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	cmpl	$0, (%rdi)
	je	.LBB5_44
# %bb.1:                                # %lor.lhs.false
	cmpl	$0, (%rsi)
	je	.LBB5_44
# %bb.2:                                # %if.end
	movq	8(%rdi), %xmm1                  # xmm1 = mem[0],zero
	movq	2040(%rdi), %xmm0               # xmm0 = mem[0],zero
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	movq	2040(%rsi), %xmm2               # xmm2 = mem[0],zero
	movq	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	pcmpeqd	%xmm1, %xmm3
	movmskps	%xmm3, %ecx
	xorl	$15, %ecx
	jne	.LBB5_44
# %bb.3:                                # %if.end
	movl	4(%rsi), %ecx
	cmpl	%ecx, 4(%rdi)
	jne	.LBB5_44
# %bb.4:                                # %if.end22
	pshufd	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	movd	%xmm0, %edx
	movl	$1, %ecx
	testl	%edx, %edx
	je	.LBB5_26
# %bb.5:                                # %if.then26
	movl	2048(%rdi), %r8d
	cmpl	2048(%rsi), %r8d
	jne	.LBB5_44
# %bb.6:                                # %if.end33
	cmpl	$6, %r8d
	ja	.LBB5_26
# %bb.7:                                # %if.end33
	movl	%r8d, %r8d
	jmpq	*.LJTI5_0(,%r8,8)
.LBB5_19:                               # %if.then87
	movq	2148(%rsi), %rdx
	xorl	%ecx, %ecx
	cmpq	%rdx, 2148(%rdi)
	sete	%cl
.LBB5_26:                               # %if.end130
	movl	2168(%rdi), %edx
	cmpl	2168(%rsi), %edx
	movl	2172(%rdi), %r8d
	setne	%dl
	cmpl	2172(%rsi), %r8d
	setne	%r8b
	movl	2176(%rdi), %r9d
	cmpl	2176(%rsi), %r9d
	setne	%r9b
	movl	2200(%rdi), %r10d
	cmpl	2200(%rsi), %r10d
	setne	%r10b
	movl	2204(%rdi), %r11d
	cmpl	2204(%rsi), %r11d
	setne	%r11b
	movl	2208(%rdi), %ebx
	cmpl	2208(%rsi), %ebx
	jne	.LBB5_44
# %bb.27:                               # %if.end130
	movdqu	2180(%rdi), %xmm0
	movdqu	2180(%rsi), %xmm1
	pcmpeqd	%xmm0, %xmm1
	pcmpeqd	%xmm0, %xmm0
	pxor	%xmm1, %xmm0
	pslld	$31, %xmm0
	movmskps	%xmm0, %ebx
	testb	%bl, %bl
	jne	.LBB5_44
# %bb.28:                               # %if.end130
	testb	$1, %r11b
	jne	.LBB5_44
# %bb.29:                               # %if.end130
	testb	$1, %r10b
	jne	.LBB5_44
# %bb.30:                               # %if.end130
	testb	$1, %r9b
	jne	.LBB5_44
# %bb.31:                               # %if.end130
	testb	$1, %r8b
	jne	.LBB5_44
# %bb.32:                               # %if.end130
	testb	$1, %dl
	jne	.LBB5_44
# %bb.33:                               # %if.end130
	testl	%ecx, %ecx
	je	.LBB5_44
# %bb.34:                               # %if.end173
	movl	16(%rdi), %eax
	movl	20(%rdi), %edx
	movl	16(%rsi), %r8d
	xorl	%eax, %r8d
	movl	20(%rsi), %r9d
	xorl	%edx, %r9d
	xorl	%ecx, %ecx
	orl	%r8d, %r9d
	sete	%cl
	testl	%edx, %edx
	je	.LBB5_43
# %bb.35:                               # %for.cond185.preheader
	addl	%eax, %eax
	addl	$6, %eax
	je	.LBB5_43
# %bb.36:                               # %for.body189.lr.ph
	movl	%eax, %eax
	shlq	$6, %rax
	xorl	%edx, %edx
	pcmpeqd	%xmm0, %xmm0
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB5_37
	.p2align	4, 0x90
.LBB5_40:                               # %vector.body494
                                        #   in Loop: Header=BB5_37 Depth=1
	movdqu	-1080(%rdi,%r8,4), %xmm1
	movdqu	-1064(%rdi,%r8,4), %xmm2
	movdqu	-1048(%rdi,%r8,4), %xmm3
	movdqu	-1032(%rdi,%r8,4), %xmm4
	movdqu	-1080(%rsi,%r8,4), %xmm8
	pcmpeqd	%xmm1, %xmm8
	movdqu	-1064(%rsi,%r8,4), %xmm7
	pcmpeqd	%xmm2, %xmm7
	movdqu	-1048(%rsi,%r8,4), %xmm6
	pcmpeqd	%xmm3, %xmm6
	movdqu	-1032(%rsi,%r8,4), %xmm5
	pcmpeqd	%xmm4, %xmm5
	pxor	%xmm0, %xmm8
	pxor	%xmm0, %xmm7
	pxor	%xmm0, %xmm6
	pxor	%xmm0, %xmm5
	movdqu	-1016(%rdi,%r8,4), %xmm1
	movdqu	-1000(%rdi,%r8,4), %xmm2
	movdqu	-984(%rdi,%r8,4), %xmm9
	movdqu	-968(%rdi,%r8,4), %xmm10
	movdqu	-1016(%rsi,%r8,4), %xmm4
	pcmpeqd	%xmm1, %xmm4
	movdqu	-1000(%rsi,%r8,4), %xmm3
	pcmpeqd	%xmm2, %xmm3
	movdqu	-984(%rsi,%r8,4), %xmm2
	pcmpeqd	%xmm9, %xmm2
	movdqu	-968(%rsi,%r8,4), %xmm1
	pcmpeqd	%xmm10, %xmm1
	pxor	%xmm0, %xmm4
	por	%xmm8, %xmm4
	pxor	%xmm0, %xmm3
	por	%xmm7, %xmm3
	pxor	%xmm0, %xmm2
	por	%xmm6, %xmm2
	pxor	%xmm0, %xmm1
	por	%xmm5, %xmm1
	movdqu	-952(%rdi,%r8,4), %xmm5
	movdqu	-936(%rdi,%r8,4), %xmm6
	movdqu	-920(%rdi,%r8,4), %xmm9
	movdqu	-904(%rdi,%r8,4), %xmm10
	movdqu	-952(%rsi,%r8,4), %xmm8
	pcmpeqd	%xmm5, %xmm8
	movdqu	-936(%rsi,%r8,4), %xmm7
	pcmpeqd	%xmm6, %xmm7
	movdqu	-920(%rsi,%r8,4), %xmm6
	pcmpeqd	%xmm9, %xmm6
	movdqu	-904(%rsi,%r8,4), %xmm5
	pcmpeqd	%xmm10, %xmm5
	pxor	%xmm0, %xmm8
	pxor	%xmm0, %xmm7
	pxor	%xmm0, %xmm6
	pxor	%xmm0, %xmm5
	movdqu	-888(%rdi,%r8,4), %xmm9
	movdqu	-872(%rdi,%r8,4), %xmm10
	movdqu	-856(%rdi,%r8,4), %xmm11
	movdqu	-840(%rdi,%r8,4), %xmm12
	movdqu	-888(%rsi,%r8,4), %xmm13
	pcmpeqd	%xmm9, %xmm13
	movdqu	-872(%rsi,%r8,4), %xmm14
	pcmpeqd	%xmm10, %xmm14
	movdqu	-856(%rsi,%r8,4), %xmm9
	pcmpeqd	%xmm11, %xmm9
	movdqu	-840(%rsi,%r8,4), %xmm10
	pcmpeqd	%xmm12, %xmm10
	pxor	%xmm0, %xmm13
	por	%xmm8, %xmm13
	por	%xmm4, %xmm13
	pxor	%xmm0, %xmm14
	por	%xmm7, %xmm14
	por	%xmm3, %xmm14
	por	%xmm13, %xmm14
	pxor	%xmm0, %xmm9
	por	%xmm6, %xmm9
	por	%xmm2, %xmm9
	por	%xmm14, %xmm9
	pxor	%xmm0, %xmm10
	por	%xmm5, %xmm10
	por	%xmm1, %xmm10
	por	%xmm9, %xmm10
	pslld	$31, %xmm10
	movmskps	%xmm10, %r10d
	testl	%r10d, %r10d
.LBB5_41:                               # %for.inc248
                                        #   in Loop: Header=BB5_37 Depth=1
	cmovnel	%edx, %ecx
.LBB5_42:                               # %for.inc248
                                        #   in Loop: Header=BB5_37 Depth=1
	incq	%r9
	addq	$64, %r8
	cmpq	%r8, %rax
	je	.LBB5_43
.LBB5_37:                               # %for.body189
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %r10d
	movl	24(%rdi,%r9,4), %r11d
	xorl	%ecx, %ecx
	cmpl	24(%rsi,%r9,4), %r11d
	sete	%cl
	andl	%r10d, %ecx
	testl	%r11d, %r11d
	je	.LBB5_42
# %bb.38:                               # %if.then202
                                        #   in Loop: Header=BB5_37 Depth=1
	cmpq	$5, %r9
	ja	.LBB5_40
# %bb.39:                               # %for.body209.preheader
                                        #   in Loop: Header=BB5_37 Depth=1
	movdqu	72(%rdi,%r8), %xmm1
	movdqu	88(%rdi,%r8), %xmm2
	movdqu	104(%rdi,%r8), %xmm3
	movdqu	120(%rdi,%r8), %xmm4
	movdqu	72(%rsi,%r8), %xmm5
	pcmpeqd	%xmm1, %xmm5
	movdqu	88(%rsi,%r8), %xmm1
	pcmpeqd	%xmm2, %xmm1
	packssdw	%xmm1, %xmm5
	movdqu	104(%rsi,%r8), %xmm1
	pcmpeqd	%xmm3, %xmm1
	movdqu	120(%rsi,%r8), %xmm2
	pcmpeqd	%xmm4, %xmm2
	packssdw	%xmm2, %xmm1
	packsswb	%xmm1, %xmm5
	psllw	$7, %xmm5
	pmovmskb	%xmm5, %r10d
	cmpl	$65535, %r10d                   # imm = 0xFFFF
	jmp	.LBB5_41
.LBB5_43:                               # %if.end251
	movl	2196(%rdi), %edx
	xorl	%eax, %eax
	cmpl	2196(%rsi), %edx
	cmovel	%ecx, %eax
.LBB5_44:                               # %cleanup
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB5_20:                               # %if.then100
	.cfi_def_cfa_offset 24
	movl	2156(%rdi), %edx
	cmpl	2156(%rsi), %edx
	jne	.LBB5_44
# %bb.21:                               # %for.cond108.preheader
	movq	2160(%rdi), %r8
	movq	2160(%rsi), %r9
	leal	1(%rdx), %ebx
	xorl	%r10d, %r10d
	movl	$0, %r11d
	cmpl	$16, %ebx
	jb	.LBB5_25
# %bb.22:                               # %vector.ph
	movl	%ebx, %r11d
	andl	$-16, %r11d
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
.LBB5_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	(%r8,%rcx), %xmm5               # xmm5 = mem[0],zero,zero,zero
	movd	4(%r8,%rcx), %xmm6              # xmm6 = mem[0],zero,zero,zero
	movd	8(%r8,%rcx), %xmm7              # xmm7 = mem[0],zero,zero,zero
	movd	12(%r8,%rcx), %xmm8             # xmm8 = mem[0],zero,zero,zero
	movd	(%r9,%rcx), %xmm9               # xmm9 = mem[0],zero,zero,zero
	pcmpeqb	%xmm5, %xmm9
	movd	4(%r9,%rcx), %xmm10             # xmm10 = mem[0],zero,zero,zero
	pcmpeqb	%xmm6, %xmm10
	movd	8(%r9,%rcx), %xmm6              # xmm6 = mem[0],zero,zero,zero
	pcmpeqb	%xmm7, %xmm6
	movd	12(%r9,%rcx), %xmm5             # xmm5 = mem[0],zero,zero,zero
	pcmpeqb	%xmm8, %xmm5
	punpcklbw	%xmm9, %xmm9            # xmm9 = xmm9[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm9, %xmm9            # xmm9 = xmm9[0,0,1,1,2,2,3,3]
	pxor	%xmm4, %xmm9
	por	%xmm9, %xmm0
	punpcklbw	%xmm10, %xmm10          # xmm10 = xmm10[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm10, %xmm10          # xmm10 = xmm10[0,0,1,1,2,2,3,3]
	pxor	%xmm4, %xmm10
	por	%xmm10, %xmm3
	punpcklbw	%xmm6, %xmm6            # xmm6 = xmm6[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm6, %xmm6            # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	pxor	%xmm4, %xmm6
	por	%xmm6, %xmm2
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm1
	addq	$16, %rcx
	cmpl	%ecx, %r11d
	jne	.LBB5_23
# %bb.24:                               # %middle.block
	por	%xmm0, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	pslld	$31, %xmm1
	movmskps	%xmm1, %ebp
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	sete	%cl
	cmpl	%r11d, %ebx
	je	.LBB5_26
.LBB5_25:                               # %for.body112
                                        # =>This Inner Loop Header: Depth=1
	movl	%r11d, %ebx
	movzbl	(%r8,%rbx), %ebp
	cmpb	(%r9,%rbx), %bpl
	cmovnel	%r10d, %ecx
	incl	%r11d
	cmpl	%edx, %r11d
	jbe	.LBB5_25
	jmp	.LBB5_26
.LBB5_10:                               # %for.cond.preheader
	leal	1(%rdx), %r10d
	xorl	%r8d, %r8d
	movl	$0, %r9d
	cmpl	$16, %r10d
	jb	.LBB5_14
# %bb.11:                               # %vector.ph465
	movl	%r10d, %r9d
	andl	$-16, %r9d
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
.LBB5_12:                               # %vector.body469
                                        # =>This Inner Loop Header: Depth=1
	movdqu	2052(%rdi,%rcx,4), %xmm5
	movdqu	2068(%rdi,%rcx,4), %xmm6
	movdqu	2084(%rdi,%rcx,4), %xmm7
	movdqu	2100(%rdi,%rcx,4), %xmm8
	movdqu	2052(%rsi,%rcx,4), %xmm9
	pcmpeqd	%xmm5, %xmm9
	movdqu	2068(%rsi,%rcx,4), %xmm5
	pcmpeqd	%xmm6, %xmm5
	movdqu	2084(%rsi,%rcx,4), %xmm6
	pcmpeqd	%xmm7, %xmm6
	movdqu	2100(%rsi,%rcx,4), %xmm7
	pcmpeqd	%xmm8, %xmm7
	pxor	%xmm4, %xmm9
	por	%xmm9, %xmm0
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm3
	pxor	%xmm4, %xmm6
	por	%xmm6, %xmm2
	pxor	%xmm4, %xmm7
	por	%xmm7, %xmm1
	addq	$16, %rcx
	cmpl	%ecx, %r9d
	jne	.LBB5_12
# %bb.13:                               # %middle.block462
	por	%xmm0, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	pslld	$31, %xmm1
	movmskps	%xmm1, %r11d
	xorl	%ecx, %ecx
	testl	%r11d, %r11d
	sete	%cl
	cmpl	%r9d, %r10d
	je	.LBB5_26
	.p2align	4, 0x90
.LBB5_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r9d, %r10d
	movl	2052(%rdi,%r10,4), %r11d
	cmpl	2052(%rsi,%r10,4), %r11d
	cmovnel	%r8d, %ecx
	incl	%r9d
	cmpl	%edx, %r9d
	jbe	.LBB5_14
	jmp	.LBB5_26
.LBB5_8:                                # %for.cond51.preheader
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	cmpl	$1, %edx
	jne	.LBB5_15
# %bb.9:
	xorl	%edx, %edx
	jmp	.LBB5_17
.LBB5_15:                               # %for.cond51.preheader.new
	movl	%r8d, %r10d
	andl	$-2, %r10d
	xorl	%edx, %edx
.LBB5_16:                               # %for.body55
                                        # =>This Inner Loop Header: Depth=1
	movl	2084(%rdi,%rdx,4), %r11d
	xorl	2084(%rsi,%rdx,4), %r11d
	movl	2088(%rdi,%rdx,4), %ebx
	movl	2116(%rdi,%rdx,4), %ebp
	xorl	2116(%rsi,%rdx,4), %ebp
	orl	%r11d, %ebp
	xorl	2088(%rsi,%rdx,4), %ebx
	movl	2120(%rdi,%rdx,4), %r11d
	xorl	2120(%rsi,%rdx,4), %r11d
	orl	%ebx, %r11d
	orl	%ebp, %r11d
	cmovnel	%r9d, %ecx
	addq	$2, %rdx
	cmpq	%rdx, %r10
	jne	.LBB5_16
.LBB5_17:                               # %if.end130.loopexit531.unr-lcssa
	testb	$1, %r8b
	je	.LBB5_26
# %bb.18:                               # %for.body55.epil
	movl	2084(%rdi,%rdx,4), %r8d
	movl	2116(%rdi,%rdx,4), %r9d
	xorl	2084(%rsi,%rdx,4), %r8d
	xorl	2116(%rsi,%rdx,4), %r9d
	xorl	%edx, %edx
	orl	%r8d, %r9d
	cmovnel	%edx, %ecx
	jmp	.LBB5_26
.Lfunc_end5:
	.size	pps_is_equal, .Lfunc_end5-pps_is_equal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI5_0:
	.quad	.LBB5_10
	.quad	.LBB5_26
	.quad	.LBB5_8
	.quad	.LBB5_19
	.quad	.LBB5_19
	.quad	.LBB5_19
	.quad	.LBB5_20
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AllocPPS: PPS"
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"AllocSPS: SPS"
	.size	.L.str.1, 14

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
