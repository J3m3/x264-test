	.text
	.file	"cabac.c"
	.globl	CheckAvailabilityOfNeighborsCABAC # -- Begin function CheckAvailabilityOfNeighborsCABAC
	.p2align	4, 0x90
	.type	CheckAvailabilityOfNeighborsCABAC,@function
CheckAvailabilityOfNeighborsCABAC:      # @CheckAvailabilityOfNeighborsCABAC
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	8(%rdi), %r12
	leaq	849124(%r12), %r14
	xorl	%r15d, %r15d
	leaq	8(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%r12)
	leaq	24(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%r12)
	cmpl	$0, 24(%rsp)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	(%rbx), %rax
	movslq	28(%rsp), %rcx
	imulq	$480, %rcx, %r15                # imm = 0x1E0
	addq	13512(%rax), %r15
.LBB0_2:                                # %if.end
	movq	%r15, 120(%rbx)
	cmpl	$0, 8(%rsp)
	je	.LBB0_3
# %bb.4:                                # %if.then8
	movq	(%rbx), %rcx
	movslq	12(%rsp), %rax
	imulq	$480, %rax, %rax                # imm = 0x1E0
	addq	13512(%rcx), %rax
	jmp	.LBB0_5
.LBB0_3:
	xorl	%eax, %eax
.LBB0_5:                                # %if.end16
	movq	%rax, 128(%rbx)
	addq	$40, %rsp
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
	.size	CheckAvailabilityOfNeighborsCABAC, .Lfunc_end0-CheckAvailabilityOfNeighborsCABAC
	.cfi_endproc
                                        # -- End function
	.globl	cabac_new_slice                 # -- Begin function cabac_new_slice
	.p2align	4, 0x90
	.type	cabac_new_slice,@function
cabac_new_slice:                        # @cabac_new_slice
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$0, 212(%rdi)
	retq
.Lfunc_end1:
	.size	cabac_new_slice, .Lfunc_end1-cabac_new_slice
	.cfi_endproc
                                        # -- End function
	.globl	create_contexts_MotionInfo      # -- Begin function create_contexts_MotionInfo
	.p2align	4, 0x90
	.type	create_contexts_MotionInfo,@function
create_contexts_MotionInfo:             # @create_contexts_MotionInfo
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$1, %edi
	movl	$364, %esi                      # imm = 0x16C
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB2_1
# %bb.2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB2_1:                                # %if.then
	.cfi_def_cfa_offset 16
	movl	$.L.str, %edi
	movq	%rax, %rbx
	callq	no_mem_exit@PLT
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	create_contexts_MotionInfo, .Lfunc_end2-create_contexts_MotionInfo
	.cfi_endproc
                                        # -- End function
	.globl	create_contexts_TextureInfo     # -- Begin function create_contexts_TextureInfo
	.p2align	4, 0x90
	.type	create_contexts_TextureInfo,@function
create_contexts_TextureInfo:            # @create_contexts_TextureInfo
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$1, %edi
	movl	$6596, %esi                     # imm = 0x19C4
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB3_1
# %bb.2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB3_1:                                # %if.then
	.cfi_def_cfa_offset 16
	movl	$.L.str.1, %edi
	movq	%rax, %rbx
	callq	no_mem_exit@PLT
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	create_contexts_TextureInfo, .Lfunc_end3-create_contexts_TextureInfo
	.cfi_endproc
                                        # -- End function
	.globl	delete_contexts_MotionInfo      # -- Begin function delete_contexts_MotionInfo
	.p2align	4, 0x90
	.type	delete_contexts_MotionInfo,@function
delete_contexts_MotionInfo:             # @delete_contexts_MotionInfo
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jne	free@PLT                        # TAILCALL
# %bb.1:                                # %return
	retq
.Lfunc_end4:
	.size	delete_contexts_MotionInfo, .Lfunc_end4-delete_contexts_MotionInfo
	.cfi_endproc
                                        # -- End function
	.globl	delete_contexts_TextureInfo     # -- Begin function delete_contexts_TextureInfo
	.p2align	4, 0x90
	.type	delete_contexts_TextureInfo,@function
delete_contexts_TextureInfo:            # @delete_contexts_TextureInfo
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jne	free@PLT                        # TAILCALL
# %bb.1:                                # %return
	retq
.Lfunc_end5:
	.size	delete_contexts_TextureInfo, .Lfunc_end5-delete_contexts_TextureInfo
	.cfi_endproc
                                        # -- End function
	.globl	readFieldModeInfo_CABAC         # -- Begin function readFieldModeInfo_CABAC
	.p2align	4, 0x90
	.type	readFieldModeInfo_CABAC,@function
readFieldModeInfo_CABAC:                # @readFieldModeInfo_CABAC
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	(%rdi), %rsi
	xorl	%eax, %eax
	cmpl	$0, 404(%rdi)
	movl	$0, %ecx
	je	.LBB6_2
# %bb.1:                                # %cond.true
	movq	13512(%rsi), %rcx
	movslq	388(%rdi), %r8
	imulq	$480, %r8, %r8                  # imm = 0x1E0
	movl	384(%rcx,%r8), %ecx
.LBB6_2:                                # %cond.end
	movq	320(%rsi), %r8
	cmpl	$0, 408(%rdi)
	je	.LBB6_4
# %bb.3:                                # %cond.true2
	movq	13512(%rsi), %rax
	movslq	392(%rdi), %rsi
	imulq	$480, %rsi, %rsi                # imm = 0x1E0
	movl	384(%rax,%rsi), %eax
.LBB6_4:                                # %cond.end8
	addl	%ecx, %eax
	cltq
	leaq	(%r8,%rax,4), %rsi
	addq	$348, %rsi                      # imm = 0x15C
	movq	%rdx, %rdi
	callq	biari_decode_symbol@PLT
	movl	%eax, 4(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	readFieldModeInfo_CABAC, .Lfunc_end6-readFieldModeInfo_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	check_next_mb_and_get_field_mode_CABAC_p_slice # -- Begin function check_next_mb_and_get_field_mode_CABAC_p_slice
	.p2align	4, 0x90
	.type	check_next_mb_and_get_field_mode_CABAC_p_slice,@function
check_next_mb_and_get_field_mode_CABAC_p_slice: # @check_next_mb_and_get_field_mode_CABAC_p_slice
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
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %r15
	movq	(%rdi), %rax
	movq	320(%rdi), %rbp
	movl	108(%rdi), %ecx
	incl	%ecx
	movl	%ecx, 108(%rdi)
	movq	13512(%rdi), %r14
	imulq	$480, %rcx, %r12                # imm = 0x1E0
	leaq	(%r14,%r12), %rbx
	movq	%rax, 8(%r14,%r12)
	movq	%rdi, (%r14,%r12)
	movzwl	116(%rdi), %eax
	movw	%ax, 108(%r14,%r12)
	movq	13512(%rdi), %rax
	movl	108(%rdi), %ecx
	decl	%ecx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	384(%rax,%rcx), %eax
	movl	%eax, 384(%r14,%r12)
	movl	108(%rdi), %ecx
	movl	%ecx, 24(%r14,%r12)
	movl	128(%rdi), %edx
	andl	$1, %ecx
	testl	%eax, %eax
	leal	2(%rcx,%rcx), %ecx
	cmovel	%eax, %ecx
	testl	%edx, %edx
	cmovel	%edx, %ecx
	movw	%cx, 114(%r14,%r12)
	movq	%rbx, %rdi
	callq	CheckAvailabilityOfNeighbors@PLT
	movq	8(%r14,%r12), %r13
	leaq	849124(%r13), %r14
	xorl	%r12d, %r12d
	leaq	64(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%r13)
	leaq	80(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%r13)
	cmpl	$0, 80(%rsp)
	je	.LBB7_2
# %bb.1:                                # %if.then.i
	movq	(%rbx), %rax
	movslq	84(%rsp), %rcx
	imulq	$480, %rcx, %r12                # imm = 0x1E0
	addq	13512(%rax), %r12
.LBB7_2:                                # %if.end.i
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	$8, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%r12, 120(%rbx)
	cmpl	$0, 64(%rsp)
	movq	%r15, 112(%rsp)                 # 8-byte Spill
	je	.LBB7_3
# %bb.4:                                # %if.then8.i
	movq	(%rbx), %rcx
	movslq	68(%rsp), %rax
	imulq	$480, %rax, %rax                # imm = 0x1E0
	addq	13512(%rcx), %rax
	jmp	.LBB7_5
.LBB7_3:
	xorl	%eax, %eax
.LBB7_5:                                # %CheckAvailabilityOfNeighborsCABAC.exit
	movq	%rax, 128(%rbx)
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc@PLT
	movq	%rax, %r14
	movl	$11, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %r12
	movl	$11, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %r13
	movl	$11, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %r15
	movl	$4, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm0, (%r14)
	movups	%xmm1, 16(%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax), %rax
	movl	(%rax), %edx
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	movq	24(%r14), %rax
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	movl	%edx, (%rax)
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	28(%rbp), %xmm2
	movups	%xmm2, 28(%r12)
	movups	%xmm1, 16(%r12)
	movq	%r12, 128(%rsp)                 # 8-byte Spill
	movups	%xmm0, (%r12)
	movups	44(%rbp), %xmm0
	movups	60(%rbp), %xmm1
	movups	72(%rbp), %xmm2
	movups	%xmm2, 28(%r13)
	movups	%xmm1, 16(%r13)
	movq	%r13, 120(%rsp)                 # 8-byte Spill
	movups	%xmm0, (%r13)
	movups	88(%rbp), %xmm0
	movups	104(%rbp), %xmm1
	movups	116(%rbp), %xmm2
	movups	%xmm2, 28(%r15)
	movups	%xmm0, (%r15)
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	movups	%xmm1, 16(%r15)
	movups	348(%rbp), %xmm0
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movups	%xmm0, (%rcx)
	movq	112(%rsp), %r15                 # 8-byte Reload
	movl	$0, 212(%r15)
	movq	(%rbx), %rdx
	movq	128(%rbx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB7_7
# %bb.6:                                # %cond.true.i
	cmpb	$0, 374(%rcx)
	sete	%al
.LBB7_7:                                # %cond.end.i
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	320(%rdx), %rcx
	movq	120(%rbx), %rsi
	testq	%rsi, %rsi
	movq	32(%rsp), %r13                  # 8-byte Reload
	je	.LBB7_8
# %bb.9:                                # %cond.true6.i
	xorl	%edx, %edx
	cmpb	$0, 374(%rsi)
	sete	%dl
	jmp	.LBB7_10
.LBB7_8:
	xorl	%edx, %edx
.LBB7_10:                               # %cond.end13.i
	leaq	44(%rbp), %r14
	leaq	88(%rbp), %r12
	leaq	348(%rbp), %rsi
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	addl	%eax, %edx
	leaq	(%rcx,%rdx,4), %rsi
	addq	$44, %rsi
	movq	%r13, %rdi
	callq	biari_decode_symbol@PLT
	cmpl	$1, %eax
	jne	.LBB7_11
# %bb.17:                               # %read_skip_flag_CABAC_p_slice.exit
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	$0, 4(%rax)
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movl	$0, 212(%rcx)
	cmpl	$0, 4(%rax)
	jne	.LBB7_12
# %bb.18:
	movl	$1, 8(%rsp)                     # 4-byte Folded Spill
	jmp	.LBB7_19
.LBB7_11:                               # %read_skip_flag_CABAC_p_slice.exit.thread
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	$1, 4(%rax)
.LBB7_12:                               # %if.then
	movq	(%rbx), %rdx
	xorl	%eax, %eax
	cmpl	$0, 404(%rbx)
	movl	$0, %ecx
	je	.LBB7_14
# %bb.13:                               # %cond.true.i130
	movq	13512(%rdx), %rcx
	movslq	388(%rbx), %rsi
	imulq	$480, %rsi, %rsi                # imm = 0x1E0
	movl	384(%rcx,%rsi), %ecx
.LBB7_14:                               # %cond.end.i133
	movq	320(%rdx), %rsi
	cmpl	$0, 408(%rbx)
	je	.LBB7_16
# %bb.15:                               # %cond.true2.i
	movq	13512(%rdx), %rax
	movslq	392(%rbx), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	movl	384(%rax,%rdx), %eax
.LBB7_16:                               # %readFieldModeInfo_CABAC.exit
	addl	%ecx, %eax
	cltq
	leaq	(%rsi,%rax,4), %rsi
	addq	$348, %rsi                      # imm = 0x15C
	movq	%r13, %rdi
	callq	biari_decode_symbol@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%eax, 4(%rcx)
	movq	13512(%r15), %rcx
	movl	108(%r15), %edx
	decl	%edx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	movl	%eax, 384(%rcx,%rdx)
	movl	$0, 8(%rsp)                     # 4-byte Folded Spill
.LBB7_19:                               # %if.end
	decl	108(%r15)
	movq	56(%rsp), %rax                  # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm1, 16(%r13)
	movups	%xmm0, (%r13)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax), %rax
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, (%rax)
	movq	128(%rsp), %r13                 # 8-byte Reload
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	28(%r13), %xmm2
	movups	%xmm2, 28(%rbp)
	movups	%xmm1, 16(%rbp)
	movups	%xmm0, (%rbp)
	movq	120(%rsp), %rbp                 # 8-byte Reload
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	28(%rbp), %xmm2
	movups	%xmm2, 28(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	28(%rax), %xmm2
	movups	%xmm2, 28(%r12)
	movups	%xmm1, 16(%r12)
	movups	%xmm0, (%r12)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movups	(%rax), %xmm0
	movq	104(%rsp), %rax                 # 8-byte Reload
	movups	%xmm0, (%rax)
	movq	8(%rbx), %r12
	leaq	849124(%r12), %r15
	xorl	%r14d, %r14d
	leaq	64(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	leaq	80(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	cmpl	$0, 80(%rsp)
	je	.LBB7_21
# %bb.20:                               # %if.then.i143
	movq	(%rbx), %rax
	movslq	84(%rsp), %rcx
	imulq	$480, %rcx, %r14                # imm = 0x1E0
	addq	13512(%rax), %r14
.LBB7_21:                               # %if.end.i148
	movq	%r14, 120(%rbx)
	cmpl	$0, 64(%rsp)
	je	.LBB7_22
# %bb.23:                               # %if.then8.i151
	movq	(%rbx), %rcx
	movslq	68(%rsp), %rax
	imulq	$480, %rax, %rax                # imm = 0x1E0
	addq	13512(%rcx), %rax
	jmp	.LBB7_24
.LBB7_22:
	xorl	%eax, %eax
.LBB7_24:                               # %CheckAvailabilityOfNeighborsCABAC.exit157
	movq	%rax, 128(%rbx)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movq	%rbp, %rdi
	callq	free@PLT
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movl	8(%rsp), %eax                   # 4-byte Reload
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
.Lfunc_end7:
	.size	check_next_mb_and_get_field_mode_CABAC_p_slice, .Lfunc_end7-check_next_mb_and_get_field_mode_CABAC_p_slice
	.cfi_endproc
                                        # -- End function
	.globl	read_skip_flag_CABAC_p_slice    # -- Begin function read_skip_flag_CABAC_p_slice
	.p2align	4, 0x90
	.type	read_skip_flag_CABAC_p_slice,@function
read_skip_flag_CABAC_p_slice:           # @read_skip_flag_CABAC_p_slice
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
	movq	(%rdi), %r14
	movq	128(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB8_2
# %bb.1:                                # %cond.true
	cmpb	$0, 374(%rcx)
	sete	%al
.LBB8_2:                                # %cond.end
	movq	320(%r14), %rcx
	movq	120(%rdi), %rdi
	xorl	%esi, %esi
	testq	%rdi, %rdi
	je	.LBB8_4
# %bb.3:                                # %cond.true6
	cmpb	$0, 374(%rdi)
	sete	%sil
.LBB8_4:                                # %cond.end13
	addl	%eax, %esi
	leaq	(%rcx,%rsi,4), %rsi
	addq	$44, %rsi
	movq	%rdx, %rdi
	callq	biari_decode_symbol@PLT
	cmpl	$1, %eax
	jne	.LBB8_5
# %bb.6:                                # %if.then20
	movl	$0, 4(%rbx)
	movl	$0, 212(%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB8_5:                                # %if.end
	.cfi_def_cfa_offset 32
	movl	$1, 4(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	read_skip_flag_CABAC_p_slice, .Lfunc_end8-read_skip_flag_CABAC_p_slice
	.cfi_endproc
                                        # -- End function
	.globl	check_next_mb_and_get_field_mode_CABAC_b_slice # -- Begin function check_next_mb_and_get_field_mode_CABAC_b_slice
	.p2align	4, 0x90
	.type	check_next_mb_and_get_field_mode_CABAC_b_slice,@function
check_next_mb_and_get_field_mode_CABAC_b_slice: # @check_next_mb_and_get_field_mode_CABAC_b_slice
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
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %r15
	movq	(%rdi), %rax
	movq	320(%rdi), %rbp
	movl	108(%rdi), %ecx
	incl	%ecx
	movl	%ecx, 108(%rdi)
	movq	13512(%rdi), %r14
	imulq	$480, %rcx, %r12                # imm = 0x1E0
	leaq	(%r14,%r12), %rbx
	movq	%rax, 8(%r14,%r12)
	movq	%rdi, (%r14,%r12)
	movzwl	116(%rdi), %eax
	movw	%ax, 108(%r14,%r12)
	movq	13512(%rdi), %rax
	movl	108(%rdi), %ecx
	decl	%ecx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	384(%rax,%rcx), %eax
	movl	%eax, 384(%r14,%r12)
	movl	108(%rdi), %ecx
	movl	%ecx, 24(%r14,%r12)
	movl	128(%rdi), %edx
	andl	$1, %ecx
	testl	%eax, %eax
	leal	2(%rcx,%rcx), %ecx
	cmovel	%eax, %ecx
	testl	%edx, %edx
	cmovel	%edx, %ecx
	movw	%cx, 114(%r14,%r12)
	movq	%rbx, %rdi
	callq	CheckAvailabilityOfNeighbors@PLT
	movq	8(%r14,%r12), %r13
	leaq	849124(%r13), %r14
	xorl	%r12d, %r12d
	leaq	64(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%r13)
	leaq	80(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%r13)
	cmpl	$0, 80(%rsp)
	je	.LBB9_2
# %bb.1:                                # %if.then.i
	movq	(%rbx), %rax
	movslq	84(%rsp), %rcx
	imulq	$480, %rcx, %r12                # imm = 0x1E0
	addq	13512(%rax), %r12
.LBB9_2:                                # %if.end.i
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	$8, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%r12, 120(%rbx)
	cmpl	$0, 64(%rsp)
	movq	%r15, 112(%rsp)                 # 8-byte Spill
	je	.LBB9_3
# %bb.4:                                # %if.then8.i
	movq	(%rbx), %rcx
	movslq	68(%rsp), %rax
	imulq	$480, %rax, %rax                # imm = 0x1E0
	addq	13512(%rcx), %rax
	jmp	.LBB9_5
.LBB9_3:
	xorl	%eax, %eax
.LBB9_5:                                # %CheckAvailabilityOfNeighborsCABAC.exit
	movq	%rax, 128(%rbx)
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc@PLT
	movq	%rax, %r14
	movl	$11, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %r12
	movl	$11, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %r13
	movl	$11, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %r15
	movl	$4, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm0, (%r14)
	movups	%xmm1, 16(%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax), %rax
	movl	(%rax), %edx
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	movq	24(%r14), %rax
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	movl	%edx, (%rax)
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	28(%rbp), %xmm2
	movups	%xmm2, 28(%r12)
	movups	%xmm1, 16(%r12)
	movq	%r12, 128(%rsp)                 # 8-byte Spill
	movups	%xmm0, (%r12)
	movups	44(%rbp), %xmm0
	movups	60(%rbp), %xmm1
	movups	72(%rbp), %xmm2
	movups	%xmm2, 28(%r13)
	movups	%xmm1, 16(%r13)
	movq	%r13, 120(%rsp)                 # 8-byte Spill
	movups	%xmm0, (%r13)
	movups	88(%rbp), %xmm0
	movups	104(%rbp), %xmm1
	movups	116(%rbp), %xmm2
	movups	%xmm2, 28(%r15)
	movups	%xmm0, (%r15)
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	movups	%xmm1, 16(%r15)
	movups	348(%rbp), %xmm0
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movups	%xmm0, (%rcx)
	movq	112(%rsp), %r15                 # 8-byte Reload
	movl	$0, 212(%r15)
	movq	(%rbx), %rdx
	movq	128(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB9_6
# %bb.7:                                # %cond.true.i
	xorl	%eax, %eax
	cmpb	$1, 374(%rcx)
	adcq	$7, %rax
	jmp	.LBB9_8
.LBB9_6:
	movl	$7, %eax
.LBB9_8:                                # %cond.end.i
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	320(%rdx), %rcx
	movq	120(%rbx), %rsi
	testq	%rsi, %rsi
	movq	32(%rsp), %r13                  # 8-byte Reload
	je	.LBB9_9
# %bb.10:                               # %cond.true6.i
	xorl	%edx, %edx
	cmpb	$0, 374(%rsi)
	sete	%dl
	jmp	.LBB9_11
.LBB9_9:
	xorl	%edx, %edx
.LBB9_11:                               # %cond.end13.i
	leaq	44(%rbp), %r14
	leaq	88(%rbp), %r12
	leaq	348(%rbp), %rsi
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	addq	%rax, %rdx
	leaq	(%rcx,%rdx,4), %rsi
	addq	$88, %rsi
	movq	%r13, %rdi
	callq	biari_decode_symbol@PLT
	cmpl	$1, %eax
	jne	.LBB9_12
# %bb.18:                               # %read_skip_flag_CABAC_b_slice.exit
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	$0, 4(%rax)
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movl	$0, 212(%rcx)
	cmpl	$0, 4(%rax)
	jne	.LBB9_13
# %bb.19:                               # %land.end
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	$0, 8(%rax)
	jne	.LBB9_13
# %bb.20:
	movl	$1, 8(%rsp)                     # 4-byte Folded Spill
	jmp	.LBB9_21
.LBB9_12:                               # %read_skip_flag_CABAC_b_slice.exit.thread
	movabsq	$4294967297, %rax               # imm = 0x100000001
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rax, 4(%rcx)
.LBB9_13:                               # %if.then
	movq	(%rbx), %rdx
	xorl	%eax, %eax
	cmpl	$0, 404(%rbx)
	movl	$0, %ecx
	je	.LBB9_15
# %bb.14:                               # %cond.true.i133
	movq	13512(%rdx), %rcx
	movslq	388(%rbx), %rsi
	imulq	$480, %rsi, %rsi                # imm = 0x1E0
	movl	384(%rcx,%rsi), %ecx
.LBB9_15:                               # %cond.end.i136
	movq	320(%rdx), %rsi
	cmpl	$0, 408(%rbx)
	je	.LBB9_17
# %bb.16:                               # %cond.true2.i
	movq	13512(%rdx), %rax
	movslq	392(%rbx), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	movl	384(%rax,%rdx), %eax
.LBB9_17:                               # %readFieldModeInfo_CABAC.exit
	addl	%ecx, %eax
	cltq
	leaq	(%rsi,%rax,4), %rsi
	addq	$348, %rsi                      # imm = 0x15C
	movq	%r13, %rdi
	callq	biari_decode_symbol@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%eax, 4(%rcx)
	movq	13512(%r15), %rcx
	movl	108(%r15), %edx
	decl	%edx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	movl	%eax, 384(%rcx,%rdx)
	movl	$0, 8(%rsp)                     # 4-byte Folded Spill
.LBB9_21:                               # %if.end
	decl	108(%r15)
	movq	56(%rsp), %rax                  # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm1, 16(%r13)
	movups	%xmm0, (%r13)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax), %rax
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, (%rax)
	movq	128(%rsp), %r13                 # 8-byte Reload
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	28(%r13), %xmm2
	movups	%xmm2, 28(%rbp)
	movups	%xmm1, 16(%rbp)
	movups	%xmm0, (%rbp)
	movq	120(%rsp), %rbp                 # 8-byte Reload
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	28(%rbp), %xmm2
	movups	%xmm2, 28(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	28(%rax), %xmm2
	movups	%xmm2, 28(%r12)
	movups	%xmm1, 16(%r12)
	movups	%xmm0, (%r12)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movups	(%rax), %xmm0
	movq	104(%rsp), %rax                 # 8-byte Reload
	movups	%xmm0, (%rax)
	movq	8(%rbx), %r12
	leaq	849124(%r12), %r15
	xorl	%r14d, %r14d
	leaq	64(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	leaq	80(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	cmpl	$0, 80(%rsp)
	je	.LBB9_23
# %bb.22:                               # %if.then.i145
	movq	(%rbx), %rax
	movslq	84(%rsp), %rcx
	imulq	$480, %rcx, %r14                # imm = 0x1E0
	addq	13512(%rax), %r14
.LBB9_23:                               # %if.end.i150
	movq	%r14, 120(%rbx)
	cmpl	$0, 64(%rsp)
	je	.LBB9_24
# %bb.25:                               # %if.then8.i153
	movq	(%rbx), %rcx
	movslq	68(%rsp), %rax
	imulq	$480, %rax, %rax                # imm = 0x1E0
	addq	13512(%rcx), %rax
	jmp	.LBB9_26
.LBB9_24:
	xorl	%eax, %eax
.LBB9_26:                               # %CheckAvailabilityOfNeighborsCABAC.exit159
	movq	%rax, 128(%rbx)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movq	%rbp, %rdi
	callq	free@PLT
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movl	8(%rsp), %eax                   # 4-byte Reload
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
.Lfunc_end9:
	.size	check_next_mb_and_get_field_mode_CABAC_b_slice, .Lfunc_end9-check_next_mb_and_get_field_mode_CABAC_b_slice
	.cfi_endproc
                                        # -- End function
	.globl	read_skip_flag_CABAC_b_slice    # -- Begin function read_skip_flag_CABAC_b_slice
	.p2align	4, 0x90
	.type	read_skip_flag_CABAC_b_slice,@function
read_skip_flag_CABAC_b_slice:           # @read_skip_flag_CABAC_b_slice
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
	movq	(%rdi), %r14
	movq	128(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_1
# %bb.2:                                # %cond.true
	xorl	%eax, %eax
	cmpb	$1, 374(%rcx)
	adcq	$7, %rax
	jmp	.LBB10_3
.LBB10_1:
	movl	$7, %eax
.LBB10_3:                               # %cond.end
	movq	320(%r14), %rcx
	movq	120(%rdi), %rdi
	xorl	%esi, %esi
	testq	%rdi, %rdi
	je	.LBB10_5
# %bb.4:                                # %cond.true6
	cmpb	$0, 374(%rdi)
	sete	%sil
.LBB10_5:                               # %cond.end13
	addq	%rax, %rsi
	leaq	(%rcx,%rsi,4), %rsi
	addq	$88, %rsi
	movq	%rdx, %rdi
	callq	biari_decode_symbol@PLT
	cmpl	$1, %eax
	jne	.LBB10_6
# %bb.7:                                # %if.then22
	movq	$0, 4(%rbx)
	movl	$0, 212(%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB10_6:                               # %if.end
	.cfi_def_cfa_offset 32
	movabsq	$4294967297, %rax               # imm = 0x100000001
	movq	%rax, 4(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	read_skip_flag_CABAC_b_slice, .Lfunc_end10-read_skip_flag_CABAC_b_slice
	.cfi_endproc
                                        # -- End function
	.globl	read_MVD_CABAC                  # -- Begin function read_MVD_CABAC
	.p2align	4, 0x90
	.type	read_MVD_CABAC,@function
read_MVD_CABAC:                         # @read_MVD_CABAC
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
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	320(%rax), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	60(%rdi), %eax
	movl	64(%rdi), %ebp
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movl	8(%rsi), %ebx
	movl	%ebx, %r12d
	andl	$1, %r12d
	sarl	%ebx
	movl	$849124, %r13d                  # imm = 0xCF4E4
	addq	8(%rdi), %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leal	-1(%rax), %esi
	leaq	64(%rsp), %r8
	movl	%ebp, %edx
	movq	%r13, %rcx
	callq	get4x4NeighbourBase@PLT
	cmpl	$0, 64(%rsp)
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movslq	%ebx, %rbx
	movl	$0, %edi
	je	.LBB11_7
# %bb.1:                                # %if.then
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	13512(%r8), %rax
	movslq	68(%rsp), %rcx
	movswq	74(%rsp), %rdx
	movswq	72(%rsp), %rsi
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	%r12d, %edi
	shll	$6, %edi
	addq	%rcx, %rdi
	shlq	$4, %rdx
	addq	%rdi, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rsi,4), %rdx
	movzwl	154(%rdx,%rbx,2), %edx
	movl	%edx, %esi
	negw	%si
	cmovsw	%dx, %si
	movzwl	%si, %edi
	cmpl	$0, 128(%r8)
	setne	%dl
	cmpl	$1, %ebx
	sete	%sil
	andb	%dl, %sil
	cmpb	$1, %sil
	jne	.LBB11_7
# %bb.2:                                # %if.then14
	movl	384(%r15), %edx
	cmpl	$1, %edx
	je	.LBB11_5
# %bb.3:                                # %if.then14
	testl	%edx, %edx
	jne	.LBB11_7
# %bb.4:                                # %land.lhs.true17
	cmpl	$1, 384(%rax,%rcx)
	sete	%cl
	shll	%cl, %edi
	jmp	.LBB11_7
.LBB11_5:                               # %land.lhs.true29
	cmpl	$0, 384(%rax,%rcx)
	jne	.LBB11_7
# %bb.6:                                # %if.then37
	shrl	%edi
.LBB11_7:                               # %if.end40
	movl	%edi, 28(%rsp)                  # 4-byte Spill
	decl	%ebp
	leaq	48(%rsp), %r8
	movq	%r15, %rdi
	movq	80(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%ebp, %edx
	movq	%r13, %rcx
	callq	get4x4NeighbourBase@PLT
	cmpl	$0, 48(%rsp)
	movq	16(%rsp), %r13                  # 8-byte Reload
	movl	$0, %edi
	je	.LBB11_14
# %bb.8:                                # %if.then47
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	13512(%r8), %rax
	movslq	52(%rsp), %rcx
	movswq	58(%rsp), %rdx
	movswq	56(%rsp), %rsi
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	shll	$6, %r12d
	addq	%rcx, %r12
	shlq	$4, %rdx
	addq	%r12, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rsi,4), %rdx
	movzwl	154(%rdx,%rbx,2), %edx
	movl	%edx, %esi
	negw	%si
	cmovsw	%dx, %si
	movzwl	%si, %edi
	cmpl	$0, 128(%r8)
	setne	%dl
	cmpl	$1, %ebx
	sete	%sil
	andb	%dl, %sil
	cmpb	$1, %sil
	jne	.LBB11_14
# %bb.9:                                # %if.then70
	movl	384(%r15), %edx
	cmpl	$1, %edx
	je	.LBB11_12
# %bb.10:                               # %if.then70
	testl	%edx, %edx
	jne	.LBB11_14
# %bb.11:                               # %land.lhs.true74
	cmpl	$1, 384(%rax,%rcx)
	sete	%cl
	shll	%cl, %edi
	addl	28(%rsp), %edi                  # 4-byte Folded Reload
	cmpl	$2, %edi
	jbe	.LBB11_15
	jmp	.LBB11_16
.LBB11_12:                              # %land.lhs.true88
	cmpl	$0, 384(%rax,%rcx)
	je	.LBB11_13
.LBB11_14:                              # %if.end101
	addl	28(%rsp), %edi                  # 4-byte Folded Reload
	cmpl	$2, %edi
	ja	.LBB11_16
.LBB11_15:                              # %if.then104
	movq	32(%rsp), %r15                  # 8-byte Reload
	leal	(%r15,%r15,4), %eax
	jmp	.LBB11_19
.LBB11_13:                              # %if.then96
	shrl	%edi
	addl	28(%rsp), %edi                  # 4-byte Folded Reload
	cmpl	$2, %edi
	jbe	.LBB11_15
.LBB11_16:                              # %if.else106
	movq	32(%rsp), %r15                  # 8-byte Reload
	leal	(%r15,%r15,4), %eax
	cmpl	$33, %edi
	jb	.LBB11_18
# %bb.17:                               # %if.then109
	addl	$3, %eax
	jmp	.LBB11_19
.LBB11_18:                              # %if.else112
	addl	$2, %eax
.LBB11_19:                              # %if.end116
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movl	%eax, 24(%r13)
	cltq
	leaq	(%rbx,%rax,4), %rsi
	addq	$204, %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB11_20
# %bb.21:                               # %if.then123
	leal	(%r15,%r15,4), %eax
	cltq
	leaq	(%rbx,%rax,4), %r15
	addq	$244, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB11_22
# %bb.23:                               # %if.else.i
	leaq	4(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB11_24
# %bb.25:                               # %do.body.peel.next.i
	leaq	8(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB11_26
# %bb.27:                               # %do.body.i.preheader
	addq	$12, %r15
	movl	$2, %ebx
	movl	$-3, %r13d
	.p2align	4, 0x90
.LBB11_28:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	incl	%ebx
	leal	-1(%r13), %r12d
	testl	%eax, %eax
	je	.LBB11_30
# %bb.29:                               # %do.body.i
                                        #   in Loop: Header=BB11_28 Depth=1
	cmpl	$-7, %r13d
	movl	%r12d, %r13d
	jne	.LBB11_28
.LBB11_30:                              # %do.end.i
	testl	%eax, %eax
	movq	16(%rsp), %r13                  # 8-byte Reload
	je	.LBB11_36
# %bb.31:                               # %do.body.i.i.preheader
	xorl	%ebp, %ebp
	movl	$3, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB11_32:                              # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r13d
	movl	%ecx, %r15d
	movq	%r14, %rdi
	callq	biari_decode_symbol_eq_prob@PLT
	movl	$1, %ebx
	movl	%r15d, %ecx
	shll	%cl, %ebx
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	cmovnel	%ebp, %ebx
	sete	%cl
	addl	%r15d, %ecx
	leal	(%rbx,%r13), %edx
	testl	%eax, %eax
	jne	.LBB11_32
# %bb.33:                               # %while.body.i.i.preheader
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	sete	%cl
	leal	(%r15,%rcx), %ebp
	decl	%ebp
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB11_34:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	biari_decode_symbol_eq_prob@PLT
	movl	$1, %edx
	movl	%ebp, %ecx
	shll	%cl, %edx
	cmpl	$1, %eax
	movl	$0, %eax
	cmovnel	%eax, %edx
	orl	%edx, %r15d
	addl	$-1, %ebp
	jb	.LBB11_34
# %bb.35:                               # %exp_golomb_decode_eq_prob.exit.i
	addl	%r13d, %ebx
	addl	%r15d, %ebx
	subl	%r12d, %ebx
	movq	16(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB11_36
.LBB11_20:
	xorl	%ebx, %ebx
	jmp	.LBB11_37
.LBB11_22:
	xorl	%ebx, %ebx
	jmp	.LBB11_36
.LBB11_24:
	movl	$1, %ebx
	jmp	.LBB11_36
.LBB11_26:
	movl	$2, %ebx
.LBB11_36:                              # %unary_exp_golomb_mv_decode.exit
	leal	1(%rbx), %ebp
	movq	%r14, %rdi
	callq	biari_decode_symbol_eq_prob@PLT
	testl	%eax, %eax
	notl	%ebx
	cmovel	%ebp, %ebx
.LBB11_37:                              # %if.end135
	movl	%ebx, 4(%r13)
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
.Lfunc_end11:
	.size	read_MVD_CABAC, .Lfunc_end11-read_MVD_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	readB8_typeInfo_CABAC_p_slice   # -- Begin function readB8_typeInfo_CABAC_p_slice
	.p2align	4, 0x90
	.type	readB8_typeInfo_CABAC_p_slice,@function
readB8_typeInfo_CABAC_p_slice:          # @readB8_typeInfo_CABAC_p_slice
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
	movq	%rsi, %rbx
	movq	(%rdi), %rax
	movq	320(%rax), %r15
	leaq	136(%r15), %rsi
	movq	%rdx, %rdi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB12_4
# %bb.1:                                # %if.else
	leaq	144(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB12_2
# %bb.3:                                # %if.then6
	addq	$148, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	adcl	$2, %ecx
	jmp	.LBB12_4
.LBB12_2:
	movl	$1, %ecx
.LBB12_4:                               # %if.end14
	movl	%ecx, 4(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	readB8_typeInfo_CABAC_p_slice, .Lfunc_end12-readB8_typeInfo_CABAC_p_slice
	.cfi_endproc
                                        # -- End function
	.globl	readB8_typeInfo_CABAC_b_slice   # -- Begin function readB8_typeInfo_CABAC_b_slice
	.p2align	4, 0x90
	.type	readB8_typeInfo_CABAC_b_slice,@function
readB8_typeInfo_CABAC_b_slice:          # @readB8_typeInfo_CABAC_b_slice
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	(%rdi), %rax
	movq	320(%rax), %r15
	leaq	168(%r15), %rsi
	movq	%rdx, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB13_1
# %bb.2:                                # %if.then
	leaq	172(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB13_8
# %bb.3:                                # %if.then5
	leaq	176(%r15), %rsi
	addq	$180, %r15
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	movl	%eax, %r12d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	movl	%eax, %ebp
	testl	%r12d, %r12d
	je	.LBB13_7
# %bb.4:                                # %if.then9
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	testl	%ebp, %ebp
	je	.LBB13_6
# %bb.5:                                # %if.then12
	cmpl	$1, %eax
	movl	$11, %ecx
	sbbl	$0, %ecx
	jmp	.LBB13_9
.LBB13_1:
	xorl	%ecx, %ecx
	jmp	.LBB13_10
.LBB13_8:                               # %if.else38
	addq	$180, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	jmp	.LBB13_9
.LBB13_7:                               # %if.else26
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	setne	%r12b
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	(%rcx,%r12,2), %ecx
	addl	$2, %ecx
	jmp	.LBB13_9
.LBB13_6:                               # %if.else
	xorl	%r12d, %r12d
	testl	%eax, %eax
	setne	%r12b
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	(%rcx,%r12,2), %ecx
	addl	$6, %ecx
.LBB13_9:                               # %if.end45
	incl	%ecx
.LBB13_10:                              # %if.end48
	movl	%ecx, 4(%rbx)
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
.Lfunc_end13:
	.size	readB8_typeInfo_CABAC_b_slice, .Lfunc_end13-readB8_typeInfo_CABAC_b_slice
	.cfi_endproc
                                        # -- End function
	.globl	readMB_transform_size_flag_CABAC # -- Begin function readMB_transform_size_flag_CABAC
	.p2align	4, 0x90
	.type	readMB_transform_size_flag_CABAC,@function
readMB_transform_size_flag_CABAC:       # @readMB_transform_size_flag_CABAC
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	(%rdi), %rsi
	movq	120(%rdi), %r8
	xorl	%eax, %eax
	movl	$0, %ecx
	testq	%r8, %r8
	je	.LBB14_2
# %bb.1:                                # %cond.false
	movl	420(%r8), %ecx
.LBB14_2:                               # %cond.end
	movq	328(%rsi), %rsi
	movq	128(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB14_4
# %bb.3:                                # %cond.false4
	movl	420(%rdi), %eax
.LBB14_4:                               # %cond.end7
	addl	%ecx, %eax
	cltq
	leaq	(%rsi,%rax,4), %rsi
	movq	%rdx, %rdi
	callq	biari_decode_symbol@PLT
	movl	%eax, 4(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	readMB_transform_size_flag_CABAC, .Lfunc_end14-readMB_transform_size_flag_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	readMB_typeInfo_CABAC_i_slice   # -- Begin function readMB_typeInfo_CABAC_i_slice
	.p2align	4, 0x90
	.type	readMB_typeInfo_CABAC_i_slice,@function
readMB_typeInfo_CABAC_i_slice:          # @readMB_typeInfo_CABAC_i_slice
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	(%rdi), %rax
	movq	320(%rax), %r15
	movl	164(%rax), %eax
	cmpl	$4, %eax
	je	.LBB15_10
# %bb.1:                                # %entry
	cmpl	$2, %eax
	jne	.LBB15_23
# %bb.2:                                # %if.then
	movq	120(%rdi), %rcx
	xorl	%r12d, %r12d
	movl	$0, %eax
	testq	%rcx, %rcx
	je	.LBB15_4
# %bb.3:                                # %if.then2
	movzwl	152(%rcx), %ecx
	andl	$-5, %ecx
	xorl	%eax, %eax
	cmpw	$9, %cx
	setne	%al
.LBB15_4:                               # %if.end
	movq	128(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB15_6
# %bb.5:                                # %if.then13
	movzwl	152(%rcx), %ecx
	andl	$-5, %ecx
	xorl	%r12d, %r12d
	cmpw	$9, %cx
	setne	%r12b
.LBB15_6:                               # %if.end27
	addl	%eax, %r12d
	leaq	(%r15,%r12,4), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	movl	%r12d, 24(%rbx)
	testl	%eax, %eax
	je	.LBB15_23
# %bb.7:                                # %if.else
	movq	%r14, %rdi
	callq	biari_decode_final@PLT
	movl	%eax, %ecx
	movl	$25, %eax
	cmpl	$1, %ecx
	je	.LBB15_30
# %bb.8:                                # %if.else35
	movq	%rbx, (%rsp)                    # 8-byte Spill
	leaq	16(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	movl	%eax, %r12d
	shll	$2, %r12d
	leaq	20(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB15_27
# %bb.9:                                # %if.then51
	leal	(%r12,%r12,2), %r12d
	leaq	24(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	(%r12,%rcx,4), %r12d
	addl	$5, %r12d
	jmp	.LBB15_29
.LBB15_10:                              # %if.then86
	movq	120(%rdi), %rax
	xorl	%r12d, %r12d
	movl	$0, %r13d
	testq	%rax, %rax
	je	.LBB15_12
# %bb.11:                               # %if.then90
	xorl	%r13d, %r13d
	cmpw	$12, 152(%rax)
	setne	%r13b
.LBB15_12:                              # %if.end97
	movq	%rbx, (%rsp)                    # 8-byte Spill
	movq	%rdi, %rbp
	movq	128(%rdi), %rax
	testq	%rax, %rax
	je	.LBB15_14
# %bb.13:                               # %if.then101
	xorl	%r12d, %r12d
	cmpw	$12, 152(%rax)
	setne	%r12b
.LBB15_14:                              # %if.end108
	leal	(%r12,%r13), %ebx
	leaq	(%r15,%rbx,4), %rsi
	addq	$44, %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	%ebx, 24(%rcx)
	movq	%rcx, %rbx
	testl	%eax, %eax
	je	.LBB15_23
# %bb.15:                               # %if.else120
	movq	120(%rbp), %rax
	testq	%rax, %rax
	je	.LBB15_17
# %bb.16:                               # %if.then124
	xorl	%r13d, %r13d
	cmpw	$9, 152(%rax)
	setne	%r13b
.LBB15_17:                              # %if.end131
	movq	128(%rbp), %rax
	testq	%rax, %rax
	je	.LBB15_19
# %bb.18:                               # %if.then135
	xorl	%r12d, %r12d
	cmpw	$9, 152(%rax)
	setne	%r12b
.LBB15_19:                              # %if.end142
	addl	%r13d, %r12d
	leaq	(%r15,%r12,4), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	movl	%r12d, 24(%rbx)
	testl	%eax, %eax
	je	.LBB15_26
# %bb.20:                               # %if.else154
	movq	%r14, %rdi
	callq	biari_decode_final@PLT
	movl	%eax, %ecx
	movl	$26, %eax
	cmpl	$1, %ecx
	je	.LBB15_30
# %bb.21:                               # %if.else159
	leaq	16(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	movl	%eax, %r12d
	shll	$2, %r12d
	leaq	20(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB15_28
# %bb.22:                               # %if.then176
	leal	(%r12,%r12,2), %ebx
	leaq	24(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	(%rbx,%rcx,4), %r12d
	addl	$6, %r12d
	jmp	.LBB15_29
.LBB15_23:
	xorl	%eax, %eax
	jmp	.LBB15_30
.LBB15_26:
	movl	$1, %eax
	jmp	.LBB15_30
.LBB15_27:
	leal	(%r12,%r12,2), %r12d
	incl	%r12d
	jmp	.LBB15_29
.LBB15_28:
	leal	(%r12,%r12,2), %r12d
	addl	$2, %r12d
.LBB15_29:                              # %if.end209.sink.split
	leaq	28(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%r12,%rax,2), %ebx
	addq	$32, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	addl	%ebx, %eax
	movq	(%rsp), %rbx                    # 8-byte Reload
.LBB15_30:                              # %if.end209
	movl	%eax, 4(%rbx)
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
.Lfunc_end15:
	.size	readMB_typeInfo_CABAC_i_slice, .Lfunc_end15-readMB_typeInfo_CABAC_i_slice
	.cfi_endproc
                                        # -- End function
	.globl	readMB_typeInfo_CABAC_p_slice   # -- Begin function readMB_typeInfo_CABAC_p_slice
	.p2align	4, 0x90
	.type	readMB_typeInfo_CABAC_p_slice,@function
readMB_typeInfo_CABAC_p_slice:          # @readMB_typeInfo_CABAC_p_slice
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	(%rdi), %rax
	movq	320(%rax), %r15
	leaq	60(%r15), %rsi
	movq	%rdx, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB16_1
# %bb.4:                                # %if.end26
	leaq	72(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB16_5
# %bb.6:                                # %if.else28
	movq	%r14, %rdi
	callq	biari_decode_final@PLT
	movl	%eax, %ecx
	movl	$31, %eax
	cmpl	$1, %ecx
	je	.LBB16_11
# %bb.7:                                # %if.else32
	leaq	76(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	movl	%eax, %r12d
	shll	$2, %r12d
	leaq	80(%r15), %r13
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB16_8
# %bb.9:                                # %if.then38
	leal	(%r12,%r12,2), %r12d
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	(%r12,%rcx,4), %r12d
	addl	$11, %r12d
	jmp	.LBB16_10
.LBB16_1:                               # %if.else7
	leaq	64(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB16_3
# %bb.2:                                # %if.then11
	addq	$72, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	adcl	$2, %eax
	jmp	.LBB16_11
.LBB16_5:
	movl	$6, %eax
	jmp	.LBB16_11
.LBB16_3:                               # %if.else18
	addq	$68, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	(%rcx,%rcx,2), %eax
	incl	%eax
	jmp	.LBB16_11
.LBB16_8:
	leal	(%r12,%r12,2), %r12d
	addl	$7, %r12d
.LBB16_10:                              # %if.end47
	addq	$84, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%r12,%rax,2), %ebp
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	addl	%ebp, %eax
.LBB16_11:                              # %if.end58
	movl	%eax, 4(%rbx)
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
.Lfunc_end16:
	.size	readMB_typeInfo_CABAC_p_slice, .Lfunc_end16-readMB_typeInfo_CABAC_p_slice
	.cfi_endproc
                                        # -- End function
	.globl	readMB_typeInfo_CABAC_b_slice   # -- Begin function readMB_typeInfo_CABAC_b_slice
	.p2align	4, 0x90
	.type	readMB_typeInfo_CABAC_b_slice,@function
readMB_typeInfo_CABAC_b_slice:          # @readMB_typeInfo_CABAC_b_slice
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
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	(%rdi), %rax
	movq	120(%rdi), %rcx
	movq	320(%rax), %r15
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB17_2
# %bb.1:                                # %if.then
	cmpw	$0, 152(%rcx)
	setne	%al
.LBB17_2:                               # %if.end
	leaq	88(%r15), %rcx
	movq	128(%rdi), %rsi
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	testq	%rsi, %rsi
	je	.LBB17_4
# %bb.3:                                # %if.then7
	cmpw	$0, 152(%rsi)
	setne	%dl
.LBB17_4:                               # %if.end14
	leaq	(%rcx,%rdx,4), %rcx
	leaq	(%rcx,%rax,4), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB17_19
# %bb.5:                                # %if.then16
	leaq	104(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB17_12
# %bb.6:                                # %if.then20
	movq	%r13, (%rsp)                    # 8-byte Spill
	leaq	108(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	movl	%eax, %ebx
	leaq	112(%r15), %r12
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	biari_decode_symbol@PLT
	movl	%eax, %ebp
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	biari_decode_symbol@PLT
	movl	%eax, %r13d
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	je	.LBB17_11
# %bb.7:                                # %if.then24
	testl	%ebp, %ebp
	setne	%cl
	testl	%r13d, %r13d
	leal	12(,%rcx,8), %edx
	leal	16(,%rcx,8), %esi
	cmovel	%edx, %esi
	leal	2(%rsi), %ecx
	testl	%eax, %eax
	cmovel	%esi, %ecx
	cmpl	$24, %ecx
	je	.LBB17_8
# %bb.9:                                # %if.then24
	cmpl	$26, %ecx
	movq	(%rsp), %r13                    # 8-byte Reload
	jne	.LBB17_13
# %bb.10:                               # %if.then48
	movl	$22, %r12d
	jmp	.LBB17_19
.LBB17_12:                              # %if.else82
	addq	$112, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	cmpl	$1, %eax
	movl	$2, %r12d
	sbbl	$0, %r12d
	jmp	.LBB17_19
.LBB17_11:                              # %if.else62
	testl	%ebp, %ebp
	setne	%cl
	testl	%r13d, %r13d
	leal	3(,%rcx,4), %edx
	leal	5(,%rcx,4), %r12d
	cmovel	%edx, %r12d
	cmpl	$1, %eax
	sbbl	$-1, %r12d
	movq	(%rsp), %r13                    # 8-byte Reload
	jmp	.LBB17_19
.LBB17_8:
	movl	$11, %r12d
	movq	(%rsp), %r13                    # 8-byte Reload
	jmp	.LBB17_19
.LBB17_13:                              # %if.end91
	cmpl	$22, %ecx
	movl	$23, %ebx
	cmovnel	%ecx, %ebx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	biari_decode_symbol@PLT
	cmpl	$1, %eax
	sbbl	$-1, %ebx
	cmpl	$24, %ebx
	jae	.LBB17_15
# %bb.14:
	movl	%ebx, %r12d
	jmp	.LBB17_19
.LBB17_15:                              # %if.else95
	movq	%r14, %rdi
	callq	biari_decode_final@PLT
	movl	$48, %r12d
	cmpl	$1, %eax
	je	.LBB17_19
# %bb.16:                               # %if.else100
	leaq	76(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%rax,2), %eax
	leal	(%rbx,%rax,4), %ebx
	leaq	80(%r15), %r12
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB17_18
# %bb.17:                               # %if.then111
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	(%rbx,%rcx,4), %ebx
	addl	$4, %ebx
.LBB17_18:                              # %if.end121
	addq	$84, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%rbx,%rax,2), %ebx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	movl	%eax, %r12d
	addl	%ebx, %r12d
.LBB17_19:                              # %if.end132
	movl	%r12d, 4(%r13)
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
	.size	readMB_typeInfo_CABAC_b_slice, .Lfunc_end17-readMB_typeInfo_CABAC_b_slice
	.cfi_endproc
                                        # -- End function
	.globl	readIntraPredMode_CABAC         # -- Begin function readIntraPredMode_CABAC
	.p2align	4, 0x90
	.type	readIntraPredMode_CABAC,@function
readIntraPredMode_CABAC:                # @readIntraPredMode_CABAC
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
	movq	%rsi, %rbx
	movq	(%rdi), %rax
	movq	328(%rax), %r15
	leaq	12(%r15), %rsi
	movq	%rdx, %rdi
	callq	biari_decode_symbol@PLT
	cmpl	$1, %eax
	jne	.LBB18_2
# %bb.1:                                # %if.then
	movl	$-1, 4(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB18_2:                               # %if.else
	.cfi_def_cfa_offset 32
	addq	$16, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	movl	%eax, 4(%rbx)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	addl	%eax, %eax
	orl	%eax, 4(%rbx)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	shll	$2, %eax
	orl	%eax, 4(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	readIntraPredMode_CABAC, .Lfunc_end18-readIntraPredMode_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	readRefFrame_CABAC              # -- Begin function readRefFrame_CABAC
	.p2align	4, 0x90
	.type	readRefFrame_CABAC,@function
readRefFrame_CABAC:                     # @readRefFrame_CABAC
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	(%rdi), %rbp
	movq	13520(%rbp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	320(%rbp), %r15
	movl	$849124, %r13d                  # imm = 0xCF4E4
	addq	8(%rdi), %r13
	movslq	8(%rsi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	60(%rdi), %esi
	movl	64(%rdi), %edx
	decl	%esi
	leaq	24(%rsp), %r8
	movq	%r13, %rcx
	callq	get4x4Neighbour@PLT
	movl	60(%r12), %esi
	movl	64(%r12), %edx
	decl	%edx
	leaq	8(%rsp), %r8
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	get4x4Neighbour@PLT
	xorl	%eax, %eax
	cmpl	$0, 8(%rsp)
	movl	$0, %ecx
	je	.LBB19_11
# %bb.1:                                # %if.then
	movq	13512(%rbp), %rdx
	movslq	12(%rsp), %rcx
	imulq	$480, %rcx, %rsi                # imm = 0x1E0
	movzwl	152(%rdx,%rsi), %r9d
	movl	$0, %ecx
	cmpl	$14, %r9d
	je	.LBB19_11
# %bb.2:                                # %if.then
	movzwl	16(%rsp), %r8d
	movzwl	18(%rsp), %edi
	testl	%r9d, %r9d
	jne	.LBB19_4
# %bb.3:                                # %land.lhs.true
	cmpl	$1, 164(%rbp)
	je	.LBB19_11
.LBB19_4:                               # %lor.lhs.false20
	shrl	%r8d
	andl	$1, %r8d
	andl	$2, %edi
	orq	%r8, %rdi
	addq	%rsi, %rdx
	cmpb	$0, 364(%rdx,%rdi)
	jne	.LBB19_6
# %bb.5:                                # %land.lhs.true26
	cmpb	$2, 368(%rdx,%rdi)
	je	.LBB19_11
.LBB19_6:                               # %if.then32
	cmpl	$0, 128(%rbp)
	je	.LBB19_9
# %bb.7:                                # %land.lhs.true34
	cmpl	$0, 384(%r12)
	jne	.LBB19_9
# %bb.8:                                # %land.lhs.true37
	movb	$1, %sil
	cmpl	$1, 384(%rdx)
	je	.LBB19_10
.LBB19_9:                               # %if.else
	xorl	%esi, %esi
.LBB19_10:                              # %if.end66.sink.split
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rcx), %rcx
	movswq	22(%rsp), %rdx
	movswq	20(%rsp), %rdi
	shlq	$5, %rdi
	addq	(%rcx,%rdx,8), %rdi
	xorl	%ecx, %ecx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	cmpb	%sil, 24(%rdx,%rdi)
	setg	%cl
	addl	%ecx, %ecx
.LBB19_11:                              # %if.end66
	cmpl	$0, 24(%rsp)
	je	.LBB19_22
# %bb.12:                               # %if.then69
	movq	13512(%rbp), %rdx
	movslq	28(%rsp), %rsi
	imulq	$480, %rsi, %rsi                # imm = 0x1E0
	movzwl	152(%rdx,%rsi), %r9d
	cmpl	$14, %r9d
	je	.LBB19_22
# %bb.13:                               # %if.then69
	movzwl	32(%rsp), %r8d
	movzwl	34(%rsp), %edi
	testl	%r9d, %r9d
	jne	.LBB19_15
# %bb.14:                               # %land.lhs.true91
	cmpl	$1, 164(%rbp)
	je	.LBB19_22
.LBB19_15:                              # %lor.lhs.false95
	shrl	%r8d
	andl	$1, %r8d
	andl	$2, %edi
	orq	%r8, %rdi
	addq	%rsi, %rdx
	cmpb	$0, 364(%rdx,%rdi)
	jne	.LBB19_17
# %bb.16:                               # %land.lhs.true102
	cmpb	$2, 368(%rdx,%rdi)
	je	.LBB19_22
.LBB19_17:                              # %if.then109
	cmpl	$0, 128(%rbp)
	je	.LBB19_20
# %bb.18:                               # %land.lhs.true112
	cmpl	$0, 384(%r12)
	jne	.LBB19_20
# %bb.19:                               # %land.lhs.true116
	movb	$1, %sil
	cmpl	$1, 384(%rdx)
	je	.LBB19_21
.LBB19_20:                              # %if.else135
	xorl	%esi, %esi
.LBB19_21:                              # %if.end151.sink.split
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	152(%rax), %rax
	movswq	38(%rsp), %rdx
	movswq	36(%rsp), %rdi
	shlq	$5, %rdi
	addq	(%rax,%rdx,8), %rdi
	xorl	%eax, %eax
	movq	48(%rsp), %rdx                  # 8-byte Reload
	cmpb	%sil, 24(%rdx,%rdi)
	setg	%al
.LBB19_22:                              # %if.end152
	orl	%ecx, %eax
	movl	%eax, 24(%rbx)
	leaq	(%r15,%rax,4), %rsi
	addq	$284, %rsi                      # imm = 0x11C
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB19_23
# %bb.24:                               # %if.then159
	leaq	300(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB19_25
# %bb.26:                               # %if.else.i
	addq	$304, %r15                      # imm = 0x130
	movl	$1, %ebp
	.p2align	4, 0x90
.LBB19_27:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	incl	%ebp
	testl	%eax, %eax
	jne	.LBB19_27
	jmp	.LBB19_28
.LBB19_23:
	xorl	%ebp, %ebp
	jmp	.LBB19_28
.LBB19_25:
	movl	$1, %ebp
.LBB19_28:                              # %if.end167
	movl	%ebp, 4(%rbx)
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
.Lfunc_end19:
	.size	readRefFrame_CABAC, .Lfunc_end19-readRefFrame_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	read_dQuant_CABAC               # -- Begin function read_dQuant_CABAC
	.p2align	4, 0x90
	.type	read_dQuant_CABAC,@function
read_dQuant_CABAC:                      # @read_dQuant_CABAC
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	(%rdi), %r12
	movq	320(%r12), %r15
	xorl	%eax, %eax
	cmpl	$0, 212(%r12)
	setne	%al
	leaq	(%r15,%rax,4), %rsi
	addq	$332, %rsi                      # imm = 0x14C
	movq	%rdx, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB20_1
# %bb.2:                                # %if.then
	leaq	340(%r15), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB20_3
# %bb.4:                                # %if.else.i
	addq	$344, %r15                      # imm = 0x158
	movl	$-1, %r13d
	.p2align	4, 0x90
.LBB20_5:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	incl	%r13d
	testl	%eax, %eax
	jne	.LBB20_5
# %bb.6:                                # %unary_bin_decode.exit
	leal	3(%r13), %eax
	sarl	%eax
	movl	%eax, 4(%rbx)
	testb	$1, %r13b
	jne	.LBB20_9
# %bb.7:                                # %if.then8
	negl	%eax
	jmp	.LBB20_8
.LBB20_1:
	xorl	%eax, %eax
	jmp	.LBB20_8
.LBB20_3:
	movl	$1, %eax
.LBB20_8:                               # %if.end9.sink.split
	movl	%eax, 4(%rbx)
.LBB20_9:                               # %if.end9
	movl	%eax, 212(%r12)
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
.Lfunc_end20:
	.size	read_dQuant_CABAC, .Lfunc_end20-read_dQuant_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	read_CBP_CABAC                  # -- Begin function read_CBP_CABAC
	.p2align	4, 0x90
	.type	read_CBP_CABAC,@function
read_CBP_CABAC:                         # @read_CBP_CABAC
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
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	(%rdi), %r15
	movq	328(%r15), %rcx
	movl	$849124, %r12d                  # imm = 0xCF4E4
	addq	8(%rdi), %r12
	movq	120(%rdi), %r14
	xorl	%ebx, %ebx
	movl	$0, %r13d
	testq	%r14, %r14
	je	.LBB21_3
# %bb.1:                                # %if.then11.us
	cmpw	$14, 152(%r14)
	je	.LBB21_3
# %bb.2:                                # %if.then14.us
	movl	284(%r14), %r13d
	notl	%r13d
	shrl	%r13d
	andl	$2, %r13d
.LBB21_3:                               # %if.then28.us
	movq	13520(%r15), %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	36(%rcx), %rbp
	leaq	24(%rsp), %r8
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	callq	get4x4Neighbour@PLT
	cmpl	$0, 24(%rsp)
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	je	.LBB21_6
# %bb.4:                                # %if.then31.us
	movq	13512(%r15), %rax
	movslq	28(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpw	$14, 152(%rax,%rcx)
	je	.LBB21_6
# %bb.5:                                # %if.else38.us
	addq	%rcx, %rax
	movl	284(%rax), %eax
	movzwl	34(%rsp), %edx
	movl	%edx, %ecx
	shrl	$15, %ecx
	addl	%edx, %ecx
	andl	$254, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
	xorl	%ebx, %ebx
	testb	$2, %al
	sete	%bl
.LBB21_6:                               # %if.end61.us
	addl	%r13d, %ebx
	leaq	(,%rbx,4), %rsi
	addq	%rbp, %rsi
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rdi
	callq	biari_decode_symbol@PLT
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setne	%bl
	testq	%r14, %r14
	je	.LBB21_9
# %bb.7:                                # %if.then11.us.1
	cmpw	$14, 152(%r14)
	je	.LBB21_9
# %bb.8:                                # %if.then14.us.1
	movl	284(%r14), %r13d
	notl	%r13d
	shrl	$2, %r13d
	andl	$2, %r13d
.LBB21_9:                               # %for.inc73
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setne	%r14b
	movl	%ebx, %eax
	xorl	$1, %eax
	addl	%r13d, %eax
	leaq	(,%rax,4), %rsi
	addq	%rbp, %rsi
	movq	%r15, %rdi
	callq	biari_decode_symbol@PLT
	xorl	%r13d, %r13d
	testl	%eax, %eax
	setne	%r13b
	addl	%r13d, %r13d
	addl	%r14d, %r14d
	leaq	24(%rsp), %r8
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	$-1, %esi
	movl	$8, %edx
	movq	%r12, %rcx
	callq	get4x4Neighbour@PLT
	cmpl	$0, 24(%rsp)
	je	.LBB21_11
# %bb.10:                               # %if.then31
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	13512(%rax), %rax
	movslq	28(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpw	$14, 152(%rax,%rcx)
	jne	.LBB21_12
.LBB21_11:
	xorl	%eax, %eax
	jmp	.LBB21_13
.LBB21_12:                              # %if.else38
	addq	%rcx, %rax
	movl	284(%rax), %edx
	movzwl	34(%rsp), %eax
	movl	%eax, %ecx
	shrl	$15, %ecx
	addl	%eax, %ecx
	andl	$254, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	xorl	%eax, %eax
	testb	$2, %dl
	sete	%al
.LBB21_13:                              # %for.end75
	orl	%eax, %r14d
	xorl	$2, %r14d
	leaq	(,%r14,4), %rsi
	addq	%rbp, %rsi
	movq	%r15, %rdi
	callq	biari_decode_symbol@PLT
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setne	%r14b
	leal	(,%r14,4), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	orl	%r13d, %ecx
	xorl	$2, %ecx
	leaq	(,%rcx,4), %rsi
	addq	%rbp, %rsi
	movq	%r15, %rdi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	shll	$3, %ecx
	leal	(%rcx,%r14,4), %r12d
	orl	%r13d, %r12d
	orl	%ebx, %r12d
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	268(%rax), %eax
	testl	%eax, %eax
	je	.LBB21_39
# %bb.14:                               # %for.end75
	cmpl	$3, %eax
	je	.LBB21_39
# %bb.15:                               # %if.then81
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rcx), %rax
	testq	%rax, %rax
	je	.LBB21_19
# %bb.16:                               # %if.then85
	cmpw	$14, 152(%rax)
	movq	40(%rsp), %rbx                  # 8-byte Reload
	je	.LBB21_18
# %bb.17:                               # %lor.lhs.false
	cmpl	$16, 284(%rax)
	jl	.LBB21_23
.LBB21_18:                              # %if.then93
	movl	$2, %eax
	movq	128(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB21_20
	jmp	.LBB21_25
.LBB21_19:
	xorl	%eax, %eax
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	128(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB21_20
	jmp	.LBB21_25
.LBB21_23:
	xorl	%eax, %eax
	movq	128(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB21_25
.LBB21_20:                              # %if.then98
	cmpw	$14, 152(%rcx)
	je	.LBB21_22
# %bb.21:                               # %lor.lhs.false103
	cmpl	$16, 284(%rcx)
	jl	.LBB21_25
.LBB21_22:                              # %if.then107
	movl	$1, %ecx
	jmp	.LBB21_26
.LBB21_25:
	xorl	%ecx, %ecx
.LBB21_26:                              # %if.end109
	orl	%eax, %ecx
	leaq	(%rbx,%rcx,4), %rsi
	addq	$52, %rsi
	movq	%r15, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB21_39
# %bb.27:                               # %if.then118
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	120(%rcx), %rax
	testq	%rax, %rax
	je	.LBB21_31
# %bb.28:                               # %if.then122
	cmpw	$14, 152(%rax)
	je	.LBB21_30
# %bb.29:                               # %lor.lhs.false127
	movl	284(%rax), %eax
	andl	$-16, %eax
	cmpl	$32, %eax
	jne	.LBB21_31
.LBB21_30:                              # %if.then132
	movl	$2, %eax
	movq	128(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB21_32
	jmp	.LBB21_37
.LBB21_31:
	xorl	%eax, %eax
	movq	128(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB21_37
.LBB21_32:                              # %if.then138
	cmpw	$14, 152(%rcx)
	je	.LBB21_34
# %bb.33:                               # %lor.lhs.false143
	movl	284(%rcx), %ecx
	andl	$-16, %ecx
	cmpl	$32, %ecx
	jne	.LBB21_37
.LBB21_34:                              # %if.then148
	movl	$1, %ecx
	jmp	.LBB21_38
.LBB21_37:
	xorl	%ecx, %ecx
.LBB21_38:                              # %if.end150
	orl	%eax, %ecx
	leaq	(%rbx,%rcx,4), %rsi
	addq	$68, %rsi
	movq	%r15, %rdi
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	sete	%cl
	shll	$4, %ecx
	addl	%ecx, %r12d
	addl	$16, %r12d
.LBB21_39:                              # %if.end163
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movl	%r12d, 4(%rcx)
	testl	%r12d, %r12d
	jne	.LBB21_41
# %bb.40:                               # %if.then165
	movl	$0, 212(%rax)
.LBB21_41:                              # %if.end166
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
.Lfunc_end21:
	.size	read_CBP_CABAC, .Lfunc_end21-read_CBP_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	readCIPredMode_CABAC            # -- Begin function readCIPredMode_CABAC
	.p2align	4, 0x90
	.type	readCIPredMode_CABAC,@function
readCIPredMode_CABAC:                   # @readCIPredMode_CABAC
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
	movq	%rsi, %rbx
	movq	(%rdi), %rdx
	movq	120(%rdi), %rsi
	movq	128(%rdi), %rcx
	testq	%rsi, %rsi
	je	.LBB22_3
# %bb.1:                                # %cond.true
	cmpb	$0, 373(%rsi)
	je	.LBB22_3
# %bb.2:                                # %land.rhs
	xorl	%eax, %eax
	cmpw	$14, 152(%rsi)
	setne	%al
	movq	328(%rdx), %r15
	testq	%rcx, %rcx
	jne	.LBB22_4
	jmp	.LBB22_8
.LBB22_3:
	xorl	%eax, %eax
	movq	328(%rdx), %r15
	testq	%rcx, %rcx
	je	.LBB22_8
.LBB22_4:                               # %cond.true9
	cmpb	$0, 373(%rcx)
	je	.LBB22_8
# %bb.5:                                # %land.rhs14
	xorl	%edx, %edx
	cmpw	$14, 152(%rcx)
	setne	%dl
	jmp	.LBB22_9
.LBB22_8:
	xorl	%edx, %edx
.LBB22_9:                               # %cond.end22
	leaq	(%r15,%rdx,4), %rcx
	leaq	(%rcx,%rax,4), %rsi
	addq	$20, %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	movl	%eax, 4(%rbx)
	testl	%eax, %eax
	je	.LBB22_14
# %bb.10:                               # %if.then
	addq	$32, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB22_12
# %bb.11:                               # %do.body.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	cmpl	$1, %eax
	movl	$3, %eax
	sbbl	$0, %eax
	jmp	.LBB22_13
.LBB22_12:
	movl	$1, %eax
.LBB22_13:                              # %unary_bin_max_decode.exit
	movl	%eax, 4(%rbx)
.LBB22_14:                              # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	readCIPredMode_CABAC, .Lfunc_end22-readCIPredMode_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	set_read_and_store_CBP          # -- Begin function set_read_and_store_CBP
	.p2align	4, 0x90
	.type	set_read_and_store_CBP,@function
set_read_and_store_CBP:                 # @set_read_and_store_CBP
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$3, %esi
	movq	(%rdi), %rax
	movl	$read_and_store_CBP_block_bit_444, %ecx
	movl	$read_and_store_CBP_block_bit_normal, %edx
	cmoveq	%rcx, %rdx
	movq	%rdx, 456(%rax)
	retq
.Lfunc_end23:
	.size	set_read_and_store_CBP, .Lfunc_end23-set_read_and_store_CBP
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_and_store_CBP_block_bit_444
	.type	read_and_store_CBP_block_bit_444,@function
read_and_store_CBP_block_bit_444:       # @read_and_store_CBP_block_bit_444
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
	movl	%edx, %r14d
	cmpl	$22, %edx
	setb	%al
	movl	$4126782, %r15d                 # imm = 0x3EF83E
	movl	%r14d, %ecx
	shrl	%cl, %r15d
	andb	%al, %r15b
	cmpl	$17, %edx
	setb	%r8b
	movl	$66561, %eax                    # imm = 0x10401
	shrl	%cl, %eax
	leal	-8(%r14), %ecx
	cmpl	$2, %ecx
	movq	%rsi, 128(%rsp)                 # 8-byte Spill
	jb	.LBB24_4
# %bb.1:                                # %entry
	cmpl	$6, %r14d
	je	.LBB24_4
# %bb.2:                                # %entry
	cmpl	$7, %r14d
	jne	.LBB24_5
# %bb.3:                                # %land.end43.thread
	cmpl	$0, 100(%rdi)
	sete	%dl
	setne	%r12b
	xorl	%r9d, %r9d
	jmp	.LBB24_6
.LBB24_4:                               # %land.rhs60
	cmpl	$0, 100(%rdi)
	sete	%r9b
	setne	%sil
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	jmp	.LBB24_7
.LBB24_5:
	xorl	%r9d, %r9d
	xorl	%r12d, %r12d
	xorl	%edx, %edx
.LBB24_6:                               # %land.end63
	xorl	%esi, %esi
.LBB24_7:                               # %land.end63
	movq	(%rdi), %rcx
	andb	%al, %r8b
	orb	%dl, %r12b
	movl	%r15d, %eax
	orb	%r12b, %al
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	movl	$0, %ebx
	cmpb	$1, %al
	jne	.LBB24_9
# %bb.8:                                # %cond.true75
	movl	60(%rdi), %ebx
	movl	64(%rdi), %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.LBB24_9:                               # %cond.end77
	movq	8(%rdi), %r10
	movq	13520(%rcx), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	328(%rcx), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	%edx, 84(%rsp)                  # 4-byte Spill
	movl	%edx, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	movl	%r8d, %edx
	xorb	$1, %dl
	shll	$4, %eax
	addl	$19, %eax
	movl	%esi, 88(%rsp)                  # 4-byte Spill
	testb	%sil, %sil
	movl	$18, %esi
	cmovel	%eax, %esi
	movl	%r9d, 92(%rsp)                  # 4-byte Spill
	testb	%r9b, %r9b
	movl	$17, %r13d
	cmovel	%esi, %r13d
	movzbl	%dl, %eax
	testb	%r8b, %r8b
	cmovnel	%eax, %r13d
	movq	13512(%rcx), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	cmpl	$0, 96(%rdi)
	setne	11(%rsp)                        # 1-byte Folded Spill
	testb	%r15b, %r15b
	cmovnel	%eax, %r13d
	movb	%r8b, 10(%rsp)                  # 1-byte Spill
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	movq	%r10, 112(%rsp)                 # 8-byte Spill
	je	.LBB24_12
# %bb.10:                               # %if.then
	movl	%r15d, 12(%rsp)                 # 4-byte Spill
	leal	-1(%rbx), %esi
	movq	%rdi, %r12
	leaq	849124(%r10), %rbp
	leaq	40(%rsp), %r8
	movq	16(%rsp), %r15                  # 8-byte Reload
	movl	%r15d, %edx
	movq	%rbp, %rcx
	callq	get4x4Neighbour@PLT
	leal	-1(%r15), %edx
	leaq	24(%rsp), %r8
	movq	%r12, %r15
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%rbp, %rcx
	callq	get4x4Neighbour@PLT
	movl	40(%rsp), %eax
	testl	%eax, %eax
	movswl	50(%rsp), %ecx
	movswl	48(%rsp), %edx
	leal	(%rdx,%rcx,4), %ecx
	cmovel	%eax, %ecx
	cmpl	$0, 24(%rsp)
	je	.LBB24_18
# %bb.11:                               # %if.then113
	movswl	34(%rsp), %eax
	movswl	32(%rsp), %edx
	leal	(%rdx,%rax,4), %edx
	jmp	.LBB24_19
.LBB24_12:                              # %if.else
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	testb	%r8b, %r8b
	je	.LBB24_14
# %bb.13:                               # %if.then122
	leal	-1(%rbx), %esi
	leaq	849124(%r10), %rbp
	leaq	40(%rsp), %r8
	movq	56(%rsp), %r12                  # 8-byte Reload
	movq	%r12, %rdi
	movq	16(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%rbp, %rcx
	callq	get4x4Neighbour@PLT
	leal	-1(%r14), %edx
	leaq	24(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%rbp, %rcx
	callq	get4x4Neighbour@PLT
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB24_21
.LBB24_14:                              # %if.else131
	movl	%r15d, 12(%rsp)                 # 4-byte Spill
	leal	-1(%rbx), %esi
	leaq	849132(%r10), %rbp
	leaq	40(%rsp), %r8
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rdi
	movq	16(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%rbp, %rcx
	callq	get4x4Neighbour@PLT
	leal	-1(%r14), %edx
	leaq	24(%rsp), %r8
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%rbp, %rcx
	callq	get4x4Neighbour@PLT
	xorl	%edx, %edx
	cmpb	$1, %r12b
	jne	.LBB24_20
# %bb.15:                               # %if.then135
	movl	40(%rsp), %eax
	testl	%eax, %eax
	movswl	50(%rsp), %ecx
	movswl	48(%rsp), %esi
	leal	(%rsi,%rcx,4), %ecx
	cmovel	%eax, %ecx
	cmpl	$0, 24(%rsp)
	movq	72(%rsp), %r14                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
	movl	$0, %r9d
	je	.LBB24_17
# %bb.16:                               # %if.then156
	movswl	34(%rsp), %eax
	movswl	32(%rsp), %edx
	leal	(%rdx,%rax,4), %edx
.LBB24_17:                              # %if.end175
	movq	56(%rsp), %r12                  # 8-byte Reload
	movl	12(%rsp), %r15d                 # 4-byte Reload
	movzbl	10(%rsp), %ebp                  # 1-byte Folded Reload
	jmp	.LBB24_23
.LBB24_18:
	xorl	%edx, %edx
.LBB24_19:                              # %if.end175
	movq	%r15, %r12
	movl	12(%rsp), %r15d                 # 4-byte Reload
	movzbl	10(%rsp), %ebp                  # 1-byte Folded Reload
	jmp	.LBB24_22
.LBB24_20:
	xorl	%ecx, %ecx
	movq	56(%rsp), %r12                  # 8-byte Reload
	movl	12(%rsp), %r15d                 # 4-byte Reload
.LBB24_21:                              # %if.end175
	movzbl	10(%rsp), %ebp                  # 1-byte Folded Reload
	movq	72(%rsp), %r14                  # 8-byte Reload
.LBB24_22:                              # %if.end175
	movq	64(%rsp), %r8                   # 8-byte Reload
	xorl	%r9d, %r9d
.LBB24_23:                              # %if.end175
	movzbl	11(%rsp), %eax                  # 1-byte Folded Reload
	movb	%al, %r9b
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmpl	$3, 268(%rax)
	jne	.LBB24_25
# %bb.24:                               # %if.else228
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpl	$0, 849280(%rax)
	je	.LBB24_41
.LBB24_25:                              # %if.then178
	movl	$1, %eax
	cmpl	$2, %r14d
	jne	.LBB24_30
# %bb.26:                               # %if.end511
	xorl	%ecx, %ecx
	testb	%bpl, %bpl
	je	.LBB24_69
.LBB24_27:                              # %cond.end543
	testl	%eax, %eax
	je	.LBB24_40
.LBB24_28:                              # %if.then546
	cmpl	$2, %r14d
	jne	.LBB24_36
# %bb.29:                               # %if.then549
	movl	$51, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	orq	%rdx, 312(%r12)
	movl	$336, %esi                      # imm = 0x150
	movq	104(%rsp), %rcx                 # 8-byte Reload
	cmpl	$3, 268(%rcx)
	je	.LBB24_39
	jmp	.LBB24_40
.LBB24_30:                              # %if.then181
	cmpl	$0, 24(%rsp)
	movl	%r9d, %eax
	je	.LBB24_33
# %bb.31:                               # %if.then184
	movslq	28(%rsp), %rax
	imulq	$480, %rax, %rsi                # imm = 0x1E0
	movl	$1, %eax
	cmpw	$14, 152(%r8,%rsi)
	je	.LBB24_33
# %bb.32:                               # %if.else190
	addq	%r8, %rsi
	movq	312(%rsi), %rsi
	addl	%r13d, %edx
	xorl	%eax, %eax
	btq	%rdx, %rsi
	setb	%al
.LBB24_33:                              # %if.end197
	cmpl	$0, 40(%rsp)
	je	.LBB24_68
# %bb.34:                               # %if.then200
	movslq	44(%rsp), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	movl	$1, %r9d
	cmpw	$14, 152(%r8,%rdx)
	je	.LBB24_68
# %bb.35:                               # %if.else209
	addq	%rdx, %r8
	addq	$312, %r8                       # imm = 0x138
	jmp	.LBB24_67
.LBB24_36:                              # %if.else562
	cmpl	$12, %r14d
	jne	.LBB24_47
# %bb.37:                               # %if.then565
	movl	$51, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	orq	%rdx, 344(%r12)
.LBB24_38:                              # %if.end688.sink.split
	movl	$320, %esi                      # imm = 0x140
.LBB24_39:                              # %if.end688.sink.split
	orq	%rdx, (%r12,%rsi)
.LBB24_40:                              # %if.end688
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
.LBB24_41:                              # %if.else289
	.cfi_def_cfa_offset 192
	cmpl	$0, 24(%rsp)
	movl	%r9d, %eax
	je	.LBB24_57
# %bb.42:                               # %if.then292
	movslq	28(%rsp), %rax
	imulq	$480, %rax, %rsi                # imm = 0x1E0
	movl	$1, %eax
	cmpw	$14, 152(%r8,%rsi)
	je	.LBB24_57
# %bb.43:                               # %if.else301
	addq	%r8, %rsi
	xorl	%eax, %eax
	cmpl	$12, %r14d
	setne	%al
	cmpl	$2, %r14d
	leaq	344(,%rax,8), %rdi
	movl	$336, %eax                      # imm = 0x150
	cmovneq	%rdi, %rax
	cmpl	$21, %r14d
	ja	.LBB24_55
# %bb.44:                               # %if.else301
	movl	$60416, %edi                    # imm = 0xEC00
	btl	%r14d, %edi
	jb	.LBB24_53
# %bb.45:                               # %if.else301
	movl	$3866624, %edi                  # imm = 0x3B0000
	btl	%r14d, %edi
	jae	.LBB24_54
# %bb.46:                               # %if.then371
	movl	$328, %eax                      # imm = 0x148
	jmp	.LBB24_56
.LBB24_47:                              # %if.else576
	addl	$-3, %r14d
	cmpl	$18, %r14d
	ja	.LBB24_81
# %bb.48:                               # %if.else576
	jmpq	*.LJTI24_0(,%r14,8)
.LBB24_49:                              # %if.then653
	movl	$320, %esi                      # imm = 0x140
	cmpl	$63, %ecx
	jg	.LBB24_50
.LBB24_83:                              # %cond.false.i1007
	movslq	%ecx, %rcx
	movq	po2(,%rcx,8), %rdx
	jmp	.LBB24_39
.LBB24_51:                              # %if.then667
	movl	$328, %esi                      # imm = 0x148
	cmpl	$63, %ecx
	jle	.LBB24_83
.LBB24_50:
	xorl	%edx, %edx
	jmp	.LBB24_39
.LBB24_53:                              # %if.end393.sink.split.fold.split
	movl	$320, %eax                      # imm = 0x140
	jmp	.LBB24_56
.LBB24_54:                              # %if.else301
	movl	$266244, %edi                   # imm = 0x41004
	btl	%r14d, %edi
	jb	.LBB24_56
.LBB24_55:                              # %if.else379
	movl	$312, %eax                      # imm = 0x138
.LBB24_56:                              # %if.end393.sink.split
	movq	(%rsi,%rax), %rsi
	addl	%r13d, %edx
	xorl	%eax, %eax
	btq	%rdx, %rsi
	setb	%al
.LBB24_57:                              # %if.end393
	cmpl	$0, 40(%rsp)
	je	.LBB24_68
# %bb.58:                               # %if.then396
	movslq	44(%rsp), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	movl	$1, %r9d
	cmpw	$14, 152(%r8,%rdx)
	je	.LBB24_68
# %bb.59:                               # %if.else405
	addq	%rdx, %r8
	xorl	%edx, %edx
	cmpl	$12, %r14d
	setne	%dl
	cmpl	$2, %r14d
	leaq	344(,%rdx,8), %rsi
	movl	$336, %edx                      # imm = 0x150
	cmovneq	%rsi, %rdx
	cmpl	$21, %r14d
	ja	.LBB24_65
# %bb.60:                               # %if.else405
	movl	$60416, %esi                    # imm = 0xEC00
	btl	%r14d, %esi
	jb	.LBB24_63
# %bb.61:                               # %if.else405
	movl	$3866624, %esi                  # imm = 0x3B0000
	btl	%r14d, %esi
	jae	.LBB24_64
# %bb.62:                               # %if.then476
	movl	$328, %edx                      # imm = 0x148
	jmp	.LBB24_66
.LBB24_63:                              # %if.end498.sink.split.fold.split
	movl	$320, %edx                      # imm = 0x140
	jmp	.LBB24_66
.LBB24_64:                              # %if.else405
	movl	$266244, %esi                   # imm = 0x41004
	btl	%r14d, %esi
	jb	.LBB24_66
.LBB24_65:                              # %if.else484
	movl	$312, %edx                      # imm = 0x138
.LBB24_66:                              # %if.end498.sink.split
	addq	%rdx, %r8
.LBB24_67:                              # %if.end511.sink.split.sink.split
	movq	(%r8), %rdx
	addl	%r13d, %ecx
	xorl	%r9d, %r9d
	btq	%rcx, %rdx
	setb	%r9b
.LBB24_68:                              # %if.end511.sink.split
	movslq	%r14d, %rcx
	movswq	type2ctx_abs(%rcx,%rcx), %rcx
	shlq	$4, %rcx
	movq	120(%rsp), %rdx                 # 8-byte Reload
	addq	%rcx, %rdx
	shll	$2, %r9d
	leal	(%r9,%rax,8), %eax
	leaq	(%rax,%rdx), %rsi
	addq	$84, %rsi
	movq	128(%rsp), %rdi                 # 8-byte Reload
	callq	biari_decode_symbol@PLT
	xorl	%ecx, %ecx
	testb	%bpl, %bpl
	jne	.LBB24_27
.LBB24_69:                              # %cond.false514
	testb	%r15b, %r15b
	je	.LBB24_71
# %bb.70:                               # %cond.true516
	movq	96(%rsp), %rdx                  # 8-byte Reload
	sarl	$2, %edx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addl	%edx, %ecx
	incl	%ecx
	testl	%eax, %eax
	jne	.LBB24_28
	jmp	.LBB24_40
.LBB24_71:                              # %cond.false519
	movl	92(%rsp), %ecx                  # 4-byte Reload
	movl	88(%rsp), %edx                  # 4-byte Reload
	orb	%cl, %dl
	movq	96(%rsp), %rdx                  # 8-byte Reload
	je	.LBB24_73
# %bb.72:
	movzbl	%cl, %edx
	movl	$18, %ecx
	subl	%edx, %ecx
	testl	%eax, %eax
	jne	.LBB24_28
	jmp	.LBB24_40
.LBB24_73:                              # %cond.false525
	sarl	$2, %edx
	cmpb	$0, 84(%rsp)                    # 1-byte Folded Reload
	je	.LBB24_75
# %bb.74:                               # %cond.true527
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addl	%edx, %ecx
	addl	$19, %ecx
	testl	%eax, %eax
	jne	.LBB24_28
	jmp	.LBB24_40
.LBB24_75:                              # %cond.false531
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addl	%edx, %ecx
	addl	$35, %ecx
	testl	%eax, %eax
	jne	.LBB24_28
	jmp	.LBB24_40
.LBB24_76:                              # %if.then579
	movl	$51, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	orq	%rdx, 352(%r12)
	movl	$328, %esi                      # imm = 0x148
	jmp	.LBB24_39
.LBB24_77:                              # %if.then638
	movl	$17, %edx
	jmp	.LBB24_79
.LBB24_78:                              # %if.then611
	movl	$3, %edx
.LBB24_79:                              # %if.end688.sink.split
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	movl	$328, %esi                      # imm = 0x148
	jmp	.LBB24_39
.LBB24_80:                              # %if.then602
	movl	$3, %edx
	jmp	.LBB24_88
.LBB24_81:                              # %if.else672
	movl	$312, %esi                      # imm = 0x138
	cmpl	$63, %ecx
	jg	.LBB24_50
	jmp	.LBB24_83
.LBB24_84:                              # %if.then593
	movl	$3, %edx
	jmp	.LBB24_86
.LBB24_85:                              # %if.then620
	movl	$17, %edx
.LBB24_86:                              # %if.end688.sink.split
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	movl	$312, %esi                      # imm = 0x138
	jmp	.LBB24_39
.LBB24_87:                              # %if.then629
	movl	$17, %edx
.LBB24_88:                              # %if.end688.sink.split
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	jmp	.LBB24_38
.Lfunc_end24:
	.size	read_and_store_CBP_block_bit_444, .Lfunc_end24-read_and_store_CBP_block_bit_444
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI24_0:
	.quad	.LBB24_84
	.quad	.LBB24_85
	.quad	.LBB24_81
	.quad	.LBB24_81
	.quad	.LBB24_81
	.quad	.LBB24_81
	.quad	.LBB24_81
	.quad	.LBB24_49
	.quad	.LBB24_49
	.quad	.LBB24_81
	.quad	.LBB24_80
	.quad	.LBB24_87
	.quad	.LBB24_49
	.quad	.LBB24_51
	.quad	.LBB24_51
	.quad	.LBB24_76
	.quad	.LBB24_78
	.quad	.LBB24_77
	.quad	.LBB24_51
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function read_and_store_CBP_block_bit_normal
	.type	read_and_store_CBP_block_bit_normal,@function
read_and_store_CBP_block_bit_normal:    # @read_and_store_CBP_block_bit_normal
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
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	8(%rdi), %r15
	movq	328(%rax), %r12
	movq	13512(%rax), %r14
	cmpl	$9, %edx
	ja	.LBB25_53
# %bb.1:                                # %entry
	movl	%edx, %r13d
	jmpq	*.LJTI25_0(,%r13,8)
.LBB25_2:                               # %if.then285
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	cmpl	$1, 100(%rbx)
	movl	$18, %r12d
	sbbl	$0, %r12d
	xorl	%ebp, %ebp
	cmpl	$0, 96(%rbx)
	setne	%bpl
	addq	$849132, %r15                   # imm = 0xCF4EC
	leaq	16(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	movq	%rsp, %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	cmpl	$0, (%rsp)
	movl	%ebp, %eax
	je	.LBB25_5
# %bb.3:                                # %if.then311
	movslq	4(%rsp), %rax
	imulq	$480, %rax, %rcx                # imm = 0x1E0
	movl	$1, %eax
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_5
# %bb.4:                                # %if.else318
	addq	%r14, %rcx
	movq	312(%rcx), %rcx
	xorl	%eax, %eax
	btq	%r12, %rcx
	setb	%al
.LBB25_5:                               # %if.end326
	cmpl	$0, 16(%rsp)
	je	.LBB25_8
# %bb.6:                                # %if.then329
	movslq	20(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	$1, %ebp
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_8
# %bb.7:                                # %if.else338
	addq	%rcx, %r14
	movq	312(%r14), %rcx
	xorl	%ebp, %ebp
	btq	%r12, %rcx
	setb	%bpl
.LBB25_8:                               # %if.end346
	movswq	type2ctx_abs(%r13,%r13), %rcx
	shlq	$4, %rcx
	movq	40(%rsp), %r14                  # 8-byte Reload
	addq	%rcx, %r14
	shll	$2, %ebp
	leal	(%rbp,%rax,8), %eax
	leaq	(%rax,%r14), %rsi
	addq	$84, %rsi
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB25_64
# %bb.9:                                # %if.then359
	movl	%r12d, %ecx
	jmp	.LBB25_62
.LBB25_10:                              # %if.then266
	movl	60(%rbx), %ecx
	shrl	$2, %ecx
	addl	64(%rbx), %ecx
	incb	%cl
	movl	$51, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	orq	%rax, 312(%rbx)
	movl	$1, %eax
	jmp	.LBB25_64
.LBB25_11:                              # %if.then204
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movl	60(%rbx), %r12d
	xorl	%r13d, %r13d
	cmpl	$0, 96(%rbx)
	movl	64(%rbx), %ebp
	setne	%r13b
	leal	-1(%r12), %esi
	addq	$849124, %r15                   # imm = 0xCF4E4
	leaq	16(%rsp), %r8
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	leal	-1(%rbp), %edx
	movq	%rsp, %r8
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	cmpl	$0, (%rsp)
	movl	%r13d, %eax
	je	.LBB25_14
# %bb.12:                               # %if.then229
	movslq	4(%rsp), %rax
	imulq	$480, %rax, %rcx                # imm = 0x1E0
	movl	$1, %eax
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_14
# %bb.13:                               # %if.else.i720
	addq	%r14, %rcx
	movzwl	10(%rsp), %eax
	shll	$2, %eax
	addl	8(%rsp), %eax
	movq	312(%rcx), %rcx
	incb	%al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btq	%rdx, %rcx
	setb	%al
.LBB25_14:                              # %if.end234
	cmpl	$0, 16(%rsp)
	je	.LBB25_17
# %bb.15:                               # %if.then237
	movslq	20(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	$1, %r13d
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_17
# %bb.16:                               # %if.else.i734
	addq	%rcx, %r14
	movzwl	26(%rsp), %ecx
	shll	$2, %ecx
	addl	24(%rsp), %ecx
	movq	312(%r14), %rdx
	incb	%cl
	movzbl	%cl, %ecx
	xorl	%r13d, %r13d
	btq	%rcx, %rdx
	setb	%r13b
.LBB25_17:                              # %if.end242
	shll	$2, %r13d
	leal	(%r13,%rax,8), %eax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax), %rsi
	addq	$148, %rsi
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	jne	.LBB25_34
	jmp	.LBB25_64
.LBB25_19:                              # %if.then
	movq	%rsi, %r13
	addq	$849124, %r15                   # imm = 0xCF4E4
	leaq	16(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	movq	%rsp, %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	movl	$2, %eax
	cmpl	$0, (%rsp)
	je	.LBB25_22
# %bb.20:                               # %if.then7
	movslq	4(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_22
# %bb.21:                               # %if.else.i
	addq	%r14, %rcx
	movl	312(%rcx), %eax
	addl	%eax, %eax
	andl	$2, %eax
.LBB25_22:                              # %if.end
	movl	$1, %ecx
	cmpl	$0, 16(%rsp)
	je	.LBB25_25
# %bb.23:                               # %if.then11
	movslq	20(%rsp), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpw	$14, 152(%r14,%rdx)
	je	.LBB25_25
# %bb.24:                               # %if.else.i636
	addq	%rdx, %r14
	movq	312(%r14), %rcx
	andl	$1, %ecx
.LBB25_25:                              # %if.end16
	orl	%eax, %ecx
	leaq	(%r12,%rcx,4), %rsi
	addq	$84, %rsi
	movq	%r13, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB25_64
# %bb.26:                               # %if.then24
	orb	$1, 312(%rbx)
	jmp	.LBB25_64
.LBB25_27:                              # %if.then28
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movl	60(%rbx), %r12d
	xorl	%r13d, %r13d
	cmpl	$0, 96(%rbx)
	movl	64(%rbx), %ebp
	setne	%r13b
	leal	-1(%r12), %esi
	addq	$849124, %r15                   # imm = 0xCF4E4
	leaq	16(%rsp), %r8
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	leal	-1(%rbp), %edx
	movq	%rsp, %r8
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	cmpl	$0, (%rsp)
	movl	%r13d, %eax
	je	.LBB25_30
# %bb.28:                               # %if.then44
	movslq	4(%rsp), %rax
	imulq	$480, %rax, %rcx                # imm = 0x1E0
	movl	$1, %eax
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_30
# %bb.29:                               # %if.else.i643
	addq	%r14, %rcx
	movzwl	10(%rsp), %eax
	shll	$2, %eax
	addl	8(%rsp), %eax
	movq	312(%rcx), %rcx
	incb	%al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btq	%rdx, %rcx
	setb	%al
.LBB25_30:                              # %if.end49
	cmpl	$0, 16(%rsp)
	je	.LBB25_33
# %bb.31:                               # %if.then52
	movslq	20(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	$1, %r13d
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_33
# %bb.32:                               # %if.else.i649
	addq	%rcx, %r14
	movzwl	26(%rsp), %ecx
	shll	$2, %ecx
	addl	24(%rsp), %ecx
	movq	312(%r14), %rdx
	incb	%cl
	movzbl	%cl, %ecx
	xorl	%r13d, %r13d
	btq	%rcx, %rdx
	setb	%r13b
.LBB25_33:                              # %if.end57
	shll	$2, %r13d
	leal	(%r13,%rax,8), %eax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax), %rsi
	addq	$100, %rsi
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB25_64
.LBB25_34:                              # %if.then70
	sarl	$2, %r12d
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addl	%r12d, %ecx
	incl	%ecx
	cmpl	$63, %ecx
	jle	.LBB25_61
.LBB25_35:
	xorl	%ecx, %ecx
	jmp	.LBB25_63
.LBB25_36:                              # %if.then80
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movl	60(%rbx), %ebp
	xorl	%r13d, %r13d
	cmpl	$0, 96(%rbx)
	movl	64(%rbx), %r12d
	setne	%r13b
	leal	-1(%rbp), %esi
	addq	$849124, %r15                   # imm = 0xCF4E4
	leaq	16(%rsp), %r8
	movq	%rbx, %rdi
	movl	%r12d, %edx
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	leal	-1(%r12), %edx
	movq	%rsp, %r8
	movq	%rbx, %rdi
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	cmpl	$0, (%rsp)
	movl	%r13d, %eax
	je	.LBB25_39
# %bb.37:                               # %if.then105
	movslq	4(%rsp), %rax
	imulq	$480, %rax, %rcx                # imm = 0x1E0
	movl	$1, %eax
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_39
# %bb.38:                               # %if.else.i664
	addq	%r14, %rcx
	movzwl	10(%rsp), %eax
	shll	$2, %eax
	addl	8(%rsp), %eax
	movq	312(%rcx), %rcx
	incb	%al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btq	%rdx, %rcx
	setb	%al
.LBB25_39:                              # %if.end110
	cmpl	$0, 16(%rsp)
	movq	48(%rsp), %rdi                  # 8-byte Reload
	je	.LBB25_42
# %bb.40:                               # %if.then113
	movslq	20(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	$1, %r13d
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_42
# %bb.41:                               # %if.else.i678
	addq	%rcx, %r14
	movzwl	26(%rsp), %ecx
	shll	$2, %ecx
	addl	24(%rsp), %ecx
	movq	312(%r14), %rdx
	incb	%cl
	movzbl	%cl, %ecx
	xorl	%r13d, %r13d
	btq	%rcx, %rdx
	setb	%r13b
.LBB25_42:                              # %if.end118
	shll	$2, %r13d
	leal	(%r13,%rax,8), %eax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax), %rsi
	addq	$132, %rsi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB25_64
# %bb.43:                               # %if.then131
	movq	32(%rsp), %rcx                  # 8-byte Reload
	shrl	$2, %ecx
	addl	%ecx, %r12d
	incb	%r12b
	movl	$3, %edx
	movl	%r12d, %ecx
	jmp	.LBB25_52
.LBB25_44:                              # %if.then141
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movl	60(%rbx), %r12d
	xorl	%r13d, %r13d
	cmpl	$0, 96(%rbx)
	movl	64(%rbx), %ebp
	setne	%r13b
	leal	-1(%r12), %esi
	addq	$849124, %r15                   # imm = 0xCF4E4
	leaq	16(%rsp), %r8
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	leal	-1(%rbp), %edx
	movq	%rsp, %r8
	movq	%rbx, %rdi
	movq	%r12, 32(%rsp)                  # 8-byte Spill
	movl	%r12d, %esi
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	cmpl	$0, (%rsp)
	movl	%r13d, %eax
	je	.LBB25_47
# %bb.45:                               # %if.then166
	movslq	4(%rsp), %rax
	imulq	$480, %rax, %rcx                # imm = 0x1E0
	movl	$1, %eax
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_47
# %bb.46:                               # %if.else.i692
	addq	%r14, %rcx
	movzwl	10(%rsp), %eax
	shll	$2, %eax
	addl	8(%rsp), %eax
	movq	312(%rcx), %rcx
	incb	%al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btq	%rdx, %rcx
	setb	%al
.LBB25_47:                              # %if.end171
	cmpl	$0, 16(%rsp)
	movq	48(%rsp), %rdi                  # 8-byte Reload
	je	.LBB25_50
# %bb.48:                               # %if.then174
	movslq	20(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	$1, %r13d
	cmpw	$14, 152(%r14,%rcx)
	je	.LBB25_50
# %bb.49:                               # %if.else.i706
	addq	%rcx, %r14
	movzwl	26(%rsp), %ecx
	shll	$2, %ecx
	addl	24(%rsp), %ecx
	movq	312(%r14), %rdx
	incb	%cl
	movzbl	%cl, %ecx
	xorl	%r13d, %r13d
	btq	%rcx, %rdx
	setb	%r13b
.LBB25_50:                              # %if.end179
	shll	$2, %r13d
	leal	(%r13,%rax,8), %eax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax), %rsi
	addq	$132, %rsi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB25_64
# %bb.51:                               # %if.then192
	movq	32(%rsp), %rdx                  # 8-byte Reload
	shrl	$2, %edx
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addl	%edx, %ecx
	incb	%cl
	movl	$17, %edx
                                        # kill: def $cl killed $cl killed $rcx
.LBB25_52:                              # %if.end480
	shlq	%cl, %rdx
	orq	%rdx, 312(%rbx)
	jmp	.LBB25_64
.LBB25_53:                              # %if.else367
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movl	%edx, 56(%rsp)                  # 4-byte Spill
	movl	100(%rbx), %eax
	xorl	%r14d, %r14d
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	testl	%eax, %eax
	setne	%r14b
	movl	60(%rbx), %ebp
	shll	$4, %r14d
	addl	$19, %r14d
	xorl	%r12d, %r12d
	cmpl	$0, 96(%rbx)
	movl	64(%rbx), %r13d
	setne	%r12b
	leal	-1(%rbp), %esi
	addq	$849132, %r15                   # imm = 0xCF4EC
	leaq	16(%rsp), %r8
	movq	%rbx, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	movq	%r13, 72(%rsp)                  # 8-byte Spill
	leal	-1(%r13), %edx
	movq	%rsp, %r8
	movq	%rbx, %rdi
	movq	%rbp, 80(%rsp)                  # 8-byte Spill
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	get4x4NeighbourBase@PLT
	cmpl	$0, (%rsp)
	movl	%r12d, %eax
	je	.LBB25_56
# %bb.54:                               # %if.then398
	movslq	4(%rsp), %rax
	imulq	$480, %rax, %rcx                # imm = 0x1E0
	movl	$1, %eax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	cmpw	$14, 152(%rdx,%rcx)
	je	.LBB25_56
# %bb.55:                               # %if.else407
	addq	32(%rsp), %rcx                  # 8-byte Folded Reload
	movzwl	10(%rsp), %eax
	movq	312(%rcx), %rcx
	movl	8(%rsp), %edx
	addl	%r14d, %edx
	leal	(%rdx,%rax,4), %edx
	xorl	%eax, %eax
	btq	%rdx, %rcx
	setb	%al
.LBB25_56:                              # %if.end420
	cmpl	$0, 16(%rsp)
	movl	56(%rsp), %ebp                  # 4-byte Reload
	je	.LBB25_59
# %bb.57:                               # %if.then423
	movslq	20(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	$1, %r12d
	movq	32(%rsp), %rdx                  # 8-byte Reload
	cmpw	$14, 152(%rdx,%rcx)
	je	.LBB25_59
# %bb.58:                               # %if.else432
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	%rcx, %rdx
	movzwl	26(%rsp), %ecx
	movq	312(%rdx), %rdx
	addl	24(%rsp), %r14d
	leal	(%r14,%rcx,4), %ecx
	xorl	%r12d, %r12d
	btq	%rcx, %rdx
	setb	%r12b
.LBB25_59:                              # %if.end447
	movslq	%ebp, %rcx
	movswq	type2ctx_abs(%rcx,%rcx), %rcx
	shlq	$4, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	%rcx, %rdx
	shll	$2, %r12d
	leal	(%r12,%rax,8), %eax
	leaq	(%rax,%rdx), %rsi
	addq	$84, %rsi
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB25_64
# %bb.60:                               # %if.then460
	xorl	%ecx, %ecx
	cmpl	$0, 68(%rsp)                    # 4-byte Folded Reload
	setne	%cl
	movq	80(%rsp), %rdx                  # 8-byte Reload
	sarl	$2, %edx
	shll	$4, %ecx
	addl	72(%rsp), %ecx                  # 4-byte Folded Reload
	addl	%edx, %ecx
	addl	$19, %ecx
	cmpl	$63, %ecx
	jg	.LBB25_35
.LBB25_61:                              # %cond.false.i767
	movslq	%ecx, %rcx
.LBB25_62:                              # %i64_power2.exit771
	movq	po2(,%rcx,8), %rcx
.LBB25_63:                              # %i64_power2.exit771
	orq	%rcx, 312(%rbx)
.LBB25_64:                              # %if.end480
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
.Lfunc_end25:
	.size	read_and_store_CBP_block_bit_normal, .Lfunc_end25-read_and_store_CBP_block_bit_normal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI25_0:
	.quad	.LBB25_19
	.quad	.LBB25_27
	.quad	.LBB25_10
	.quad	.LBB25_36
	.quad	.LBB25_44
	.quad	.LBB25_11
	.quad	.LBB25_2
	.quad	.LBB25_53
	.quad	.LBB25_2
	.quad	.LBB25_2
                                        # -- End function
	.text
	.globl	readRunLevel_CABAC              # -- Begin function readRunLevel_CABAC
	.p2align	4, 0x90
	.type	readRunLevel_CABAC,@function
readRunLevel_CABAC:                     # @readRunLevel_CABAC
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
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	(%rdi), %rdx
	movl	13264(%rdx), %eax
	testl	%eax, %eax
	js	.LBB26_1
# %bb.39:                               # %if.end9
	testl	%eax, %eax
	jne	.LBB26_40
	jmp	.LBB26_44
.LBB26_1:                               # %if.then
	movq	%rdi, %r15
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movl	24(%rbp), %edx
	movq	%r14, %rsi
	callq	*456(%rdi)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	%eax, 13264(%rdx)
	testl	%eax, %eax
	je	.LBB26_44
# %bb.2:                                # %if.then3
	movslq	24(%rbp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	(%r15), %rcx
	cmpl	$0, 184(%rcx)
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	je	.LBB26_4
# %bb.3:
	movl	$pos2ctx_map_int, %eax
	movl	$1, %edx
	jmp	.LBB26_5
.LBB26_4:                               # %lor.end.i
	xorl	%edx, %edx
	cmpl	$0, 384(%r15)
	setne	%dl
	movl	$pos2ctx_map_int, %esi
	movl	$pos2ctx_map, %eax
	cmovneq	%rsi, %rax
.LBB26_5:                               # %for.body.lr.ph.i
	movq	16(%rsp), %rsi                  # 8-byte Reload
	leaq	13008(%rsi), %rbp
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movswq	type2ctx_last(%rdi,%rdi), %rsi
	imulq	$60, %rsi, %rsi
	imulq	$1320, %rdx, %rdx               # imm = 0x528
	addq	328(%rcx), %rdx
	addq	%rsi, %rdx
	addq	$436, %rdx                      # imm = 0x1B4
	movswl	maxpos(%rdi,%rdi), %r12d
	movl	$133250, %ecx                   # imm = 0x20882
	xorl	%ebx, %ebx
	btq	%rdi, %rcx
	setb	%bl
	addl	%ebx, %r12d
	movq	(%rax,%rdi,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	movl	%r12d, 32(%rsp)                 # 4-byte Spill
	jmp	.LBB26_6
	.p2align	4, 0x90
.LBB26_10:                              # %if.else.i
                                        #   in Loop: Header=BB26_6 Depth=1
	movl	$0, (%r15)
	movl	%ebx, %eax
	movq	%r13, %rdx
.LBB26_11:                              # %for.inc.i
                                        #   in Loop: Header=BB26_6 Depth=1
	movl	32(%rsp), %r12d                 # 4-byte Reload
	leal	1(%rax), %ebx
	cmpl	%r12d, %ebx
	jge	.LBB26_13
.LBB26_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %r15
	movslq	%ebx, %r12
	movq	40(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rax,%r12), %eax
	leaq	(%rdx,%rax,4), %rsi
	movq	%r14, %rdi
	movq	%rdx, %r13
	callq	biari_decode_symbol@PLT
	addq	$4, %rbp
	testl	%eax, %eax
	je	.LBB26_10
# %bb.7:                                # %if.then28.i
                                        #   in Loop: Header=BB26_6 Depth=1
	movl	$1, (%r15)
	incl	12(%rsp)                        # 4-byte Folded Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	movslq	pos2ctx_last.rel(,%rax,4), %rax
	movzbl	pos2ctx_last.rel(%rax,%r12), %eax
	movq	%r13, %r15
	leaq	2640(,%rax,4), %rsi
	addq	%r13, %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	testl	%eax, %eax
	je	.LBB26_8
# %bb.9:                                # %if.then39.i
                                        #   in Loop: Header=BB26_6 Depth=1
	movl	32(%rsp), %r12d                 # 4-byte Reload
	movl	%r12d, %eax
	subl	%ebx, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	%r12d, %eax
	movq	%r15, %rdx
	leal	1(%rax), %ebx
	cmpl	%r12d, %ebx
	jl	.LBB26_6
	jmp	.LBB26_13
	.p2align	4, 0x90
.LBB26_8:                               #   in Loop: Header=BB26_6 Depth=1
	movl	%ebx, %eax
	movq	%r15, %rdx
	jmp	.LBB26_11
.LBB26_13:                              # %for.end.i
	cmpl	%r12d, %eax
	jge	.LBB26_14
# %bb.15:                               # %if.then47.i
	movl	$1, (%rbp)
	movl	12(%rsp), %ecx                  # 4-byte Reload
	incl	%ecx
	movq	16(%rsp), %rax                  # 8-byte Reload
	jmp	.LBB26_16
.LBB26_14:
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	12(%rsp), %ecx                  # 4-byte Reload
.LBB26_16:                              # %read_significance_map.exit
	movl	%ecx, 13264(%rax)
	movq	328(%rax), %rax
	movq	48(%rsp), %rbp                  # 8-byte Reload
	movslq	24(%rbp), %rcx
	movswq	type2ctx_abs(%rcx,%rcx), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	5716(%rax,%rdx,4), %rbx
	movswl	max_c2(%rcx,%rcx), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movswq	maxpos(%rcx,%rcx), %r15
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r15,4), %r12
	movl	$1, %r13d
	movl	$0, 40(%rsp)                    # 4-byte Folded Spill
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB26_17
	.p2align	4, 0x90
.LBB26_37:                              # %if.end38.i
                                        #   in Loop: Header=BB26_17 Depth=1
	addq	$-4, %r12
	leal	-1(%r15), %eax
	testl	%r15d, %r15d
	movl	%eax, %r15d
	jle	.LBB26_38
.LBB26_17:                              # %for.body.i58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_21 Depth 2
                                        #     Child Loop BB26_26 Depth 2
                                        #     Child Loop BB26_30 Depth 2
	cmpl	$0, (%r12)
	je	.LBB26_37
# %bb.18:                               # %if.then.i
                                        #   in Loop: Header=BB26_17 Depth=1
	cmpl	$4, %r13d
	movl	$4, %eax
	cmovll	%r13d, %eax
	cltq
	leaq	(%rbx,%rax,4), %rsi
	movq	%r14, %rdi
	callq	biari_decode_symbol@PLT
	addl	(%r12), %eax
	movl	%eax, (%r12)
	cmpl	$2, %eax
	jne	.LBB26_34
# %bb.19:                               # %if.then25.i
                                        #   in Loop: Header=BB26_17 Depth=1
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	movl	12(%rsp), %eax                  # 4-byte Reload
	movl	40(%rsp), %ecx                  # 4-byte Reload
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	cltq
	leaq	(%rbx,%rax,4), %r15
	addq	$440, %r15                      # imm = 0x1B8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	movl	$0, %r13d
	testl	%eax, %eax
	je	.LBB26_33
# %bb.20:                               # %do.body.i.i.preheader
                                        #   in Loop: Header=BB26_17 Depth=1
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB26_21:                              # %do.body.i.i
                                        #   Parent Loop BB26_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	biari_decode_symbol@PLT
	leal	-1(%rbx), %r12d
	testl	%eax, %eax
	je	.LBB26_23
# %bb.22:                               # %do.body.i.i
                                        #   in Loop: Header=BB26_21 Depth=2
	cmpl	$-11, %ebx
	movl	%r12d, %ebx
	jne	.LBB26_21
.LBB26_23:                              # %do.end.i.i
                                        #   in Loop: Header=BB26_17 Depth=1
	testl	%eax, %eax
	je	.LBB26_24
# %bb.25:                               # %do.body.i.i.i.preheader
                                        #   in Loop: Header=BB26_17 Depth=1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB26_26:                              # %do.body.i.i.i
                                        #   Parent Loop BB26_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebx
	movl	%ecx, %r15d
	movq	%r14, %rdi
	callq	biari_decode_symbol_eq_prob@PLT
	movl	$1, %r13d
	movl	%r15d, %ecx
	shll	%cl, %r13d
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	cmovnel	%ebp, %r13d
	sete	%cl
	addl	%r15d, %ecx
	leal	(%rbx,%r13), %edx
	testl	%eax, %eax
	jne	.LBB26_26
# %bb.27:                               # %while.cond.preheader.i.i.i
                                        #   in Loop: Header=BB26_17 Depth=1
	testl	%ecx, %ecx
	je	.LBB26_28
# %bb.29:                               # %while.body.i.i.i.preheader
                                        #   in Loop: Header=BB26_17 Depth=1
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	sete	%cl
	leal	(%r15,%rcx), %ebp
	decl	%ebp
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB26_30:                              # %while.body.i.i.i
                                        #   Parent Loop BB26_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	callq	biari_decode_symbol_eq_prob@PLT
	movl	$1, %edx
	movl	%ebp, %ecx
	shll	%cl, %edx
	cmpl	$1, %eax
	movl	$0, %eax
	cmovnel	%eax, %edx
	orl	%edx, %r15d
	addl	$-1, %ebp
	jb	.LBB26_30
	jmp	.LBB26_31
	.p2align	4, 0x90
.LBB26_34:                              # %if.else.i61
                                        #   in Loop: Header=BB26_17 Depth=1
	leal	1(%r13), %eax
	testl	%r13d, %r13d
	cmovel	%r13d, %eax
	movl	%eax, %r13d
	movq	%r14, %rdi
	callq	biari_decode_symbol_eq_prob@PLT
	testl	%eax, %eax
	jne	.LBB26_36
	jmp	.LBB26_37
.LBB26_24:                              #   in Loop: Header=BB26_17 Depth=1
	negl	%r12d
	movl	%r12d, %r13d
	jmp	.LBB26_32
.LBB26_28:                              #   in Loop: Header=BB26_17 Depth=1
	xorl	%r15d, %r15d
.LBB26_31:                              # %exp_golomb_decode_eq_prob.exit.i.i
                                        #   in Loop: Header=BB26_17 Depth=1
	addl	%ebx, %r13d
	addl	%r15d, %r13d
	subl	%r12d, %r13d
	incl	%r13d
	movq	48(%rsp), %rbp                  # 8-byte Reload
.LBB26_32:                              # %unary_exp_golomb_level_decode.exit.i
                                        #   in Loop: Header=BB26_17 Depth=1
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	24(%rsp), %r12                  # 8-byte Reload
.LBB26_33:                              # %unary_exp_golomb_level_decode.exit.i
                                        #   in Loop: Header=BB26_17 Depth=1
	incl	40(%rsp)                        # 4-byte Folded Spill
	addl	%r13d, (%r12)
	movq	32(%rsp), %r15                  # 8-byte Reload
	xorl	%r13d, %r13d
	movq	%r14, %rdi
	callq	biari_decode_symbol_eq_prob@PLT
	testl	%eax, %eax
	je	.LBB26_37
.LBB26_36:                              # %if.then36.i
                                        #   in Loop: Header=BB26_17 Depth=1
	negl	(%r12)
	jmp	.LBB26_37
.LBB26_38:                              # %if.end9thread-pre-split
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	13264(%rdx), %eax
	testl	%eax, %eax
	je	.LBB26_44
.LBB26_40:                              # %if.then10
	movl	$0, 8(%rbp)
	movl	13268(%rdx), %eax
	movslq	%eax, %rcx
	cmpl	$0, 13008(%rdx,%rcx,4)
	jne	.LBB26_43
	.p2align	4, 0x90
.LBB26_41:                              # %for.inc
                                        # =>This Inner Loop Header: Depth=1
	incl	%eax
	movl	%eax, 13268(%rdx)
	incl	8(%rbp)
	movl	13268(%rdx), %eax
	movslq	%eax, %rcx
	cmpl	$0, 13008(%rdx,%rcx,4)
	je	.LBB26_41
.LBB26_43:                              # %for.end
	incl	%eax
	movl	%eax, 13268(%rdx)
	movl	13008(%rdx,%rcx,4), %eax
	movl	%eax, 4(%rbp)
	subl	$1, 13264(%rdx)
	jae	.LBB26_47
.LBB26_46:                              # %if.then25
	movl	$0, 13268(%rdx)
.LBB26_47:                              # %if.end27
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
.LBB26_44:                              # %if.else
	.cfi_def_cfa_offset 128
	movl	$0, 8(%rbp)
	xorl	%eax, %eax
	movl	%eax, 4(%rbp)
	subl	$1, 13264(%rdx)
	jb	.LBB26_46
	jmp	.LBB26_47
.Lfunc_end26:
	.size	readRunLevel_CABAC, .Lfunc_end26-readRunLevel_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_CABAC         # -- Begin function readSyntaxElement_CABAC
	.p2align	4, 0x90
	.type	readSyntaxElement_CABAC,@function
readSyntaxElement_CABAC:                # @readSyntaxElement_CABAC
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
	movq	%rdi, %r14
	leaq	8(%rdx), %r15
	movq	%r15, %rdi
	callq	arideco_bits_read@PLT
	movl	%eax, %ebp
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*40(%rbx)
	movq	%r15, %rdi
	callq	arideco_bits_read@PLT
	subl	%ebp, %eax
	movl	%eax, 12(%rbx)
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
.Lfunc_end27:
	.size	readSyntaxElement_CABAC, .Lfunc_end27-readSyntaxElement_CABAC
	.cfi_endproc
                                        # -- End function
	.globl	cabac_startcode_follows         # -- Begin function cabac_startcode_follows
	.p2align	4, 0x90
	.type	cabac_startcode_follows,@function
cabac_startcode_follows:                # @cabac_startcode_follows
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%esi, %esi
	je	.LBB28_1
# %bb.2:                                # %if.then
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	312(%rdi), %rdi
	addq	$8, %rdi
	callq	biari_decode_final@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	sete	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB28_1:
	xorl	%eax, %eax
	retq
.Lfunc_end28:
	.size	cabac_startcode_follows, .Lfunc_end28-cabac_startcode_follows
	.cfi_endproc
                                        # -- End function
	.globl	readIPCM_CABAC                  # -- Begin function readIPCM_CABAC
	.p2align	4, 0x90
	.type	readIPCM_CABAC,@function
readIPCM_CABAC:                         # @readIPCM_CABAC
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	(%rdi), %rdx
	movq	13520(%rdi), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	(%rsi), %rax
	movq	16(%rax), %r15
	movl	12(%rax), %eax
	movl	$0, 8(%rsp)
	movl	16(%rsi), %ecx
	cmpl	$8, %ecx
	jl	.LBB29_2
	.p2align	4, 0x90
.LBB29_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	shrl	$8, 12(%rsi)
	addl	$-8, %ecx
	movl	%ecx, 16(%rsi)
	movq	32(%rsi), %rcx
	decl	(%rcx)
	movl	16(%rsi), %ecx
	cmpl	$7, %ecx
	jg	.LBB29_1
.LBB29_2:                               # %while.end
	leal	7(,%rax,8), %r9d
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movq	32(%rsi), %rax
	movl	(%rax), %r12d
	shll	$3, %r12d
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movswl	849040(%rdx), %esi
	leal	(%rsi,%rsi,4), %eax
	leal	(%rax,%rax,2), %ecx
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	leal	(%rsi,%rsi), %ecx
	movl	%esi, %edx
	shll	$4, %edx
	subl	%ecx, %edx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	leal	(%rsi,%rsi,2), %edx
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	leal	(%rsi,%rdx,4), %edx
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	leal	(,%rsi,4), %edx
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rdx,2), %edx
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	leal	(,%rsi,8), %edx
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	subl	%esi, %edx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rsi), %edx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	addl	%esi, %edx
	addl	%esi, %edx
	addl	%esi, %edx
	addl	%esi, %edx
	movl	%edx, 52(%rsp)                  # 4-byte Spill
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	leal	(%rsi,%rax,2), %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rcx,4), %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	leal	(%rsi,%rsi,8), %eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rcx,2), %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movl	%r9d, 12(%rsp)                  # 4-byte Spill
	movq	80(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB29_3:                               # %for.cond9.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r15, %rdi
	movl	%r12d, %esi
	leaq	8(%rsp), %rdx
	movl	%r9d, %ecx
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %r15d
	addl	%r14d, %r15d
	movl	8(%rsp), %eax
	movq	1272(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r13), %rcx
	movl	%eax, (%rcx)
	leal	(%r12,%rbx), %r13d
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	%r13d, %esi
	leaq	8(%rsp), %r14
	movq	%r14, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %ebp
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 4(%rcx)
	addl	%ebx, %r13d
	movq	184(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r14, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %r14d
	addl	%ebp, %r14d
	addl	%r15d, %r14d
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 8(%rcx)
	addl	%ebx, %r13d
	movq	168(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	leaq	8(%rsp), %rbp
	movq	%rbp, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %r15d
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 12(%rcx)
	addl	%ebx, %r13d
	movq	152(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbp, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %ebp
	addl	%r15d, %ebp
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 16(%rcx)
	addl	%ebx, %r13d
	movq	192(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	leaq	8(%rsp), %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %r15d
	addl	%ebp, %r15d
	addl	%r14d, %r15d
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 20(%rcx)
	addl	%ebx, %r13d
	addl	52(%rsp), %r13d                 # 4-byte Folded Reload
	movl	%r13d, 60(%rsp)                 # 4-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	leaq	8(%rsp), %r13
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %ebp
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 24(%rcx)
	movq	128(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %r14d
	addl	%ebp, %r14d
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 28(%rcx)
	movq	136(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %ebp
	addl	%r14d, %ebp
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 32(%rcx)
	movq	96(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %r14d
	addl	%ebp, %r14d
	addl	%r15d, %r14d
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 36(%rcx)
	movq	104(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %ebp
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 40(%rcx)
	movq	112(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %r15d
	addl	%ebp, %r15d
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 44(%rcx)
	movq	144(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %ebp
	addl	%r15d, %ebp
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 48(%rcx)
	movq	160(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %r15d
	addl	%ebp, %r15d
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 52(%rcx)
	movq	176(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	%eax, %ebp
	addl	%r15d, %ebp
	movq	24(%rsp), %r15                  # 8-byte Reload
	addl	%r14d, %ebp
	movl	8(%rsp), %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 56(%rcx)
	addl	56(%rsp), %r12d                 # 4-byte Folded Reload
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%r13, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ebx, %r8d
	callq	GetBits@PLT
	movl	12(%rsp), %r9d                  # 4-byte Reload
	movl	%eax, %r14d
	addl	%ebp, %r14d
	movq	32(%rsp), %rbp                  # 8-byte Reload
	movl	8(%rsp), %eax
	movq	1272(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx), %rcx
	movl	%eax, 60(%rcx)
	movl	60(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %r12d
	movq	16(%rsp), %r13                  # 8-byte Reload
	addl	120(%rsp), %r12d                # 4-byte Folded Reload
	addq	$8, %r13
	cmpq	$128, %r13
	jne	.LBB29_3
# %bb.4:                                # %for.end20
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 268(%rax)
	je	.LBB29_22
# %bb.5:                                # %land.lhs.true
	movq	40(%rsp), %rsi                  # 8-byte Reload
	cmpl	$0, 849280(%rsi)
	je	.LBB29_6
.LBB29_22:                              # %if.end
	movl	%r14d, %eax
	sarl	$3, %eax
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rdx), %rcx
	addl	%eax, (%rcx)
	testb	$7, %r14b
	je	.LBB29_24
# %bb.23:                               # %if.then60
	movq	32(%rdx), %rax
	incl	(%rax)
.LBB29_24:                              # %if.end63
	addq	$200, %rsp
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
.LBB29_6:                               # %for.cond26.preheader
	.cfi_def_cfa_offset 256
	movl	849112(%rsi), %eax
	testl	%eax, %eax
	jle	.LBB29_22
# %bb.7:                                # %for.cond34.preheader.lr.ph
	movl	849108(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.LBB29_22
# %bb.8:                                # %for.cond34.preheader.preheader
	movswl	849042(%rsi), %r8d
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r13
	movl	%r8d, 16(%rsp)                  # 4-byte Spill
	jmp	.LBB29_9
	.p2align	4, 0x90
.LBB29_13:                              # %for.inc51
                                        #   in Loop: Header=BB29_9 Depth=1
	incq	%rbx
	movslq	%eax, %r10
	cmpq	%r10, %rbx
	jge	.LBB29_14
.LBB29_9:                               # %for.cond34.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_11 Depth 2
	testl	%ecx, %ecx
	jle	.LBB29_13
# %bb.10:                               # %for.body37.preheader
                                        #   in Loop: Header=BB29_9 Depth=1
	movq	%rbp, %r15
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB29_11:                              # %for.body37
                                        #   Parent Loop BB29_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	%r12d, %esi
	movq	%r13, %rdx
	movl	%r9d, %ecx
	callq	GetBits@PLT
	movl	16(%rsp), %r8d                  # 4-byte Reload
	movl	12(%rsp), %r9d                  # 4-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	addl	%eax, %r14d
	movl	8(%rsp), %eax
	movq	1272(%r15), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movl	%eax, (%rcx,%rbp,4)
	addl	%r8d, %r12d
	incq	%rbp
	movslq	849108(%rsi), %rcx
	cmpq	%rcx, %rbp
	jl	.LBB29_11
# %bb.12:                               # %for.inc51.loopexit
                                        #   in Loop: Header=BB29_9 Depth=1
	movl	849112(%rsi), %eax
	movq	%r15, %rbp
	jmp	.LBB29_13
.LBB29_14:                              # %for.inc54
	testl	%eax, %eax
	jle	.LBB29_22
# %bb.15:                               # %for.cond34.preheader.lr.ph.1
	movl	849108(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.LBB29_22
# %bb.16:                               # %for.cond34.preheader.1.preheader
	xorl	%r13d, %r13d
	leaq	8(%rsp), %rbx
	jmp	.LBB29_17
	.p2align	4, 0x90
.LBB29_20:                              # %for.inc51.loopexit.1
                                        #   in Loop: Header=BB29_17 Depth=1
	movl	849112(%rdx), %eax
	movq	%r15, %rbp
.LBB29_21:                              # %for.inc51.1
                                        #   in Loop: Header=BB29_17 Depth=1
	incq	%r13
	movslq	%eax, %rdx
	cmpq	%rdx, %r13
	jge	.LBB29_22
.LBB29_17:                              # %for.cond34.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_19 Depth 2
	testl	%ecx, %ecx
	jle	.LBB29_21
# %bb.18:                               # %for.body37.1.preheader
                                        #   in Loop: Header=BB29_17 Depth=1
	movq	%rbp, %r15
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB29_19:                              # %for.body37.1
                                        #   Parent Loop BB29_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	%r12d, %esi
	movq	%rbx, %rdx
	movl	%r9d, %ecx
	callq	GetBits@PLT
	movl	16(%rsp), %r8d                  # 4-byte Reload
	movl	12(%rsp), %r9d                  # 4-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addl	%eax, %r14d
	movl	8(%rsp), %eax
	movq	1272(%r15), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%r13,8), %rcx
	movl	%eax, (%rcx,%rbp,4)
	addl	%r8d, %r12d
	incq	%rbp
	movslq	849108(%rdx), %rcx
	cmpq	%rcx, %rbp
	jl	.LBB29_19
	jmp	.LBB29_20
.Lfunc_end29:
	.size	readIPCM_CABAC, .Lfunc_end29-readIPCM_CABAC
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"create_contexts_MotionInfo: deco_ctx"
	.size	.L.str, 37

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"create_contexts_TextureInfo: deco_ctx"
	.size	.L.str.1, 38

	.type	po2,@object                     # @po2
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
po2:
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	64                              # 0x40
	.quad	128                             # 0x80
	.quad	256                             # 0x100
	.quad	512                             # 0x200
	.quad	1024                            # 0x400
	.quad	2048                            # 0x800
	.quad	4096                            # 0x1000
	.quad	8192                            # 0x2000
	.quad	16384                           # 0x4000
	.quad	32768                           # 0x8000
	.quad	65536                           # 0x10000
	.quad	131072                          # 0x20000
	.quad	262144                          # 0x40000
	.quad	524288                          # 0x80000
	.quad	1048576                         # 0x100000
	.quad	2097152                         # 0x200000
	.quad	4194304                         # 0x400000
	.quad	8388608                         # 0x800000
	.quad	16777216                        # 0x1000000
	.quad	33554432                        # 0x2000000
	.quad	67108864                        # 0x4000000
	.quad	134217728                       # 0x8000000
	.quad	268435456                       # 0x10000000
	.quad	536870912                       # 0x20000000
	.quad	1073741824                      # 0x40000000
	.quad	2147483648                      # 0x80000000
	.quad	4294967296                      # 0x100000000
	.quad	8589934592                      # 0x200000000
	.quad	17179869184                     # 0x400000000
	.quad	34359738368                     # 0x800000000
	.quad	68719476736                     # 0x1000000000
	.quad	137438953472                    # 0x2000000000
	.quad	274877906944                    # 0x4000000000
	.quad	549755813888                    # 0x8000000000
	.quad	1099511627776                   # 0x10000000000
	.quad	2199023255552                   # 0x20000000000
	.quad	4398046511104                   # 0x40000000000
	.quad	8796093022208                   # 0x80000000000
	.quad	17592186044416                  # 0x100000000000
	.quad	35184372088832                  # 0x200000000000
	.quad	70368744177664                  # 0x400000000000
	.quad	140737488355328                 # 0x800000000000
	.quad	281474976710656                 # 0x1000000000000
	.quad	562949953421312                 # 0x2000000000000
	.quad	1125899906842624                # 0x4000000000000
	.quad	2251799813685248                # 0x8000000000000
	.quad	4503599627370496                # 0x10000000000000
	.quad	9007199254740992                # 0x20000000000000
	.quad	18014398509481984               # 0x40000000000000
	.quad	36028797018963968               # 0x80000000000000
	.quad	72057594037927936               # 0x100000000000000
	.quad	144115188075855872              # 0x200000000000000
	.quad	288230376151711744              # 0x400000000000000
	.quad	576460752303423488              # 0x800000000000000
	.quad	1152921504606846976             # 0x1000000000000000
	.quad	2305843009213693952             # 0x2000000000000000
	.quad	4611686018427387904             # 0x4000000000000000
	.quad	-9223372036854775808            # 0x8000000000000000
	.size	po2, 512

	.type	pos2ctx_map_int,@object         # @pos2ctx_map_int
	.p2align	4, 0x0
pos2ctx_map_int:
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8i
	.quad	pos2ctx_map8x4i
	.quad	pos2ctx_map4x8i
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map2x4c
	.quad	pos2ctx_map4x4c
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8i
	.quad	pos2ctx_map8x4i
	.quad	pos2ctx_map8x4i
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8i
	.quad	pos2ctx_map8x4i
	.quad	pos2ctx_map8x4i
	.quad	pos2ctx_map4x4
	.size	pos2ctx_map_int, 176

	.type	pos2ctx_map,@object             # @pos2ctx_map
	.p2align	4, 0x0
pos2ctx_map:
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map2x4c
	.quad	pos2ctx_map4x4c
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map4x4
	.size	pos2ctx_map, 176

	.type	type2ctx_last,@object           # @type2ctx_last
	.p2align	4, 0x0
type2ctx_last:
	.short	0                               # 0x0
	.short	1                               # 0x1
	.short	2                               # 0x2
	.short	3                               # 0x3
	.short	4                               # 0x4
	.short	5                               # 0x5
	.short	6                               # 0x6
	.short	7                               # 0x7
	.short	6                               # 0x6
	.short	6                               # 0x6
	.short	10                              # 0xa
	.short	11                              # 0xb
	.short	12                              # 0xc
	.short	13                              # 0xd
	.short	14                              # 0xe
	.short	15                              # 0xf
	.short	16                              # 0x10
	.short	17                              # 0x11
	.short	18                              # 0x12
	.short	19                              # 0x13
	.short	20                              # 0x14
	.short	21                              # 0x15
	.size	type2ctx_last, 44

	.type	maxpos,@object                  # @maxpos
	.p2align	4, 0x0
maxpos:
	.short	15                              # 0xf
	.short	14                              # 0xe
	.short	63                              # 0x3f
	.short	31                              # 0x1f
	.short	31                              # 0x1f
	.short	15                              # 0xf
	.short	3                               # 0x3
	.short	14                              # 0xe
	.short	7                               # 0x7
	.short	15                              # 0xf
	.short	15                              # 0xf
	.short	14                              # 0xe
	.short	63                              # 0x3f
	.short	31                              # 0x1f
	.short	31                              # 0x1f
	.short	15                              # 0xf
	.short	15                              # 0xf
	.short	14                              # 0xe
	.short	63                              # 0x3f
	.short	31                              # 0x1f
	.short	31                              # 0x1f
	.short	15                              # 0xf
	.size	maxpos, 44

	.type	pos2ctx_last.rel,@object        # @pos2ctx_last.rel
	.p2align	2, 0x0
pos2ctx_last.rel:
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last8x8-pos2ctx_last.rel
	.long	pos2ctx_last8x4-pos2ctx_last.rel
	.long	pos2ctx_last8x4-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last2x4c-pos2ctx_last.rel
	.long	pos2ctx_last4x4c-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last8x8-pos2ctx_last.rel
	.long	pos2ctx_last8x4-pos2ctx_last.rel
	.long	pos2ctx_last8x4-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.long	pos2ctx_last8x8-pos2ctx_last.rel
	.long	pos2ctx_last8x4-pos2ctx_last.rel
	.long	pos2ctx_last8x4-pos2ctx_last.rel
	.long	pos2ctx_last4x4-pos2ctx_last.rel
	.size	pos2ctx_last.rel, 88

	.type	pos2ctx_map4x4,@object          # @pos2ctx_map4x4
	.p2align	4, 0x0
pos2ctx_map4x4:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\016"
	.size	pos2ctx_map4x4, 16

	.type	pos2ctx_map8x8i,@object         # @pos2ctx_map8x8i
	.p2align	4, 0x0
pos2ctx_map8x8i:
	.ascii	"\000\001\001\002\002\003\003\004\005\006\007\007\007\b\004\005\006\t\n\n\b\013\f\013\t\t\n\n\b\013\f\013\t\t\n\n\b\013\f\013\t\t\n\n\b\r\r\t\t\n\n\b\r\r\t\t\n\n\016\016\016\016\016\016"
	.size	pos2ctx_map8x8i, 64

	.type	pos2ctx_map8x4i,@object         # @pos2ctx_map8x4i
	.p2align	4, 0x0
pos2ctx_map8x4i:
	.ascii	"\000\001\002\003\004\005\006\003\004\005\006\003\004\007\006\b\t\007\006\b\t\n\013\f\f\n\013\r\r\016\016\016"
	.size	pos2ctx_map8x4i, 32

	.type	pos2ctx_map4x8i,@object         # @pos2ctx_map4x8i
	.p2align	4, 0x0
pos2ctx_map4x8i:
	.ascii	"\000\001\001\001\002\003\003\004\004\004\005\006\002\007\007\b\b\b\005\006\t\n\n\013\013\013\f\r\r\016\016\016"
	.size	pos2ctx_map4x8i, 32

	.type	pos2ctx_map2x4c,@object         # @pos2ctx_map2x4c
	.p2align	4, 0x0
pos2ctx_map2x4c:
	.ascii	"\000\000\001\001\002\002\002\002\002\002\002\002\002\002\002\002"
	.size	pos2ctx_map2x4c, 16

	.type	pos2ctx_map4x4c,@object         # @pos2ctx_map4x4c
	.p2align	4, 0x0
pos2ctx_map4x4c:
	.ascii	"\000\000\000\000\001\001\001\001\002\002\002\002\002\002\002\002"
	.size	pos2ctx_map4x4c, 16

	.type	pos2ctx_map8x8,@object          # @pos2ctx_map8x8
	.p2align	4, 0x0
pos2ctx_map8x8:
	.ascii	"\000\001\002\003\004\005\005\004\004\003\003\004\004\004\005\005\004\004\004\004\003\003\006\007\007\007\b\t\n\t\b\007\007\006\013\f\r\013\006\007\b\t\016\n\t\b\006\013\f\r\013\006\t\016\n\t\013\f\r\013\016\n\f\016"
	.size	pos2ctx_map8x8, 64

	.type	pos2ctx_map8x4,@object          # @pos2ctx_map8x4
	.p2align	4, 0x0
pos2ctx_map8x4:
	.ascii	"\000\001\002\003\004\005\007\b\t\n\013\t\b\006\007\b\t\n\013\t\b\006\f\b\t\n\013\t\r\r\016\016"
	.size	pos2ctx_map8x4, 32

	.type	pos2ctx_last4x4,@object         # @pos2ctx_last4x4
	.p2align	4, 0x0
pos2ctx_last4x4:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017"
	.size	pos2ctx_last4x4, 16

	.type	pos2ctx_last8x8,@object         # @pos2ctx_last8x8
	.p2align	4, 0x0
pos2ctx_last8x8:
	.ascii	"\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\003\003\003\003\003\003\003\003\004\004\004\004\004\004\004\004\005\005\005\005\006\006\006\006\007\007\007\007\b\b\b\b"
	.size	pos2ctx_last8x8, 64

	.type	pos2ctx_last8x4,@object         # @pos2ctx_last8x4
	.p2align	4, 0x0
pos2ctx_last8x4:
	.ascii	"\000\001\001\001\001\001\001\001\002\002\002\002\002\002\002\002\003\003\003\003\004\004\004\004\005\005\006\006\007\007\b\b"
	.size	pos2ctx_last8x4, 32

	.type	pos2ctx_last2x4c,@object        # @pos2ctx_last2x4c
	.p2align	4, 0x0
pos2ctx_last2x4c:
	.ascii	"\000\000\001\001\002\002\002\002\002\002\002\002\002\002\002\002"
	.size	pos2ctx_last2x4c, 16

	.type	pos2ctx_last4x4c,@object        # @pos2ctx_last4x4c
	.p2align	4, 0x0
pos2ctx_last4x4c:
	.ascii	"\000\000\000\000\001\001\001\001\002\002\002\002\002\002\002\002"
	.size	pos2ctx_last4x4c, 16

	.type	type2ctx_abs,@object            # @type2ctx_abs
	.p2align	4, 0x0
type2ctx_abs:
	.short	0                               # 0x0
	.short	1                               # 0x1
	.short	2                               # 0x2
	.short	3                               # 0x3
	.short	3                               # 0x3
	.short	4                               # 0x4
	.short	5                               # 0x5
	.short	6                               # 0x6
	.short	5                               # 0x5
	.short	5                               # 0x5
	.short	10                              # 0xa
	.short	11                              # 0xb
	.short	12                              # 0xc
	.short	13                              # 0xd
	.short	13                              # 0xd
	.short	14                              # 0xe
	.short	16                              # 0x10
	.short	17                              # 0x11
	.short	18                              # 0x12
	.short	19                              # 0x13
	.short	19                              # 0x13
	.short	20                              # 0x14
	.size	type2ctx_abs, 44

	.type	max_c2,@object                  # @max_c2
	.p2align	4, 0x0
max_c2:
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	3                               # 0x3
	.short	4                               # 0x4
	.short	3                               # 0x3
	.short	3                               # 0x3
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.short	4                               # 0x4
	.size	max_c2, 44

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
