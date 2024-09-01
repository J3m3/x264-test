	.text
	.file	"mc_direct.c"
	.globl	get_colocated_info_4x4          # -- Begin function get_colocated_info_4x4
	.p2align	4, 0x90
	.type	get_colocated_info_4x4,@function
get_colocated_info_4x4:                 # @get_colocated_info_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %eax
	cmpb	$0, 40(%rsi)
	je	.LBB0_1
.LBB0_9:                                # %return
	retq
.LBB0_1:                                # %if.else
	movq	152(%rsi), %rsi
	movslq	%ecx, %rcx
	movq	(%rsi,%rcx,8), %rsi
	movslq	%edx, %rdx
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rcx
	movzbl	24(%rsi,%rdx), %edx
	cmpl	$255, %edx
	je	.LBB0_6
# %bb.2:                                # %if.else
	testl	%edx, %edx
	jne	.LBB0_9
# %bb.3:                                # %land.lhs.true
	movzwl	16(%rcx), %eax
	movl	%eax, %edx
	negw	%dx
	cmovsw	%ax, %dx
	cmpw	$1, %dx
	ja	.LBB0_5
# %bb.4:                                # %land.lhs.true9
	movzwl	18(%rcx), %eax
	movl	%eax, %ecx
	negw	%cx
	cmovsw	%ax, %cx
	xorl	%eax, %eax
	cmpw	$2, %cx
	jb	.LBB0_9
.LBB0_5:                                # %lor.rhs.thread
	movl	$1, %eax
	retq
.LBB0_6:                                # %land.lhs.true22
	cmpb	$0, 25(%rcx)
	jne	.LBB0_9
# %bb.7:                                # %land.lhs.true28
	movzwl	20(%rcx), %edx
	movl	%edx, %esi
	negw	%si
	cmovsw	%dx, %si
	cmpw	$1, %si
	ja	.LBB0_9
# %bb.8:                                # %land.rhs
	movzwl	22(%rcx), %eax
	movl	%eax, %ecx
	negw	%cx
	cmovsw	%ax, %cx
	xorl	%eax, %eax
	cmpw	$2, %cx
	setae	%al
	retq
.Lfunc_end0:
	.size	get_colocated_info_4x4, .Lfunc_end0-get_colocated_info_4x4
	.cfi_endproc
                                        # -- End function
	.globl	get_colocated_info_8x8          # -- Begin function get_colocated_info_8x8
	.p2align	4, 0x90
	.type	get_colocated_info_8x8,@function
get_colocated_info_8x8:                 # @get_colocated_info_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, %al
	cmpb	$0, 40(%rsi)
	je	.LBB1_1
# %bb.33:                               # %return
	movzbl	%al, %eax
	retq
.LBB1_1:                                # %if.else
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rdi), %r8
	movl	128(%r8), %r9d
	testl	%r9d, %r9d
	je	.LBB1_2
.LBB1_7:                                # %if.then12
	movl	%ecx, %r10d
	andl	$-2, %r10d
	movl	%ecx, %r11d
	shrl	%r11d
	andl	$1, %r11d
	orl	%r10d, %r11d
	movl	%edx, %r10d
	andl	$-2, %r10d
	shrl	%edx
	andl	$1, %edx
	orl	%r10d, %edx
	movq	152(%rsi), %r10
	movslq	%r11d, %r11
	movq	(%r10,%r11,8), %r10
	movslq	%edx, %rdx
	cmpl	$0, 176(%r8)
	je	.LBB1_13
# %bb.8:                                # %land.lhs.true17
	movl	184(%r8), %ebx
	cmpl	(%rsi), %ebx
	je	.LBB1_13
# %bb.9:                                # %land.lhs.true21
	cmpl	$0, 96(%rsi)
	je	.LBB1_13
# %bb.10:                               # %if.then24
	cmpl	$1, %ebx
	jne	.LBB1_12
# %bb.11:                               # %if.then27
	movq	224(%rsi), %rdi
	jmp	.LBB1_18
.LBB1_13:                               # %if.else37
	testl	%r9d, %r9d
	je	.LBB1_17
# %bb.14:                               # %land.lhs.true40
	cmpl	$0, 384(%rdi)
	jne	.LBB1_19
# %bb.15:                               # %land.lhs.true42
	movq	184(%rsi), %r9
	movslq	24(%rdi), %rdi
	cmpb	$0, (%r9,%rdi)
	jne	.LBB1_17
# %bb.16:                               # %land.lhs.true50
	cmpl	$1, 388(%rsi)
	jne	.LBB1_19
.LBB1_17:                               # %if.then57
	sarl	%ecx
	movq	13520(%r8), %rdi
	movl	4(%rdi), %r8d
	movq	232(%rsi), %rdi
	movl	%r8d, %r9d
	subl	4(%rdi), %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movq	224(%rsi), %rsi
	subl	4(%rsi), %r8d
	movl	%r8d, %r9d
	negl	%r9d
	cmovsl	%r8d, %r9d
	cmpl	%r9d, %r10d
	movslq	%ecx, %r11
	cmovaq	%rsi, %rdi
.LBB1_18:                               # %if.end85.sink.split
	movq	152(%rdi), %rcx
	movq	(%rcx,%r11,8), %r10
.LBB1_19:                               # %if.end85
	shlq	$5, %rdx
	leaq	(%r10,%rdx), %rcx
	movzbl	24(%r10,%rdx), %edx
	cmpl	$255, %edx
	je	.LBB1_21
.LBB1_28:                               # %if.end159
	testl	%edx, %edx
	jne	.LBB1_32
# %bb.29:                               # %land.lhs.true165
	movzwl	16(%rcx), %edx
	movl	%edx, %esi
	negw	%si
	cmovsw	%dx, %si
	cmpw	$1, %si
	ja	.LBB1_32
# %bb.30:                               # %land.lhs.true174
	movzwl	18(%rcx), %ecx
	movl	%ecx, %edx
	negw	%dx
	cmovsw	%cx, %dx
	cmpw	$2, %dx
	jae	.LBB1_32
# %bb.31:
	xorl	%eax, %eax
.LBB1_32:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movzbl	%al, %eax
	retq
.LBB1_2:                                # %lor.lhs.false
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	8(%rdi), %r10
	movq	16(%r10), %r11
	cmpl	$0, 3136(%r11)
	je	.LBB1_3
.LBB1_24:                               # %if.else133
	movq	152(%rsi), %r9
	movl	%ecx, %edi
	andl	$-2, %edi
	shrl	%ecx
	andl	$1, %ecx
	orl	%edi, %ecx
	movslq	%ecx, %rdi
	movl	%edx, %ecx
	andl	$-2, %ecx
	shrl	%edx
	andl	$1, %edx
	orl	%ecx, %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	movq	(%r9,%rdi,8), %rcx
	addq	%rdx, %rcx
	cmpl	$0, 849280(%r10)
	je	.LBB1_27
# %bb.25:                               # %land.lhs.true145
	cmpl	$3, 849088(%r10)
	jne	.LBB1_27
# %bb.26:                               # %if.then149
	movslq	216(%r8), %rcx
	movq	160(%rsi,%rcx,8), %rcx
	addq	(%rcx,%rdi,8), %rdx
	movq	%rdx, %rcx
.LBB1_27:                               # %if.end159
	movzbl	24(%rcx), %edx
	cmpl	$255, %edx
	jne	.LBB1_28
.LBB1_21:                               # %land.lhs.true110
	cmpb	$0, 25(%rcx)
	jne	.LBB1_32
# %bb.22:                               # %land.lhs.true116
	movzwl	20(%rcx), %edx
	movl	%edx, %esi
	negw	%si
	cmovsw	%dx, %si
	cmpw	$1, %si
	ja	.LBB1_32
# %bb.23:                               # %land.rhs
	movzwl	22(%rcx), %eax
	movl	%eax, %ecx
	negw	%cx
	cmovsw	%ax, %cx
	cmpw	$2, %cx
	setae	%al
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movzbl	%al, %eax
	retq
.LBB1_3:                                # %land.lhs.true
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	184(%r8), %r11d
	testl	%r11d, %r11d
	jne	.LBB1_5
# %bb.4:                                # %land.lhs.true5
	cmpl	$1, 388(%rsi)
	je	.LBB1_7
.LBB1_5:                                # %lor.lhs.false6
	cmpl	(%rsi), %r11d
	je	.LBB1_24
# %bb.6:                                # %land.lhs.true10
	cmpl	$0, 96(%rsi)
	jne	.LBB1_7
	jmp	.LBB1_24
.LBB1_12:                               # %if.else31
	movq	232(%rsi), %rdi
	jmp	.LBB1_18
.Lfunc_end1:
	.size	get_colocated_info_8x8, .Lfunc_end1-get_colocated_info_8x8
	.cfi_endproc
                                        # -- End function
	.globl	update_direct_types             # -- Begin function update_direct_types
	.p2align	4, 0x90
	.type	update_direct_types,@function
update_direct_types:                    # @update_direct_types
	.cfi_startproc
# %bb.0:                                # %entry
	movq	24(%rdi), %rax
	cmpl	$0, 3144(%rax)
	movl	$update_direct_mv_info_spatial_4x4, %eax
	movl	$update_direct_mv_info_spatial_8x8, %ecx
	cmoveq	%rax, %rcx
	cmpl	$0, 132(%rdi)
	movl	$update_direct_mv_info_temporal, %eax
	cmovneq	%rcx, %rax
	movq	%rax, 13496(%rdi)
	retq
.Lfunc_end2:
	.size	update_direct_types, .Lfunc_end2-update_direct_types
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function update_direct_mv_info_spatial_8x8
	.type	update_direct_mv_info_spatial_8x8,@function
update_direct_mv_info_spatial_8x8:      # @update_direct_mv_info_spatial_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movd	364(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	pxor	%xmm1, %xmm1
	pcmpeqb	%xmm0, %xmm1
	movmskps	%xmm1, %eax
	testl	%eax, %eax
	je	.LBB3_31
# %bb.1:                                # %if.then
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
	movq	(%rdi), %rax
	movq	13520(%rax), %rsi
	movswq	114(%rdi), %rcx
	movq	264(%rax,%rcx,8), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	272(%rax,%rcx,8), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	28(%rsp), %rdx
	leaq	24(%rsp), %rcx
	leaq	15(%rsp), %r8
	leaq	14(%rsp), %r9
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	callq	prepare_direct_params@PLT
	movq	40(%rsp), %rdi                  # 8-byte Reload
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	jmp	.LBB3_2
.LBB3_20:                               # %if.then184
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 8(%r14)
	movq	$0, 16(%r14)
	movw	$0, 24(%r14)
.LBB3_28:                               # %if.end261
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	152(%rax), %rax
	movq	(%rax,%r13,8), %rcx
	movslq	%r15d, %rdx
	shlq	$5, %rdx
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 48(%rcx,%rdx)
	movups	%xmm0, 32(%rcx,%rdx)
	movq	8(%rax,%r13,8), %rcx
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 16(%rcx,%rbx)
	movups	%xmm0, (%rcx,%rbx)
	movq	8(%rax,%r13,8), %rax
	movdqu	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 48(%rax,%rdx)
	movdqu	%xmm0, 32(%rax,%rdx)
.LBB3_29:                               # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%r12
	addl	$2, %ebp
	cmpq	$4, %r12
	je	.LBB3_30
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, 364(%rdi,%r12)
	jne	.LBB3_29
# %bb.3:                                # %if.then35
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%ebp, %eax
	andl	$2, %eax
	movl	%r12d, %edx
	andl	$2, %edx
	movslq	36(%rdi), %r13
	addq	%rdx, %r13
	movslq	32(%rdi), %r15
	addq	%rax, %r15
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	152(%rax), %rax
	movq	%r15, %rbx
	shlq	$5, %rbx
	movq	(%rax,%r13,8), %r14
	addq	%rbx, %r14
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rsi
	movl	40(%rdi), %ecx
	addl	%edx, %ecx
	movl	%r15d, %edx
	callq	get_colocated_info_8x8
	movzbl	15(%rsp), %ecx
	movsbq	%cl, %rdx
	testl	%eax, %eax
	je	.LBB3_4
# %bb.18:                               # %if.else176thread-pre-split
                                        #   in Loop: Header=BB3_2 Depth=1
	movzbl	14(%rsp), %eax
	jmp	.LBB3_19
.LBB3_4:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_2 Depth=1
	testb	%cl, %cl
	sete	%sil
	movsbq	14(%rsp), %rax
	testq	%rax, %rax
	sete	%dil
	orb	%sil, %dil
	cmpb	$1, %dil
	jne	.LBB3_19
# %bb.5:                                # %if.then55
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpb	$-1, %al
	movq	40(%rsp), %rdi                  # 8-byte Reload
	je	.LBB3_6
# %bb.9:                                # %if.else90
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpb	$-1, %cl
	je	.LBB3_10
# %bb.12:                               # %if.else129
                                        #   in Loop: Header=BB3_2 Depth=1
	testb	%cl, %cl
	je	.LBB3_13
# %bb.14:                               # %if.else141
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 8(%r14)
	movl	28(%rsp), %eax
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_19:                               # %if.else176
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	40(%rsp), %rdi                  # 8-byte Reload
	testb	%al, %cl
	js	.LBB3_20
# %bb.21:                               # %if.else199
                                        #   in Loop: Header=BB3_2 Depth=1
	testb	%cl, %cl
	js	.LBB3_22
# %bb.24:                               # %if.else219
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rdx,8), %rdx
	movq	%rdx, (%r14)
	testb	%al, %al
	js	.LBB3_25
# %bb.26:                               # %if.else239
                                        #   in Loop: Header=BB3_2 Depth=1
	movzbl	%al, %eax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rax,8), %rax
	movq	%rax, 8(%r14)
	movl	28(%rsp), %eax
	movl	%eax, 16(%r14)
	movl	24(%rsp), %eax
	movl	%eax, 20(%r14)
	movb	%cl, 24(%r14)
	jmp	.LBB3_27
.LBB3_22:                               # %if.then203
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	$0, (%r14)
	movsbq	%al, %rax
.LBB3_23:                               # %if.else112
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, 8(%r14)
	movl	$0, 16(%r14)
	movl	24(%rsp), %eax
	movl	%eax, 20(%r14)
	movb	$-1, 24(%r14)
.LBB3_27:                               # %if.end261
                                        #   in Loop: Header=BB3_2 Depth=1
	movzbl	14(%rsp), %eax
	movb	%al, 25(%r14)
	jmp	.LBB3_28
.LBB3_6:                                # %if.then59
                                        #   in Loop: Header=BB3_2 Depth=1
	testb	%cl, %cl
	je	.LBB3_7
# %bb.8:                                # %if.else
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%rdx,8), %rax
	movq	%rax, (%r14)
.LBB3_25:                               # %if.then223
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	$0, 8(%r14)
	movl	28(%rsp), %eax
	movl	%eax, 16(%r14)
	movl	$0, 20(%r14)
	movb	%cl, 24(%r14)
	movb	$-1, 25(%r14)
	jmp	.LBB3_28
.LBB3_10:                               # %if.then94
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	$0, (%r14)
	testb	%al, %al
	jne	.LBB3_23
# %bb.11:                               # %if.then98
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 8(%r14)
	movq	$0, 16(%r14)
	movw	$255, 24(%r14)
	jmp	.LBB3_28
.LBB3_13:                               # %if.then133
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB3_15:                               # %if.end151
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%eax, 16(%r14)
	movb	%cl, 24(%r14)
	movsbq	14(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_16
# %bb.17:                               # %if.else163
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, 8(%r14)
	movl	24(%rsp), %ecx
	movl	%ecx, 20(%r14)
	movb	%al, 25(%r14)
	jmp	.LBB3_28
.LBB3_16:                               # %if.then155
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 8(%r14)
	movl	$0, 20(%r14)
	movb	$0, 25(%r14)
	jmp	.LBB3_28
.LBB3_7:                                # %if.then63
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 8(%r14)
	movq	$0, 16(%r14)
	movw	$-256, 24(%r14)
	jmp	.LBB3_28
.LBB3_30:                               # %for.end
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB3_31:                               # %if.end266
	retq
.Lfunc_end3:
	.size	update_direct_mv_info_spatial_8x8, .Lfunc_end3-update_direct_mv_info_spatial_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function update_direct_mv_info_temporal
	.type	update_direct_mv_info_temporal,@function
update_direct_mv_info_temporal:         # @update_direct_mv_info_temporal
	.cfi_startproc
# %bb.0:                                # %entry
	movl	152(%rdi), %ecx
	cmpw	$8, %cx
	movl	$4, %eax
	cmovnel	%ecx, %eax
	movd	364(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	pxor	%xmm1, %xmm1
	pcmpeqb	%xmm0, %xmm1
	movmskps	%xmm1, %ecx
	testl	%ecx, %ecx
	je	.LBB4_118
# %bb.1:                                # %for.cond.preheader
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movswq	%ax, %rax
	movslq	BLOCK_STEP+4(,%rax,8), %rsi
	movswq	114(%rdi), %rcx
	movq	264(%r14,%rcx,8), %r15
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	272(%r14,%rcx,8), %rbp
	movslq	BLOCK_STEP(,%rax,8), %rcx
	movq	13520(%r14), %r13
	movq	8(%rdi), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	leaq	336(%r14), %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shlq	$5, %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	$0, 48(%rsp)                    # 8-byte Folded Spill
	movq	%r13, (%rsp)                    # 8-byte Spill
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_2:                                # %for.inc1016
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	incq	%rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	cmpq	$4, %rax
	je	.LBB4_117
.LBB4_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #       Child Loop BB4_10 Depth 3
                                        #         Child Loop BB4_56 Depth 4
                                        #         Child Loop BB4_49 Depth 4
                                        #         Child Loop BB4_63 Depth 4
                                        #           Child Loop BB4_65 Depth 5
                                        #         Child Loop BB4_40 Depth 4
                                        #           Child Loop BB4_41 Depth 5
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	cmpb	$0, 364(%rbx,%rax)
	jne	.LBB4_2
# %bb.4:                                # %if.then47
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %edx
	andl	$1, %edx
	shll	$6, %edx
	addl	%eax, %eax
	andl	$2, %eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %rdi
	movabsq	$9223372036854775806, %rcx      # imm = 0x7FFFFFFFFFFFFFFE
	andq	%rcx, %rdi
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movb	$2, 368(%rbx,%rax)
	movl	%eax, %r11d
	andl	$2, %r11d
	leal	2(%r11), %ecx
	movl	%ecx, 80(%rsp)                  # 4-byte Spill
	leal	(%rax,%rax), %ecx
	andl	$2, %ecx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	leal	2(%rcx), %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	32(%rbx), %eax
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	leaq	16(%rdx), %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB4_6
	.p2align	4, 0x90
.LBB4_5:                                # %for.inc1012
                                        #   in Loop: Header=BB4_6 Depth=2
	movq	16(%rsp), %rsi                  # 8-byte Reload
	addq	%rsi, 96(%rsp)                  # 8-byte Folded Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %r11d
	cmpl	80(%rsp), %ecx                  # 4-byte Folded Reload
	jge	.LBB4_2
.LBB4_6:                                # %for.body56
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_10 Depth 3
                                        #         Child Loop BB4_56 Depth 4
                                        #         Child Loop BB4_49 Depth 4
                                        #         Child Loop BB4_63 Depth 4
                                        #           Child Loop BB4_65 Depth 5
                                        #         Child Loop BB4_40 Depth 4
                                        #           Child Loop BB4_41 Depth 5
	movq	168(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	104(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	addl	%r11d, %esi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	cmpl	%edx, %ecx
	jge	.LBB4_5
# %bb.7:                                # %for.body67.lr.ph
                                        #   in Loop: Header=BB4_6 Depth=2
	movslq	%eax, %rcx
	movq	152(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	shlq	$5, %rcx
	movq	160(%rsp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	addq	144(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	%r11, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB4_10
.LBB4_8:                                # %if.then1005
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	$.L.str, %edi
	movl	$-1111, %esi                    # imm = 0xFBA9
	callq	error@PLT
	.p2align	4, 0x90
.LBB4_9:                                # %if.end1008
                                        #   in Loop: Header=BB4_10 Depth=3
	addq	8(%rsp), %r12                   # 8-byte Folded Reload
	movl	32(%rbx), %eax
	movq	104(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	184(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, 128(%rsp)                 # 8-byte Folded Spill
	addq	%rdx, 120(%rsp)                 # 8-byte Folded Spill
	cmpq	%rcx, %r12
	movq	112(%rsp), %r11                 # 8-byte Reload
	jge	.LBB4_5
.LBB4_10:                               # %for.body67
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_56 Depth 4
                                        #         Child Loop BB4_49 Depth 4
                                        #         Child Loop BB4_63 Depth 4
                                        #           Child Loop BB4_65 Depth 5
                                        #         Child Loop BB4_40 Depth 4
                                        #           Child Loop BB4_41 Depth 5
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %r8
	movl	3144(%r8), %esi
	movl	40(%rbx), %eax
	addl	%r11d, %eax
	movq	(%rbp), %rdi
	movq	152(%rdi), %rcx
	testl	%esi, %esi
	je	.LBB4_12
# %bb.11:                               # %cond.true69
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	%eax, %edx
	andl	$-2, %edx
	movl	%eax, %r9d
	shrl	%r9d
	andl	$1, %r9d
	orl	%edx, %r9d
	movslq	%r9d, %r9
	movl	%r12d, %edx
	andl	$-2, %edx
	movl	%r12d, %r10d
	shrl	%r10d
	andl	$1, %r10d
	orl	%edx, %r10d
	movslq	%r10d, %rdx
	jmp	.LBB4_13
	.p2align	4, 0x90
.LBB4_12:                               # %cond.false77
                                        #   in Loop: Header=BB4_10 Depth=3
	movslq	%eax, %r9
	movq	%r12, %rdx
.LBB4_13:                               # %cond.end86
                                        #   in Loop: Header=BB4_10 Depth=3
	shlq	$5, %rdx
	addq	(%rcx,%r9,8), %rdx
	movl	128(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB4_21
# %bb.14:                               # %if.then89
                                        #   in Loop: Header=BB4_10 Depth=3
	cmpl	$0, 384(%rbx)
	jne	.LBB4_33
# %bb.15:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	272(%r14), %rdi
	movq	(%rdi), %rdi
	movl	388(%rdi), %r8d
	cmpl	$1, %r8d
	je	.LBB4_18
# %bb.16:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_10 Depth=3
	cmpl	$3, %r8d
	jne	.LBB4_33
# %bb.17:                               # %land.lhs.true96
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	184(%rdi), %rdi
	movslq	24(%rbx), %r8
	cmpb	$0, (%rdi,%r8)
	je	.LBB4_33
.LBB4_18:                               # %if.then111
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	4(%r13), %r8d
	movq	304(%r14), %rdx
	movq	(%rdx), %rdx
	movl	%r8d, %edi
	subl	4(%rdx), %edi
	movl	%edi, %r9d
	negl	%r9d
	cmovsl	%edi, %r9d
	movq	288(%r14), %rdi
	movq	(%rdi), %rdi
	subl	4(%rdi), %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	sarl	%eax
	cltq
	cmpl	%r10d, %r9d
	jbe	.LBB4_30
.LBB4_19:                               # %if.then126
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	152(%rdi), %rdx
	movq	(%rdx,%rax,8), %rdx
	testl	%esi, %esi
	je	.LBB4_31
.LBB4_20:                               # %cond.true130
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	%r12d, %eax
	andl	$-2, %eax
	movl	%r12d, %esi
	shrl	%esi
	andl	$1, %esi
	orl	%eax, %esi
	movslq	%esi, %rax
	jmp	.LBB4_32
	.p2align	4, 0x90
.LBB4_21:                               # %if.else190
                                        #   in Loop: Header=BB4_10 Depth=3
	cmpl	$0, 3136(%r8)
	jne	.LBB4_33
# %bb.22:                               # %land.lhs.true193
                                        #   in Loop: Header=BB4_10 Depth=3
	cmpl	$0, 176(%r14)
	je	.LBB4_28
# %bb.23:                               # %land.lhs.true283
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	184(%r14), %r8d
	cmpl	(%rdi), %r8d
	je	.LBB4_33
# %bb.24:                               # %land.lhs.true288
                                        #   in Loop: Header=BB4_10 Depth=3
	cmpl	$0, 96(%rdi)
	je	.LBB4_33
# %bb.25:                               # %if.then291
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	240(%rdi), %rdx
	cmpl	$1, %r8d
	jne	.LBB4_114
# %bb.26:                               # %if.then295
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	224(%rdx), %rdx
	movq	152(%rdx), %rdi
	testl	%esi, %esi
	je	.LBB4_115
.LBB4_27:                               # %cond.true299
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	%eax, %edx
	andl	$-2, %edx
	shrl	%eax
	andl	$1, %eax
	orl	%edx, %eax
	cltq
	movl	%r12d, %edx
	andl	$-2, %edx
	movl	%r12d, %esi
	shrl	%esi
	andl	$1, %esi
	orl	%edx, %esi
	movslq	%esi, %rdx
	jmp	.LBB4_116
.LBB4_28:                               # %land.lhs.true195
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	272(%r14), %r8
	movq	(%r8), %r8
	cmpl	$0, 388(%r8)
	je	.LBB4_33
# %bb.29:                               # %if.then202
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	4(%r13), %r8d
	movq	224(%rdi), %rdx
	movq	232(%rdi), %rdi
	movl	%r8d, %r9d
	subl	4(%rdi), %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	subl	4(%rdx), %r8d
	movl	%r8d, %r9d
	negl	%r9d
	cmovsl	%r8d, %r9d
	sarl	%eax
	cltq
	cmpl	%r9d, %r10d
	jbe	.LBB4_19
.LBB4_30:                               # %if.else
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	152(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testl	%esi, %esi
	jne	.LBB4_20
.LBB4_31:                               # %cond.false144
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	%r12, %rax
.LBB4_32:                               # %if.end357
                                        #   in Loop: Header=BB4_10 Depth=3
	shlq	$5, %rax
	addq	%rax, %rdx
	.p2align	4, 0x90
.LBB4_33:                               # %if.end357
                                        #   in Loop: Header=BB4_10 Depth=3
	xorl	%eax, %eax
	cmpb	$-1, 24(%rdx)
	sete	%al
	cmpb	$-1, 24(%rdx,%rax)
	je	.LBB4_37
# %bb.34:                               # %if.else405
                                        #   in Loop: Header=BB4_10 Depth=3
	testl	%ecx, %ecx
	je	.LBB4_43
# %bb.35:                               # %land.lhs.true408
                                        #   in Loop: Header=BB4_10 Depth=3
	cmpl	$0, 384(%rbx)
	movq	(%rdx,%rax,8), %rcx
	movl	(%rcx), %esi
	movq	40(%rsp), %r8                   # 8-byte Reload
	je	.LBB4_46
# %bb.36:                               # %land.lhs.true411
                                        #   in Loop: Header=BB4_10 Depth=3
	testl	%esi, %esi
	jne	.LBB4_54
	jmp	.LBB4_47
	.p2align	4, 0x90
.LBB4_37:                               # %if.then370
                                        #   in Loop: Header=BB4_10 Depth=3
	movslq	36(%rbx), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addl	%eax, %ecx
	leal	(%rax,%r11), %edx
	cmpl	%ecx, %edx
	jge	.LBB4_9
# %bb.38:                               # %for.cond379.preheader.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=3
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jle	.LBB4_9
# %bb.39:                               # %for.cond379.preheader.us.preheader
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	%r12, %rcx
	addq	96(%rsp), %rax                  # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB4_40:                               # %for.cond379.preheader.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_41 Depth 5
	movq	120(%rsp), %rdx                 # 8-byte Reload
	movq	%r12, %rsi
	.p2align	4, 0x90
.LBB4_41:                               # %for.body383.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        #         Parent Loop BB4_40 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	152(%r13), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	(%r15), %r8
	movq	%r8, -16(%rdi,%rdx)
	movq	(%rbp), %r8
	movq	%r8, -8(%rdi,%rdx)
	incq	%rsi
	movq	$0, (%rdi,%rdx)
	movw	$0, 8(%rdi,%rdx)
	addq	$32, %rdx
	cmpq	%rcx, %rsi
	jl	.LBB4_41
# %bb.42:                               # %for.cond379.for.inc402_crit_edge.us
                                        #   in Loop: Header=BB4_40 Depth=4
	incq	%rax
	movl	36(%rbx), %edx
	addl	24(%rsp), %edx                  # 4-byte Folded Reload
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB4_40
	jmp	.LBB4_9
	.p2align	4, 0x90
.LBB4_43:                               # %land.lhs.true431
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	176(%r14), %ecx
	cmpl	$1, %ecx
	movq	40(%rsp), %r8                   # 8-byte Reload
	je	.LBB4_53
# %bb.44:                               # %land.lhs.true431
                                        #   in Loop: Header=BB4_10 Depth=3
	testl	%ecx, %ecx
	jne	.LBB4_54
# %bb.45:                               # %land.lhs.true435
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	(%rdx,%rax,8), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB4_47
	jmp	.LBB4_54
.LBB4_46:                               # %land.lhs.true421
                                        #   in Loop: Header=BB4_10 Depth=3
	testl	%esi, %esi
	je	.LBB4_54
.LBB4_47:                               # %if.then453
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	136(%r14), %esi
	movsbl	256(%r14,%r8), %edx
	cmpl	%edx, %esi
	cmovll	%esi, %edx
	testl	%edx, %edx
	jle	.LBB4_58
# %bb.48:                               # %for.body463.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	264(%r14,%r8,8), %rsi
	movl	%edx, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB4_49:                               # %for.body463
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rsi,%rdx,8), %r8
	cmpq	%rcx, 224(%r8)
	je	.LBB4_59
# %bb.50:                               # %lor.lhs.false476
                                        #   in Loop: Header=BB4_49 Depth=4
	cmpq	%rcx, 232(%r8)
	je	.LBB4_59
# %bb.51:                               # %lor.lhs.false489
                                        #   in Loop: Header=BB4_49 Depth=4
	cmpq	%rcx, 240(%r8)
	je	.LBB4_59
# %bb.52:                               # %if.else503
                                        #   in Loop: Header=BB4_49 Depth=4
	incq	%rdx
	cmpq	%rdx, %rdi
	jne	.LBB4_49
	jmp	.LBB4_8
.LBB4_53:                               # %land.lhs.true446
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	(%rdx,%rax,8), %rcx
	cmpl	$0, (%rcx)
	je	.LBB4_47
	.p2align	4, 0x90
.LBB4_54:                               # %if.else508
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	136(%r14), %ecx
	movsbl	256(%r14,%r8), %edi
	cmpl	%edi, %ecx
	cmovll	%ecx, %edi
	testl	%edi, %edi
	jle	.LBB4_58
# %bb.55:                               # %for.body520.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	264(%r14,%r8,8), %rcx
	movq	(%rdx,%rax,8), %rsi
	movl	%edi, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB4_56:                               # %for.body520
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%rsi, (%rcx,%rdx,8)
	je	.LBB4_59
# %bb.57:                               # %if.else533
                                        #   in Loop: Header=BB4_56 Depth=4
	incq	%rdx
	cmpq	%rdx, %rdi
	jne	.LBB4_56
	jmp	.LBB4_8
	.p2align	4, 0x90
.LBB4_58:                               #   in Loop: Header=BB4_10 Depth=3
	movl	$-1, %edx
.LBB4_59:                               # %if.end538
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	16(%rsp), %rcx                  # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB4_9
# %bb.60:                               # %for.body546.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=3
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jle	.LBB4_9
# %bb.61:                               # %for.body546.us.preheader
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	%r12, %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rsi                  # 8-byte Reload
	shlq	$7, %rsi
	addq	176(%rsp), %rsi                 # 8-byte Folded Reload
	movslq	%edx, %rdx
	leaq	(%rsi,%rdx,4), %rcx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	%r12, 192(%rsp)                 # 8-byte Spill
	jmp	.LBB4_63
	.p2align	4, 0x90
.LBB4_62:                               # %for.cond551.for.inc999_crit_edge.us
                                        #   in Loop: Header=BB4_63 Depth=4
	movl	84(%rsp), %ecx                  # 4-byte Reload
	incl	%ecx
	cmpl	24(%rsp), %ecx                  # 4-byte Folded Reload
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movq	192(%rsp), %r12                 # 8-byte Reload
	jge	.LBB4_9
.LBB4_63:                               # %for.body546.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_65 Depth 5
	movslq	36(%rbx), %r8
	movl	%ecx, 84(%rsp)                  # 4-byte Spill
	movslq	%ecx, %rdi
	addq	%rdi, %r8
	movslq	40(%rbx), %rsi
	addq	%rdi, %rsi
	movl	%esi, %edi
	andl	$-2, %edi
	movl	%esi, %r9d
	shrl	%r9d
	andl	$1, %r9d
	orl	%edi, %r9d
	movslq	%r9d, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	movl	%esi, %edi
	sarl	%edi
	movslq	%edi, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %r11                 # 8-byte Reload
	jmp	.LBB4_65
	.p2align	4, 0x90
.LBB4_64:                               # %if.then939.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movzwl	(%r9), %ecx
	movw	%cx, 16(%rbx,%r11)
	movw	%r10w, 18(%rbx,%r11)
	movl	$0, 20(%rbx,%r11)
	incq	%r12
	addq	$32, %r11
	cmpq	208(%rsp), %r12                 # 8-byte Folded Reload
	jge	.LBB4_62
.LBB4_65:                               # %for.body555.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        #         Parent Loop BB4_63 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r15, %rsi
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	16(%rcx), %r15
	movl	3144(%r15), %r9d
	movq	(%rbp), %r10
	movq	152(%r10), %rbx
	testl	%r9d, %r9d
	je	.LBB4_70
# %bb.66:                               # %cond.true560.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movl	%r12d, %edi
	andl	$-2, %edi
	movl	%r12d, %r13d
	shrl	%r13d
	andl	$1, %r13d
	orl	%edi, %r13d
	movslq	%r13d, %rdi
	movq	(%rsp), %r13                    # 8-byte Reload
	shlq	$5, %rdi
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	(%rbx,%rcx,8), %rdi
	movq	152(%r13), %rbx
	movq	(%rbx,%r8,8), %rbx
	cmpl	$0, 128(%r14)
	je	.LBB4_71
.LBB4_67:                               # %if.then586.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	72(%rsp), %rcx                  # 8-byte Reload
	cmpl	$0, 384(%rcx)
	je	.LBB4_76
# %bb.68:                               # %land.lhs.true887.us
                                        #   in Loop: Header=BB4_65 Depth=5
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	movzwl	18(%rdi,%rax,4), %r15d
	movq	(%rdi,%rax,8), %rcx
	cmpl	$0, (%rcx)
	je	.LBB4_75
# %bb.69:                               #   in Loop: Header=BB4_65 Depth=5
	movswl	%r15w, %r10d
	jmp	.LBB4_111
	.p2align	4, 0x90
.LBB4_70:                               # %cond.false569.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rbx,%rcx,8), %rdi
	addq	%r11, %rdi
	movq	152(%r13), %rbx
	movq	(%rbx,%r8,8), %rbx
	cmpl	$0, 128(%r14)
	jne	.LBB4_67
.LBB4_71:                               # %if.else689.us
                                        #   in Loop: Header=BB4_65 Depth=5
	cmpl	$0, 3136(%r15)
	movl	176(%r14), %r13d
	je	.LBB4_82
# %bb.72:                               # %land.lhs.true868.us
                                        #   in Loop: Header=BB4_65 Depth=5
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	movzwl	18(%rdi,%rax,4), %r15d
	movswl	%r15w, %r10d
	testl	%r13d, %r13d
	je	.LBB4_105
# %bb.73:                               # %land.lhs.true897.us
                                        #   in Loop: Header=BB4_65 Depth=5
	cmpl	$1, %r13d
	jne	.LBB4_110
.LBB4_74:                               # %land.lhs.true901.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	(%rdi,%rax,8), %rcx
	cmpl	$0, (%rcx)
	movq	(%rsp), %r13                    # 8-byte Reload
	jne	.LBB4_111
.LBB4_75:                               # %if.then908.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movzwl	%r15w, %ecx
	shrl	$15, %ecx
	addl	%r15d, %ecx
	movswl	%cx, %r10d
	sarl	%r10d
	jmp	.LBB4_111
	.p2align	4, 0x90
.LBB4_76:                               # %land.lhs.true589.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	272(%r14), %r10
	movq	(%r10), %r10
	movl	388(%r10), %r15d
	cmpl	$1, %r15d
	je	.LBB4_79
# %bb.77:                               # %land.lhs.true589.us
                                        #   in Loop: Header=BB4_65 Depth=5
	cmpl	$3, %r15d
	jne	.LBB4_97
# %bb.78:                               # %land.lhs.true596.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	184(%r10), %r10
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movslq	24(%rcx), %r15
	cmpb	$0, (%r10,%r15)
	je	.LBB4_97
.LBB4_79:                               # %if.then614.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movl	4(%r13), %r15d
	movq	288(%r14), %r10
	movq	304(%r14), %rdi
	movq	(%rdi), %rdi
	movl	%r15d, %r13d
	subl	4(%rdi), %r13d
	movl	%r13d, %ecx
	negl	%ecx
	cmovsl	%r13d, %ecx
	movq	(%r10), %r10
	subl	4(%r10), %r15d
	movl	%r15d, %r13d
	negl	%r13d
	cmovsl	%r15d, %r13d
	cmpl	%r13d, %ecx
	jbe	.LBB4_88
# %bb.80:                               # %if.then631.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	152(%r10), %rcx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rcx,%rdi,8), %rdi
	testl	%r9d, %r9d
	jne	.LBB4_89
# %bb.81:                               # %cond.false647.us
                                        #   in Loop: Header=BB4_65 Depth=5
	addq	%r11, %rdi
	jmp	.LBB4_96
.LBB4_82:                               # %land.lhs.true693.us
                                        #   in Loop: Header=BB4_65 Depth=5
	testl	%r13d, %r13d
	je	.LBB4_90
# %bb.83:                               # %land.lhs.true778.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movl	184(%r14), %r15d
	cmpl	(%r10), %r15d
	je	.LBB4_109
# %bb.84:                               # %land.lhs.true784.us
                                        #   in Loop: Header=BB4_65 Depth=5
	cmpl	$0, 96(%r10)
	je	.LBB4_109
# %bb.85:                               # %if.then788.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	240(%r10), %rdi
	cmpl	$1, %r15d
	jne	.LBB4_100
# %bb.86:                               # %if.then792.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	224(%rdi), %rcx
	movq	152(%rcx), %r10
	testl	%r9d, %r9d
	jne	.LBB4_101
# %bb.87:                               # %cond.false807.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rdi
	addq	%r11, %rdi
	jmp	.LBB4_109
.LBB4_88:                               # %if.else659.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	152(%rdi), %rcx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rcx,%rdi,8), %rdi
	testl	%r9d, %r9d
	je	.LBB4_94
.LBB4_89:                               # %cond.true663.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movl	%r12d, %ecx
	andl	$-2, %ecx
	movl	%r12d, %r9d
	shrl	%r9d
	andl	$1, %r9d
	orl	%ecx, %r9d
	movslq	%r9d, %rcx
	jmp	.LBB4_95
.LBB4_90:                               # %land.lhs.true696.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	272(%r14), %rcx
	movq	(%rcx), %rcx
	cmpl	$0, 388(%rcx)
	je	.LBB4_104
# %bb.91:                               # %if.then703.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	4(%rcx), %ecx
	movq	232(%r10), %rdi
	movl	%ecx, %r15d
	subl	4(%rdi), %r15d
	movl	%r15d, %r13d
	negl	%r13d
	cmovsl	%r15d, %r13d
	movq	224(%r10), %r10
	subl	4(%r10), %ecx
	movl	%ecx, %r15d
	negl	%r15d
	cmovsl	%ecx, %r15d
	cmpl	%r15d, %r13d
	jbe	.LBB4_98
# %bb.92:                               # %if.then718.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	152(%r10), %rcx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rcx,%rdi,8), %rdi
	testl	%r9d, %r9d
	jne	.LBB4_99
# %bb.93:                               # %cond.false733.us
                                        #   in Loop: Header=BB4_65 Depth=5
	addq	%r11, %rdi
	jmp	.LBB4_104
.LBB4_94:                               # %cond.false675.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	%r12, %rcx
.LBB4_95:                               # %land.lhs.true858.us
                                        #   in Loop: Header=BB4_65 Depth=5
	shlq	$5, %rcx
	addq	%rcx, %rdi
.LBB4_96:                               # %land.lhs.true858.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	(%rsp), %r13                    # 8-byte Reload
.LBB4_97:                               # %land.lhs.true858.us
                                        #   in Loop: Header=BB4_65 Depth=5
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	movswl	18(%rdi,%rax,4), %r10d
	movq	(%rdi,%rax,8), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB4_106
	jmp	.LBB4_111
.LBB4_98:                               # %if.else744.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	152(%rdi), %rcx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rcx,%rdi,8), %rdi
	testl	%r9d, %r9d
	je	.LBB4_102
.LBB4_99:                               # %cond.true748.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movl	%r12d, %ecx
	andl	$-2, %ecx
	movl	%r12d, %r9d
	shrl	%r9d
	andl	$1, %r9d
	orl	%ecx, %r9d
	movslq	%r9d, %rcx
	jmp	.LBB4_103
.LBB4_100:                              # %if.else818.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	232(%rdi), %rcx
	movq	152(%rcx), %r10
	testl	%r9d, %r9d
	je	.LBB4_107
.LBB4_101:                              # %cond.true822.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movl	%r12d, %ecx
	andl	$-2, %ecx
	movl	%r12d, %edi
	shrl	%edi
	andl	$1, %edi
	orl	%ecx, %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	movq	64(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB4_108
.LBB4_102:                              # %cond.false759.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	%r12, %rcx
.LBB4_103:                              # %land.lhs.true868.us.thread1586
                                        #   in Loop: Header=BB4_65 Depth=5
	shlq	$5, %rcx
	addq	%rcx, %rdi
.LBB4_104:                              # %land.lhs.true868.us.thread1586
                                        #   in Loop: Header=BB4_65 Depth=5
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	movswl	18(%rdi,%rax,4), %r10d
.LBB4_105:                              # %land.lhs.true872.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	(%rdi,%rax,8), %rcx
	cmpl	$0, (%rcx)
	movq	(%rsp), %r13                    # 8-byte Reload
	je	.LBB4_111
.LBB4_106:                              # %if.then879.us
                                        #   in Loop: Header=BB4_65 Depth=5
	addl	%r10d, %r10d
	jmp	.LBB4_111
.LBB4_107:                              # %cond.false833.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	%r12, %rdi
	shlq	$5, %rdi
	movq	56(%rsp), %rcx                  # 8-byte Reload
.LBB4_108:                              # %land.lhs.true868.us.thread
                                        #   in Loop: Header=BB4_65 Depth=5
	addq	(%r10,%rcx,8), %rdi
.LBB4_109:                              # %land.lhs.true868.us.thread
                                        #   in Loop: Header=BB4_65 Depth=5
	leaq	(%rdi,%rax,4), %r9
	addq	$16, %r9
	movzwl	18(%rdi,%rax,4), %r15d
	movswl	%r15w, %r10d
	cmpl	$1, %r13d
	je	.LBB4_74
.LBB4_110:                              #   in Loop: Header=BB4_65 Depth=5
	movq	(%rsp), %r13                    # 8-byte Reload
	.p2align	4, 0x90
.LBB4_111:                              # %if.end910.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movl	(%rcx), %edi
	movb	%dl, 24(%rbx,%r11)
	movb	$0, 25(%rbx,%r11)
	movq	%rsi, %r15
	movq	(%rsi,%rdx,8), %rcx
	movq	%rcx, (%rbx,%r11)
	movq	(%rbp), %rcx
	movq	%rcx, 8(%rbx,%r11)
	cmpl	$9999, %edi                     # imm = 0x270F
	je	.LBB4_64
# %bb.112:                              # %lor.lhs.false930.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	264(%r14,%rcx,8), %rcx
	movq	(%rcx,%rdx,8), %rcx
	cmpb	$0, 40(%rcx)
	jne	.LBB4_64
# %bb.113:                              # %if.else952.us
                                        #   in Loop: Header=BB4_65 Depth=5
	movswl	(%r9), %ecx
	imull	%edi, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	movw	%cx, 16(%rbx,%r11)
	imull	%r10d, %edi
	subl	$-128, %edi
	shrl	$8, %edi
	movw	%di, 18(%rbx,%r11)
	subw	(%r9), %cx
	movw	%cx, 20(%rbx,%r11)
	subl	%r10d, %edi
	movw	%di, 22(%rbx,%r11)
	incq	%r12
	addq	$32, %r11
	cmpq	208(%rsp), %r12                 # 8-byte Folded Reload
	jl	.LBB4_65
	jmp	.LBB4_62
.LBB4_114:                              # %if.else324
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	232(%rdx), %rdx
	movq	152(%rdx), %rdi
	testl	%esi, %esi
	jne	.LBB4_27
.LBB4_115:                              # %cond.false341
                                        #   in Loop: Header=BB4_10 Depth=3
	cltq
	movq	%r12, %rdx
.LBB4_116:                              # %if.end357
                                        #   in Loop: Header=BB4_10 Depth=3
	shlq	$5, %rdx
	addq	(%rdi,%rax,8), %rdx
	jmp	.LBB4_33
.LBB4_117:
	addq	$216, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB4_118:                              # %if.end1019
	retq
.Lfunc_end4:
	.size	update_direct_mv_info_temporal, .Lfunc_end4-update_direct_mv_info_temporal
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function update_direct_mv_info_spatial_4x4
	.type	update_direct_mv_info_spatial_4x4,@function
update_direct_mv_info_spatial_4x4:      # @update_direct_mv_info_spatial_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	movd	364(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	pxor	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	movmskps	%xmm0, %eax
	testl	%eax, %eax
	je	.LBB5_42
# %bb.1:                                # %if.then
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
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	856456(%rcx), %r14
	movswq	114(%rdi), %rcx
	movq	264(%rax,%rcx,8), %r15
	movq	272(%rax,%rcx,8), %r12
	leaq	12(%rsp), %rdx
	leaq	8(%rsp), %rcx
	leaq	7(%rsp), %r8
	leaq	6(%rsp), %r9
	movq	%r14, %rsi
	callq	prepare_direct_params@PLT
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB5_2
	.p2align	4, 0x90
.LBB5_40:                               # %for.inc281
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	incq	%rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	cmpq	$4, %rax
	je	.LBB5_41
.LBB5_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
                                        #       Child Loop BB5_6 Depth 3
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpb	$0, 364(%rbx,%rax)
	jne	.LBB5_40
# %bb.3:                                # %if.then36
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %edx
	andl	$1, %edx
	shll	$6, %edx
	addl	%eax, %eax
	andl	$2, %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leal	(%rcx,%rcx), %esi
	andl	$2, %esi
	movl	%ecx, %edi
	andl	$2, %edi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	leal	2(%rsi), %r9d
	movl	32(%rbx), %eax
                                        # kill: def $ecx killed $ecx killed $rcx
	orl	$1, %ecx
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	addq	$25, %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB5_4
	.p2align	4, 0x90
.LBB5_39:                               # %for.inc277
                                        #   in Loop: Header=BB5_4 Depth=2
	movq	72(%rsp), %rdx                  # 8-byte Reload
	leal	1(%rdx), %ecx
	cmpl	28(%rsp), %edx                  # 4-byte Folded Reload
	movl	%ecx, %edi
	je	.LBB5_40
.LBB5_4:                                # %for.body44
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_6 Depth 3
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addl	%eax, %ecx
	leal	(%r9,%rax), %edx
	cmpl	%edx, %ecx
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	jge	.LBB5_39
# %bb.5:                                # %for.body54.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=2
	movslq	36(%rbx), %r11
	movslq	%edi, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	addq	%rcx, %r11
	movslq	%eax, %rbp
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rbp), %rcx
	shlq	$5, %rbp
	addq	56(%rsp), %rbp                  # 8-byte Folded Reload
	jmp	.LBB5_6
	.p2align	4, 0x90
.LBB5_30:                               # %if.then199
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	(%r15), %rax
	movq	%rax, -25(%rsi,%rbp)
	movq	(%r12), %rax
	movq	%rax, -17(%rsi,%rbp)
	movq	$0, -9(%rsi,%rbp)
	movw	$0, -1(%rsi,%rbp)
.LBB5_38:                               # %if.end276
                                        #   in Loop: Header=BB5_6 Depth=3
	incq	%rcx
	movl	32(%rbx), %eax
	leal	(%r9,%rax), %edx
	movslq	%edx, %rdx
	addq	$32, %rbp
	cmpq	%rdx, %rcx
	jge	.LBB5_39
.LBB5_6:                                # %for.body54
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	152(%r14), %rax
	movq	(%rax,%r11,8), %rsi
	movsbq	7(%rsp), %rdx
	testq	%rdx, %rdx
	sete	%dil
	movsbq	6(%rsp), %rax
	testq	%rax, %rax
	sete	%r8b
	orb	%dil, %r8b
	cmpb	$1, %r8b
	jne	.LBB5_29
# %bb.7:                                # %if.then66
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	(%r12), %rdi
	movl	$1, %r10d
	cmpb	$0, 40(%rdi)
	je	.LBB5_8
.LBB5_16:                               # %get_colocated_info_4x4.exit
                                        #   in Loop: Header=BB5_6 Depth=3
	cmpb	$-1, %al
	je	.LBB5_17
# %bb.19:                               # %if.else103
                                        #   in Loop: Header=BB5_6 Depth=3
	cmpb	$-1, %dl
	je	.LBB5_20
# %bb.22:                               # %if.else136
                                        #   in Loop: Header=BB5_6 Depth=3
	testl	%r10d, %r10d
	sete	%al
	testb	%dl, %dl
	sete	%dil
	testb	%al, %dil
	jne	.LBB5_23
# %bb.24:                               # %if.else136
                                        #   in Loop: Header=BB5_6 Depth=3
	movl	12(%rsp), %edi
	movq	%rdx, %rax
	jmp	.LBB5_25
	.p2align	4, 0x90
.LBB5_29:                               # %if.else186
                                        #   in Loop: Header=BB5_6 Depth=3
	testb	%al, %dl
	js	.LBB5_30
# %bb.31:                               # %if.else214
                                        #   in Loop: Header=BB5_6 Depth=3
	cmpb	$-1, %al
	je	.LBB5_32
# %bb.33:                               # %if.else234
                                        #   in Loop: Header=BB5_6 Depth=3
	cmpb	$-1, %dl
	je	.LBB5_34
# %bb.36:                               # %if.else254
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	(%r15,%rdx,8), %rdi
	movq	%rdi, -25(%rsi,%rbp)
	movq	(%r12,%rax,8), %rax
	movq	%rax, -17(%rsi,%rbp)
	movl	12(%rsp), %eax
	movl	%eax, -9(%rsi,%rbp)
	movl	8(%rsp), %eax
	movl	%eax, -5(%rsi,%rbp)
	movb	%dl, -1(%rsi,%rbp)
	jmp	.LBB5_37
.LBB5_8:                                # %if.else.i
                                        #   in Loop: Header=BB5_6 Depth=3
	movslq	40(%rbx), %r8
	addq	80(%rsp), %r8                   # 8-byte Folded Reload
	movq	152(%rdi), %r13
	movq	(%r13,%r8,8), %r13
	movzbl	-1(%r13,%rbp), %r8d
	cmpl	$255, %r8d
	je	.LBB5_13
# %bb.9:                                # %if.else.i
                                        #   in Loop: Header=BB5_6 Depth=3
	testl	%r8d, %r8d
	jne	.LBB5_16
# %bb.10:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB5_6 Depth=3
	movzwl	-9(%r13,%rbp), %r8d
	movl	%r8d, %r10d
	negw	%r10w
	cmovsw	%r8w, %r10w
	cmpw	$1, %r10w
	ja	.LBB5_12
# %bb.11:                               # %land.lhs.true9.i
                                        #   in Loop: Header=BB5_6 Depth=3
	movzwl	-7(%r13,%rbp), %r8d
	movl	%r8d, %r13d
	negw	%r13w
	cmovsw	%r8w, %r13w
	xorl	%r10d, %r10d
	cmpw	$2, %r13w
	jb	.LBB5_16
.LBB5_12:                               # %lor.rhs.thread.i
                                        #   in Loop: Header=BB5_6 Depth=3
	movl	$1, %r10d
	jmp	.LBB5_16
.LBB5_17:                               # %if.then75
                                        #   in Loop: Header=BB5_6 Depth=3
	testl	%r10d, %r10d
	je	.LBB5_18
.LBB5_32:                               # %if.else
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	(%r15,%rdx,8), %rax
	movq	%rax, -25(%rsi,%rbp)
	movq	$0, -17(%rsi,%rbp)
	movl	12(%rsp), %eax
	movl	%eax, -9(%rsi,%rbp)
	movl	$0, -5(%rsi,%rbp)
	movb	%dl, -1(%rsi,%rbp)
	movb	$-1, (%rsi,%rbp)
	jmp	.LBB5_38
.LBB5_20:                               # %if.then107
                                        #   in Loop: Header=BB5_6 Depth=3
	testl	%r10d, %r10d
	jne	.LBB5_35
# %bb.21:                               # %if.then109
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	%rdi, -17(%rsi,%rbp)
	movq	$0, -9(%rsi,%rbp)
	movw	$255, -1(%rsi,%rbp)
	jmp	.LBB5_38
.LBB5_23:                               #   in Loop: Header=BB5_6 Depth=3
	xorl	%eax, %eax
	xorl	%edi, %edi
.LBB5_25:                               # %if.else136
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	(%r15,%rax,8), %rax
	movq	%rax, -25(%rsi,%rbp)
	movl	%edi, -9(%rsi,%rbp)
	movb	%dl, -1(%rsi,%rbp)
	movsbq	6(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB5_28
# %bb.26:                               # %if.else136
                                        #   in Loop: Header=BB5_6 Depth=3
	testl	%r10d, %r10d
	jne	.LBB5_28
# %bb.27:                               # %if.then165
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	(%r12), %rax
	movq	%rax, -17(%rsi,%rbp)
	movl	$0, -5(%rsi,%rbp)
	movb	$0, (%rsi,%rbp)
	jmp	.LBB5_38
.LBB5_28:                               # %if.else173
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	(%r12,%rax,8), %rdx
	movq	%rdx, -17(%rsi,%rbp)
	movl	8(%rsp), %edx
	movl	%edx, -5(%rsi,%rbp)
	movb	%al, (%rsi,%rbp)
	jmp	.LBB5_38
.LBB5_18:                               # %if.then77
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	(%r15), %rax
	movq	%rax, -25(%rsi,%rbp)
	movups	%xmm0, -17(%rsi,%rbp)
	movw	$-256, -1(%rsi,%rbp)
	jmp	.LBB5_38
.LBB5_13:                               # %land.lhs.true22.i
                                        #   in Loop: Header=BB5_6 Depth=3
	cmpb	$0, (%r13,%rbp)
	jne	.LBB5_16
# %bb.14:                               # %land.lhs.true28.i
                                        #   in Loop: Header=BB5_6 Depth=3
	movzwl	-5(%r13,%rbp), %r15d
	movl	%r15d, %r8d
	negw	%r8w
	cmovsw	%r15w, %r8w
	movq	40(%rsp), %r15                  # 8-byte Reload
	cmpw	$1, %r8w
	ja	.LBB5_16
# %bb.15:                               # %land.rhs.i
                                        #   in Loop: Header=BB5_6 Depth=3
	movzwl	-3(%r13,%rbp), %r8d
	movl	%r8d, %r15d
	negw	%r15w
	cmovsw	%r8w, %r15w
	xorl	%r10d, %r10d
	cmpw	$2, %r15w
	movq	40(%rsp), %r15                  # 8-byte Reload
	setae	%r10b
	jmp	.LBB5_16
.LBB5_34:                               # %if.then238
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	$0, -25(%rsi,%rbp)
.LBB5_35:                               # %if.else121
                                        #   in Loop: Header=BB5_6 Depth=3
	movq	(%r12,%rax,8), %rax
	movq	%rax, -17(%rsi,%rbp)
	movl	$0, -9(%rsi,%rbp)
	movl	8(%rsp), %eax
	movl	%eax, -5(%rsi,%rbp)
	movb	$-1, -1(%rsi,%rbp)
.LBB5_37:                               # %if.end276
                                        #   in Loop: Header=BB5_6 Depth=3
	movzbl	6(%rsp), %eax
	movb	%al, (%rsi,%rbp)
	jmp	.LBB5_38
.LBB5_41:                               # %for.end283
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB5_42:                               # %if.end284
	retq
.Lfunc_end5:
	.size	update_direct_mv_info_spatial_4x4, .Lfunc_end5-update_direct_mv_info_spatial_4x4
	.cfi_endproc
                                        # -- End function
	.type	BLOCK_STEP,@object              # @BLOCK_STEP
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
BLOCK_STEP:
	.zero	8
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.size	BLOCK_STEP, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"temporal direct error: colocated block has ref that is unavailable"
	.size	.L.str, 67

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
