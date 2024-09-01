	.text
	.file	"context_ini.c"
	.globl	init_contexts                   # -- Begin function init_contexts
	.p2align	4, 0x90
	.type	init_contexts,@function
init_contexts:                          # @init_contexts
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
	movq	320(%rdi), %r14
	movq	328(%rdi), %rbx
	movl	148(%rdi), %ecx
	movl	164(%rdi), %eax
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	cmovgl	%ecx, %ebp
	movslq	168(%rdi), %r15
	cmpl	$2, %eax
	je	.LBB0_16
# %bb.1:                                # %entry
	cmpl	$4, %eax
	jne	.LBB0_2
.LBB0_16:                               # %if.then
	movq	%r15, %r12
	shlq	$6, %r12
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	leaq	4(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	8(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	12(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	16(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	20(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	24(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	28(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	32(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	36(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	40(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	44(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	48(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	52(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	56(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+28, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	60(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+30, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	64(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+32, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	68(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+34, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	72(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+36, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	76(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+38, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	80(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+40, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	84(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+42, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	88(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+44, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	92(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+46, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	96(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+48, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	100(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+50, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	104(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+52, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	108(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+54, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	112(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+56, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	116(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+58, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	120(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+60, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	124(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+62, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	128(%r14), %rsi
	leaq	(%r12,%r15,2), %rdx
	addq	$INIT_MB_TYPE_I+64, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	132(%r14), %rsi
	leaq	(,%r15,4), %r12
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	136(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	140(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	144(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	148(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	152(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	156(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	160(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	164(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	168(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	172(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	176(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	180(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	184(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	188(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+28, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	192(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+30, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	196(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+32, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	200(%r14), %rsi
	leaq	(%r12,%r12,8), %rdx
	addq	$INIT_B8_TYPE_I+34, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	204(%r14), %rsi
	leaq	(,%r15,8), %r12
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	208(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	212(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	216(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	220(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	224(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	228(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	232(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	236(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	240(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	244(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	248(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	252(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	256(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	260(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+28, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	264(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+30, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	268(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+32, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	272(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+34, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	276(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+36, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	280(%r14), %rsi
	leaq	(%r12,%r12,4), %rdx
	addq	$INIT_MV_RES_I+38, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	284(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	288(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	292(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	296(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	300(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	304(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	308(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	312(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	316(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	320(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	324(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	328(%r14), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_REF_NO_I+22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	332(%r14), %rsi
	leaq	INIT_DELTA_QP_I(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	336(%r14), %rsi
	leaq	INIT_DELTA_QP_I+2(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	340(%r14), %rsi
	leaq	INIT_DELTA_QP_I+4(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	344(%r14), %rsi
	leaq	INIT_DELTA_QP_I+6(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	348(%r14), %rsi
	leaq	INIT_MB_AFF_I(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	352(%r14), %rsi
	leaq	INIT_MB_AFF_I+2(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	356(%r14), %rsi
	leaq	INIT_MB_AFF_I+4(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	addq	$360, %r14                      # imm = 0x168
	leaq	INIT_MB_AFF_I+6(,%r15,8), %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	leaq	(%r15,%r15), %r14
	leaq	(%r14,%r14,2), %rdx
	addq	$INIT_TRANSFORM_SIZE_I, %rdx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	biari_init_context@PLT
	leaq	4(%rbx), %rsi
	leaq	(%r14,%r14,2), %rdx
	addq	$INIT_TRANSFORM_SIZE_I+2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	8(%rbx), %rsi
	leaq	(%r14,%r14,2), %rdx
	addq	$INIT_TRANSFORM_SIZE_I+4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	12(%rbx), %rsi
	leaq	INIT_IPR_I(,%r15,4), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	16(%rbx), %rsi
	leaq	INIT_IPR_I+2(,%r15,4), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	20(%rbx), %rsi
	leaq	INIT_CIPR_I(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	24(%rbx), %rsi
	leaq	INIT_CIPR_I+2(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	28(%rbx), %rsi
	leaq	INIT_CIPR_I+4(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	32(%rbx), %rsi
	leaq	INIT_CIPR_I+6(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	36(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	40(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	44(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	48(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	52(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	56(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	60(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	64(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	68(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	72(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	76(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	80(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_CBP_I+22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	imulq	$176, %r15, %rax
	leaq	INIT_BCBP_I(%rax), %r12
	leaq	96(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_17:                               # %for.cond185.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$8, %r13
	addq	$16, %r14
	cmpq	$176, %r13
	jne	.LBB0_17
# %bb.18:                               # %for.cond205.preheader
	imulq	$660, %r15, %rax                # imm = 0x294
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	INIT_MAP_I(%rax), %r13
	leaq	492(%rbx), %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_19:                               # %for.cond208.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-52(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-48(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-44(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-40(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-36(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-32(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-28(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-24(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-20(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$28, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$30, %r12
	addq	$60, %r14
	cmpq	$660, %r12                      # imm = 0x294
	jne	.LBB0_19
# %bb.20:                               # %for.cond229.preheader
	imulq	$240, %r15, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	INIT_FLD_MAP_I(%rax), %r12
	leaq	1812(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_21:                               # %for.cond232.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-52(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-48(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-44(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-40(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-36(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-32(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-28(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-24(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-20(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$28, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$30, %r13
	addq	$60, %r14
	cmpq	$660, %r13                      # imm = 0x294
	jne	.LBB0_21
# %bb.22:                               # %for.cond254.preheader
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	INIT_FLD_LAST_I(%rax), %r12
	leaq	4452(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_23:                               # %for.cond257.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-52(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-48(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-44(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-40(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-36(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-32(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-28(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-24(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-20(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$28, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$30, %r13
	addq	$60, %r14
	cmpq	$660, %r13                      # imm = 0x294
	jne	.LBB0_23
# %bb.24:                               # %for.cond278.preheader
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	INIT_LAST_I(%rax), %r12
	leaq	3132(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_25:                               # %for.cond281.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-52(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-48(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-44(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-40(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-36(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-32(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-28(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-24(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-20(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$28, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$30, %r13
	addq	$60, %r14
	cmpq	$660, %r13                      # imm = 0x294
	jne	.LBB0_25
# %bb.26:                               # %for.cond303.preheader
	imulq	$220, %r15, %r15
	leaq	INIT_ONE_I(%r15), %r12
	leaq	5732(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_27:                               # %for.cond306.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$10, %r13
	addq	$20, %r14
	cmpq	$220, %r13
	jne	.LBB0_27
# %bb.28:                               # %for.cond326.preheader
	leaq	INIT_ABS_I(%r15), %r14
	addq	$6172, %rbx                     # imm = 0x181C
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_29:                               # %for.cond329.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-16(%rbx), %rsi
	leaq	(%r14,%r15), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%rbx), %rsi
	leaq	(%r14,%r15), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%rbx), %rsi
	leaq	(%r14,%r15), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%rbx), %rsi
	leaq	(%r14,%r15), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r14,%r15), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	biari_init_context@PLT
	addq	$10, %r15
	addq	$20, %rbx
	cmpq	$220, %r15
	jne	.LBB0_29
	jmp	.LBB0_30
.LBB0_2:                                # %for.cond349.preheader
	movq	%r15, %r13
	shlq	$6, %r13
	leaq	INIT_MB_TYPE_P(,%r15,2), %rdx
	addq	%r13, %rdx
	leaq	(%r15,%r15), %r12
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	leaq	4(%r14), %rsi
	leaq	INIT_MB_TYPE_P+2(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	8(%r14), %rsi
	leaq	INIT_MB_TYPE_P+4(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	12(%r14), %rsi
	leaq	INIT_MB_TYPE_P+6(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	16(%r14), %rsi
	leaq	INIT_MB_TYPE_P+8(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	20(%r14), %rsi
	leaq	INIT_MB_TYPE_P+10(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	24(%r14), %rsi
	leaq	INIT_MB_TYPE_P+12(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	28(%r14), %rsi
	leaq	INIT_MB_TYPE_P+14(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	32(%r14), %rsi
	leaq	INIT_MB_TYPE_P+16(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	36(%r14), %rsi
	leaq	INIT_MB_TYPE_P+18(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	40(%r14), %rsi
	leaq	INIT_MB_TYPE_P+20(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	44(%r14), %rsi
	leaq	INIT_MB_TYPE_P+22(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	48(%r14), %rsi
	leaq	INIT_MB_TYPE_P+24(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	52(%r14), %rsi
	leaq	INIT_MB_TYPE_P+26(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	56(%r14), %rsi
	leaq	INIT_MB_TYPE_P+28(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	60(%r14), %rsi
	leaq	INIT_MB_TYPE_P+30(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	64(%r14), %rsi
	leaq	INIT_MB_TYPE_P+32(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	68(%r14), %rsi
	leaq	INIT_MB_TYPE_P+34(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	72(%r14), %rsi
	leaq	INIT_MB_TYPE_P+36(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	76(%r14), %rsi
	leaq	INIT_MB_TYPE_P+38(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	80(%r14), %rsi
	leaq	INIT_MB_TYPE_P+40(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	84(%r14), %rsi
	leaq	INIT_MB_TYPE_P+42(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	88(%r14), %rsi
	leaq	INIT_MB_TYPE_P+44(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	92(%r14), %rsi
	leaq	INIT_MB_TYPE_P+46(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	96(%r14), %rsi
	leaq	INIT_MB_TYPE_P+48(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	100(%r14), %rsi
	leaq	INIT_MB_TYPE_P+50(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	104(%r14), %rsi
	leaq	INIT_MB_TYPE_P+52(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	108(%r14), %rsi
	leaq	INIT_MB_TYPE_P+54(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	112(%r14), %rsi
	leaq	INIT_MB_TYPE_P+56(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	116(%r14), %rsi
	leaq	INIT_MB_TYPE_P+58(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	120(%r14), %rsi
	leaq	INIT_MB_TYPE_P+60(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	124(%r14), %rsi
	leaq	INIT_MB_TYPE_P+62(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	128(%r14), %rsi
	leaq	INIT_MB_TYPE_P+64(,%r15,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	132(%r14), %rsi
	leaq	(,%r15,4), %r13
	leaq	INIT_B8_TYPE_P(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	136(%r14), %rsi
	leaq	INIT_B8_TYPE_P+2(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	140(%r14), %rsi
	leaq	INIT_B8_TYPE_P+4(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	144(%r14), %rsi
	leaq	INIT_B8_TYPE_P+6(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	148(%r14), %rsi
	leaq	INIT_B8_TYPE_P+8(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	152(%r14), %rsi
	leaq	INIT_B8_TYPE_P+10(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	156(%r14), %rsi
	leaq	INIT_B8_TYPE_P+12(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	160(%r14), %rsi
	leaq	INIT_B8_TYPE_P+14(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	164(%r14), %rsi
	leaq	INIT_B8_TYPE_P+16(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	168(%r14), %rsi
	leaq	INIT_B8_TYPE_P+18(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	172(%r14), %rsi
	leaq	INIT_B8_TYPE_P+20(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	176(%r14), %rsi
	leaq	INIT_B8_TYPE_P+22(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	180(%r14), %rsi
	leaq	INIT_B8_TYPE_P+24(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	184(%r14), %rsi
	leaq	INIT_B8_TYPE_P+26(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	188(%r14), %rsi
	leaq	INIT_B8_TYPE_P+28(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	192(%r14), %rsi
	leaq	INIT_B8_TYPE_P+30(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	196(%r14), %rsi
	leaq	INIT_B8_TYPE_P+32(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	200(%r14), %rsi
	leaq	INIT_B8_TYPE_P+34(,%r13,8), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	204(%r14), %rsi
	leaq	(,%r15,8), %r13
	leaq	INIT_MV_RES_P(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	208(%r14), %rsi
	leaq	INIT_MV_RES_P+2(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	212(%r14), %rsi
	leaq	INIT_MV_RES_P+4(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	216(%r14), %rsi
	leaq	INIT_MV_RES_P+6(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	220(%r14), %rsi
	leaq	INIT_MV_RES_P+8(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	224(%r14), %rsi
	leaq	INIT_MV_RES_P+10(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	228(%r14), %rsi
	leaq	INIT_MV_RES_P+12(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	232(%r14), %rsi
	leaq	INIT_MV_RES_P+14(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	236(%r14), %rsi
	leaq	INIT_MV_RES_P+16(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	240(%r14), %rsi
	leaq	INIT_MV_RES_P+18(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	244(%r14), %rsi
	leaq	INIT_MV_RES_P+20(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	248(%r14), %rsi
	leaq	INIT_MV_RES_P+22(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	252(%r14), %rsi
	leaq	INIT_MV_RES_P+24(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	256(%r14), %rsi
	leaq	INIT_MV_RES_P+26(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	260(%r14), %rsi
	leaq	INIT_MV_RES_P+28(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	264(%r14), %rsi
	leaq	INIT_MV_RES_P+30(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	268(%r14), %rsi
	leaq	INIT_MV_RES_P+32(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	272(%r14), %rsi
	leaq	INIT_MV_RES_P+34(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	276(%r14), %rsi
	leaq	INIT_MV_RES_P+36(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	280(%r14), %rsi
	leaq	INIT_MV_RES_P+38(,%r13,4), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	284(%r14), %rsi
	leaq	INIT_REF_NO_P(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	288(%r14), %rsi
	leaq	INIT_REF_NO_P+2(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	292(%r14), %rsi
	leaq	INIT_REF_NO_P+4(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	296(%r14), %rsi
	leaq	INIT_REF_NO_P+6(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	300(%r14), %rsi
	leaq	INIT_REF_NO_P+8(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	304(%r14), %rsi
	leaq	INIT_REF_NO_P+10(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	308(%r14), %rsi
	leaq	INIT_REF_NO_P+12(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	312(%r14), %rsi
	leaq	INIT_REF_NO_P+14(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	316(%r14), %rsi
	leaq	INIT_REF_NO_P+16(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	320(%r14), %rsi
	leaq	INIT_REF_NO_P+18(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	324(%r14), %rsi
	leaq	INIT_REF_NO_P+20(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	328(%r14), %rsi
	leaq	INIT_REF_NO_P+22(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	332(%r14), %rsi
	leaq	INIT_DELTA_QP_P(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	336(%r14), %rsi
	leaq	INIT_DELTA_QP_P+2(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	340(%r14), %rsi
	leaq	INIT_DELTA_QP_P+4(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	344(%r14), %rsi
	leaq	INIT_DELTA_QP_P+6(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	348(%r14), %rsi
	leaq	INIT_MB_AFF_P(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	352(%r14), %rsi
	leaq	INIT_MB_AFF_P+2(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	356(%r14), %rsi
	leaq	INIT_MB_AFF_P+4(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	addq	$360, %r14                      # imm = 0x168
	leaq	INIT_MB_AFF_P+6(,%r15,8), %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_TRANSFORM_SIZE_P, %rdx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	biari_init_context@PLT
	leaq	4(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_TRANSFORM_SIZE_P+2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	8(%rbx), %rsi
	leaq	(%r12,%r12,2), %rdx
	addq	$INIT_TRANSFORM_SIZE_P+4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	12(%rbx), %rsi
	leaq	INIT_IPR_P(,%r15,4), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	16(%rbx), %rsi
	leaq	INIT_IPR_P+2(,%r15,4), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	20(%rbx), %rsi
	leaq	INIT_CIPR_P(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	24(%rbx), %rsi
	leaq	INIT_CIPR_P+2(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	28(%rbx), %rsi
	leaq	INIT_CIPR_P+4(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	32(%rbx), %rsi
	leaq	INIT_CIPR_P+6(,%r15,8), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	36(%rbx), %rsi
	leaq	INIT_CBP_P(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	40(%rbx), %rsi
	leaq	INIT_CBP_P+2(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	44(%rbx), %rsi
	leaq	INIT_CBP_P+4(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	48(%rbx), %rsi
	leaq	INIT_CBP_P+6(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	52(%rbx), %rsi
	leaq	INIT_CBP_P+8(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	56(%rbx), %rsi
	leaq	INIT_CBP_P+10(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	60(%rbx), %rsi
	leaq	INIT_CBP_P+12(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	64(%rbx), %rsi
	leaq	INIT_CBP_P+14(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	68(%rbx), %rsi
	leaq	INIT_CBP_P+16(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	72(%rbx), %rsi
	leaq	INIT_CBP_P+18(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	76(%rbx), %rsi
	leaq	INIT_CBP_P+20(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	80(%rbx), %rsi
	leaq	INIT_CBP_P+22(,%r13,2), %rdx
	addq	%r13, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	imulq	$176, %r15, %rax
	leaq	INIT_BCBP_P(%rax), %r12
	leaq	96(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_3:                                # %for.cond547.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$8, %r13
	addq	$16, %r14
	cmpq	$176, %r13
	jne	.LBB0_3
# %bb.4:                                # %for.cond568.preheader
	imulq	$660, %r15, %rax                # imm = 0x294
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	INIT_MAP_P(%rax), %r13
	leaq	492(%rbx), %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_5:                                # %for.cond571.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-52(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-48(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-44(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-40(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-36(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-32(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-28(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-24(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-20(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$28, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$30, %r12
	addq	$60, %r14
	cmpq	$660, %r12                      # imm = 0x294
	jne	.LBB0_5
# %bb.6:                                # %for.cond593.preheader
	imulq	$240, %r15, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	INIT_FLD_MAP_P(%rax), %r12
	leaq	1812(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_7:                                # %for.cond596.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-52(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-48(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-44(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-40(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-36(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-32(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-28(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-24(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-20(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$28, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$30, %r13
	addq	$60, %r14
	cmpq	$660, %r13                      # imm = 0x294
	jne	.LBB0_7
# %bb.8:                                # %for.cond618.preheader
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	INIT_FLD_LAST_P(%rax), %r12
	leaq	4452(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_9:                                # %for.cond621.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-52(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-48(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-44(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-40(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-36(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-32(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-28(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-24(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-20(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$28, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$30, %r13
	addq	$60, %r14
	cmpq	$660, %r13                      # imm = 0x294
	jne	.LBB0_9
# %bb.10:                               # %for.cond643.preheader
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	INIT_LAST_P(%rax), %r12
	leaq	3132(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_11:                               # %for.cond646.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-52(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-48(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-44(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-40(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-36(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$10, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-32(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$12, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-28(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$14, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-24(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$16, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-20(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$18, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$20, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$22, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$24, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$26, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$28, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$30, %r13
	addq	$60, %r14
	cmpq	$660, %r13                      # imm = 0x294
	jne	.LBB0_11
# %bb.12:                               # %for.cond668.preheader
	imulq	$220, %r15, %r15
	leaq	INIT_ONE_P(%r15), %r12
	leaq	5732(%rbx), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_13:                               # %for.cond671.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-16(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%r14), %rsi
	leaq	(%r12,%r13), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r12,%r13), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	biari_init_context@PLT
	addq	$10, %r13
	addq	$20, %r14
	cmpq	$220, %r13
	jne	.LBB0_13
# %bb.14:                               # %for.cond692.preheader
	leaq	INIT_ABS_P(%r15), %r14
	addq	$6172, %rbx                     # imm = 0x181C
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_15:                               # %for.cond695.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	-16(%rbx), %rsi
	leaq	(%r14,%r15), %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-12(%rbx), %rsi
	leaq	(%r14,%r15), %rdx
	addq	$2, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-8(%rbx), %rsi
	leaq	(%r14,%r15), %rdx
	addq	$4, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	-4(%rbx), %rsi
	leaq	(%r14,%r15), %rdx
	addq	$6, %rdx
	movl	%ebp, %edi
	callq	biari_init_context@PLT
	leaq	(%r14,%r15), %rdx
	addq	$8, %rdx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	biari_init_context@PLT
	addq	$10, %r15
	addq	$20, %rbx
	cmpq	$220, %r15
	jne	.LBB0_15
.LBB0_30:                               # %if.end
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
.Lfunc_end0:
	.size	init_contexts, .Lfunc_end0-init_contexts
	.cfi_endproc
                                        # -- End function
	.type	INIT_MB_TYPE_I,@object          # @INIT_MB_TYPE_I
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
INIT_MB_TYPE_I:
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\000@"
	.ascii	"\344\177"
	.ascii	"\351h"
	.ascii	"\3725"
	.ascii	"\3776"
	.ascii	"\0073"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\344\177"
	.ascii	"\351h"
	.ascii	"\3725"
	.ascii	"\3776"
	.ascii	"\0073"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_MB_TYPE_I, 66

	.type	INIT_B8_TYPE_I,@object          # @INIT_B8_TYPE_I
	.p2align	4, 0x0
INIT_B8_TYPE_I:
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_B8_TYPE_I, 36

	.type	INIT_MV_RES_I,@object           # @INIT_MV_RES_I
	.p2align	4, 0x0
INIT_MV_RES_I:
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_MV_RES_I, 40

	.type	INIT_REF_NO_I,@object           # @INIT_REF_NO_I
	.p2align	4, 0x0
INIT_REF_NO_I:
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_REF_NO_I, 24

	.type	INIT_DELTA_QP_I,@object         # @INIT_DELTA_QP_I
INIT_DELTA_QP_I:
	.ascii	"\000)"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000?"
	.size	INIT_DELTA_QP_I, 8

	.type	INIT_MB_AFF_I,@object           # @INIT_MB_AFF_I
INIT_MB_AFF_I:
	.ascii	"\000\013"
	.ascii	"\0017"
	.ascii	"\000E"
	.ascii	"\000@"
	.size	INIT_MB_AFF_I, 8

	.type	INIT_TRANSFORM_SIZE_I,@object   # @INIT_TRANSFORM_SIZE_I
INIT_TRANSFORM_SIZE_I:
	.ascii	"\037\025"
	.zero	2,31
	.ascii	"\0312"
	.size	INIT_TRANSFORM_SIZE_I, 6

	.type	INIT_IPR_I,@object              # @INIT_IPR_I
INIT_IPR_I:
	.ascii	"\r)"
	.ascii	"\003>"
	.size	INIT_IPR_I, 4

	.type	INIT_CIPR_I,@object             # @INIT_CIPR_I
INIT_CIPR_I:
	.ascii	"\367S"
	.ascii	"\004V"
	.ascii	"\000a"
	.ascii	"\371H"
	.size	INIT_CIPR_I, 8

	.type	INIT_CBP_I,@object              # @INIT_CBP_I
	.p2align	4, 0x0
INIT_CBP_I:
	.ascii	"\357\177"
	.ascii	"\363f"
	.ascii	"\000R"
	.ascii	"\371J"
	.ascii	"\353k"
	.ascii	"\345\177"
	.ascii	"\341\177"
	.ascii	"\350\177"
	.ascii	"\356_"
	.ascii	"\345\177"
	.ascii	"\353r"
	.ascii	"\342\177"
	.size	INIT_CBP_I, 24

	.type	INIT_BCBP_I,@object             # @INIT_BCBP_I
	.p2align	4, 0x0
INIT_BCBP_I:
	.ascii	"\357{"
	.ascii	"\364s"
	.ascii	"\360z"
	.ascii	"\365s"
	.ascii	"\364?"
	.ascii	"\376D"
	.ascii	"\361T"
	.ascii	"\363h"
	.ascii	"\375F"
	.ascii	"\370]"
	.ascii	"\366Z"
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\375F"
	.ascii	"\370]"
	.ascii	"\366Z"
	.ascii	"\342\177"
	.ascii	"\377J"
	.ascii	"\372a"
	.ascii	"\371["
	.ascii	"\354\177"
	.ascii	"\3748"
	.ascii	"\373R"
	.ascii	"\371L"
	.ascii	"\352}"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\357{"
	.ascii	"\364s"
	.ascii	"\360z"
	.ascii	"\365s"
	.ascii	"\364?"
	.ascii	"\376D"
	.ascii	"\361T"
	.ascii	"\363h"
	.ascii	"\375F"
	.ascii	"\370]"
	.ascii	"\366Z"
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\375F"
	.ascii	"\370]"
	.ascii	"\366Z"
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\357{"
	.ascii	"\364s"
	.ascii	"\360z"
	.ascii	"\365s"
	.ascii	"\364?"
	.ascii	"\376D"
	.ascii	"\361T"
	.ascii	"\363h"
	.ascii	"\375F"
	.ascii	"\370]"
	.ascii	"\366Z"
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\375F"
	.ascii	"\370]"
	.ascii	"\366Z"
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_BCBP_I, 176

	.type	INIT_MAP_I,@object              # @INIT_MAP_I
	.p2align	4, 0x0
INIT_MAP_I:
	.ascii	"\371]"
	.ascii	"\365W"
	.ascii	"\375M"
	.ascii	"\373G"
	.ascii	"\374?"
	.ascii	"\374D"
	.ascii	"\364T"
	.ascii	"\371>"
	.ascii	"\371A"
	.ascii	"\b="
	.ascii	"\0058"
	.ascii	"\376B"
	.ascii	"\001@"
	.ascii	"\000="
	.ascii	"\376N"
	.ascii	"\000@"
	.ascii	"\0012"
	.ascii	"\0074"
	.ascii	"\n#"
	.ascii	"\000,"
	.ascii	"\013&"
	.ascii	"\001-"
	.ascii	"\000."
	.ascii	"\005,"
	.ascii	"\037\021"
	.ascii	"\0013"
	.ascii	"\0072"
	.ascii	"\034\023"
	.ascii	"\020!"
	.ascii	"\016>"
	.ascii	"\357x"
	.ascii	"\354p"
	.ascii	"\356r"
	.ascii	"\365U"
	.ascii	"\361\\"
	.ascii	"\362Y"
	.ascii	"\346G"
	.ascii	"\361Q"
	.ascii	"\362P"
	.ascii	"\000D"
	.ascii	"\362F"
	.ascii	"\3508"
	.ascii	"\351D"
	.ascii	"\3502"
	.ascii	"\365J"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\363l"
	.ascii	"\361d"
	.ascii	"\363e"
	.ascii	"\363["
	.ascii	"\364^"
	.ascii	"\366X"
	.ascii	"\360T"
	.ascii	"\366V"
	.ascii	"\371S"
	.ascii	"\363W"
	.ascii	"\355^"
	.ascii	"\001F"
	.ascii	"\000H"
	.ascii	"\373J"
	.ascii	"\022;"
	.ascii	"\370f"
	.ascii	"\361d"
	.ascii	"\000_"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\374K"
	.ascii	"\002H"
	.ascii	"\365K"
	.ascii	"\375G"
	.ascii	"\017."
	.ascii	"\363E"
	.ascii	"\000>"
	.ascii	"\000A"
	.ascii	"\025%"
	.ascii	"\361H"
	.ascii	"\t9"
	.ascii	"\0206"
	.ascii	"\000>"
	.ascii	"\fH"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\371]"
	.ascii	"\365W"
	.ascii	"\375M"
	.ascii	"\373G"
	.ascii	"\374?"
	.ascii	"\374D"
	.ascii	"\364T"
	.ascii	"\371>"
	.ascii	"\371A"
	.ascii	"\b="
	.ascii	"\0058"
	.ascii	"\376B"
	.ascii	"\001@"
	.ascii	"\000="
	.ascii	"\376N"
	.ascii	"\000@"
	.ascii	"\0012"
	.ascii	"\0074"
	.ascii	"\n#"
	.ascii	"\000,"
	.ascii	"\013&"
	.ascii	"\001-"
	.ascii	"\000."
	.ascii	"\005,"
	.ascii	"\037\021"
	.ascii	"\0013"
	.ascii	"\0072"
	.ascii	"\034\023"
	.ascii	"\020!"
	.ascii	"\016>"
	.ascii	"\357x"
	.ascii	"\354p"
	.ascii	"\356r"
	.ascii	"\365U"
	.ascii	"\361\\"
	.ascii	"\362Y"
	.ascii	"\346G"
	.ascii	"\361Q"
	.ascii	"\362P"
	.ascii	"\000D"
	.ascii	"\362F"
	.ascii	"\3508"
	.ascii	"\351D"
	.ascii	"\3502"
	.ascii	"\365J"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\363l"
	.ascii	"\361d"
	.ascii	"\363e"
	.ascii	"\363["
	.ascii	"\364^"
	.ascii	"\366X"
	.ascii	"\360T"
	.ascii	"\366V"
	.ascii	"\371S"
	.ascii	"\363W"
	.ascii	"\355^"
	.ascii	"\001F"
	.ascii	"\000H"
	.ascii	"\373J"
	.ascii	"\022;"
	.ascii	"\371]"
	.ascii	"\365W"
	.ascii	"\375M"
	.ascii	"\373G"
	.ascii	"\374?"
	.ascii	"\374D"
	.ascii	"\364T"
	.ascii	"\371>"
	.ascii	"\371A"
	.ascii	"\b="
	.ascii	"\0058"
	.ascii	"\376B"
	.ascii	"\001@"
	.ascii	"\000="
	.ascii	"\376N"
	.ascii	"\000@"
	.ascii	"\0012"
	.ascii	"\0074"
	.ascii	"\n#"
	.ascii	"\000,"
	.ascii	"\013&"
	.ascii	"\001-"
	.ascii	"\000."
	.ascii	"\005,"
	.ascii	"\037\021"
	.ascii	"\0013"
	.ascii	"\0072"
	.ascii	"\034\023"
	.ascii	"\020!"
	.ascii	"\016>"
	.ascii	"\357x"
	.ascii	"\354p"
	.ascii	"\356r"
	.ascii	"\365U"
	.ascii	"\361\\"
	.ascii	"\362Y"
	.ascii	"\346G"
	.ascii	"\361Q"
	.ascii	"\362P"
	.ascii	"\000D"
	.ascii	"\362F"
	.ascii	"\3508"
	.ascii	"\351D"
	.ascii	"\3502"
	.ascii	"\365J"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\363l"
	.ascii	"\361d"
	.ascii	"\363e"
	.ascii	"\363["
	.ascii	"\364^"
	.ascii	"\366X"
	.ascii	"\360T"
	.ascii	"\366V"
	.ascii	"\371S"
	.ascii	"\363W"
	.ascii	"\355^"
	.ascii	"\001F"
	.ascii	"\000H"
	.ascii	"\373J"
	.ascii	"\022;"
	.size	INIT_MAP_I, 660

	.type	INIT_FLD_MAP_I,@object          # @INIT_FLD_MAP_I
	.p2align	4, 0x0
INIT_FLD_MAP_I:
	.ascii	"\372]"
	.ascii	"\372T"
	.ascii	"\370O"
	.ascii	"\000B"
	.ascii	"\377G"
	.ascii	"\000>"
	.ascii	"\376<"
	.ascii	"\376;"
	.ascii	"\373K"
	.ascii	"\375>"
	.ascii	"\374:"
	.ascii	"\367B"
	.ascii	"\377O"
	.ascii	"\000G"
	.ascii	"\003D"
	.ascii	"\000@"
	.ascii	"\n,"
	.ascii	"\371>"
	.ascii	"\017$"
	.ascii	"\016("
	.ascii	"\020\033"
	.ascii	"\f\035"
	.ascii	"\001,"
	.ascii	"\024$"
	.ascii	"\022 "
	.ascii	"\005*"
	.ascii	"\0010"
	.ascii	"\n>"
	.ascii	"\021."
	.ascii	"\t@"
	.ascii	"\362j"
	.ascii	"\363a"
	.ascii	"\361Z"
	.ascii	"\364Z"
	.ascii	"\356X"
	.ascii	"\366I"
	.ascii	"\367O"
	.ascii	"\362V"
	.ascii	"\366I"
	.ascii	"\366F"
	.ascii	"\366E"
	.ascii	"\373B"
	.ascii	"\367@"
	.ascii	"\373:"
	.ascii	"\002;"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\364h"
	.ascii	"\365a"
	.ascii	"\360`"
	.ascii	"\371X"
	.ascii	"\370U"
	.ascii	"\371U"
	.ascii	"\367U"
	.ascii	"\363X"
	.ascii	"\004B"
	.ascii	"\375M"
	.ascii	"\375L"
	.ascii	"\372L"
	.ascii	"\n:"
	.ascii	"\377L"
	.ascii	"\377S"
	.ascii	"\371c"
	.ascii	"\362_"
	.ascii	"\002_"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000L"
	.ascii	"\373J"
	.ascii	"\000F"
	.ascii	"\365K"
	.ascii	"\001D"
	.ascii	"\000A"
	.ascii	"\362I"
	.ascii	"\003>"
	.ascii	"\004>"
	.ascii	"\377D"
	.ascii	"\363K"
	.ascii	"\0137"
	.ascii	"\005@"
	.ascii	"\fF"
	.size	INIT_FLD_MAP_I, 240

	.type	INIT_FLD_LAST_I,@object         # @INIT_FLD_LAST_I
	.p2align	4, 0x0
INIT_FLD_LAST_I:
	.ascii	"\017\006"
	.ascii	"\006\023"
	.ascii	"\007\020"
	.ascii	"\f\016"
	.ascii	"\022\r"
	.ascii	"\r\013"
	.ascii	"\r\017"
	.ascii	"\017\020"
	.ascii	"\f\027"
	.ascii	"\r\027"
	.ascii	"\017\024"
	.ascii	"\016\032"
	.ascii	"\016,"
	.ascii	"\021("
	.ascii	"\021/"
	.ascii	"\000@"
	.ascii	"\030\021"
	.zero	2,21
	.ascii	"\031\026"
	.ascii	"\037\033"
	.ascii	"\026\035"
	.ascii	"\023#"
	.ascii	"\0162"
	.ascii	"\n9"
	.ascii	"\007?"
	.ascii	"\376M"
	.ascii	"\374R"
	.ascii	"\375^"
	.ascii	"\tE"
	.ascii	"\364m"
	.ascii	"\025\366"
	.ascii	"\030\365"
	.ascii	"\034\370"
	.ascii	"\034\377"
	.ascii	"\035\003"
	.ascii	"\035\t"
	.ascii	"#\024"
	.ascii	"\035$"
	.ascii	"\016C"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"$\335"
	.ascii	"$\336"
	.ascii	" \346"
	.ascii	"%\342"
	.ascii	",\340"
	.ascii	"\"\356"
	.ascii	"\"\361"
	.ascii	"(\361"
	.ascii	"!\371"
	.ascii	"#\373"
	.asciz	"!"
	.ascii	"&\002"
	.ascii	"!\r"
	.ascii	"\027#"
	.ascii	"\r:"
	.ascii	"\035\375"
	.asciz	"\032"
	.ascii	"\026\036"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\037\371"
	.ascii	"#\361"
	.ascii	"\"\375"
	.ascii	"\"\003"
	.ascii	"$\377"
	.ascii	"\"\005"
	.ascii	" \013"
	.ascii	"#\005"
	.ascii	"\"\f"
	.ascii	"'\013"
	.ascii	"\036\035"
	.ascii	"\"\032"
	.ascii	"\035'"
	.ascii	"\023B"
	.size	INIT_FLD_LAST_I, 240

	.type	INIT_LAST_I,@object             # @INIT_LAST_I
	.p2align	4, 0x0
INIT_LAST_I:
	.asciz	"\030"
	.ascii	"\017\t"
	.ascii	"\b\031"
	.ascii	"\r\022"
	.ascii	"\017\t"
	.ascii	"\r\023"
	.ascii	"\n%"
	.ascii	"\f\022"
	.ascii	"\006\035"
	.ascii	"\024!"
	.ascii	"\017\036"
	.ascii	"\004-"
	.ascii	"\001:"
	.ascii	"\000>"
	.ascii	"\007="
	.ascii	"\000@"
	.ascii	"\f&"
	.ascii	"\013-"
	.ascii	"\017'"
	.ascii	"\013*"
	.ascii	"\r,"
	.ascii	"\020-"
	.ascii	"\f)"
	.ascii	"\n1"
	.ascii	"\036\""
	.ascii	"\022*"
	.ascii	"\n7"
	.ascii	"\0213"
	.ascii	"\021."
	.ascii	"\000Y"
	.ascii	"\027\363"
	.ascii	"\032\363"
	.ascii	"(\361"
	.ascii	"1\362"
	.ascii	",\003"
	.ascii	"-\006"
	.ascii	",\""
	.ascii	"!6"
	.ascii	"\023R"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\032\355"
	.ascii	"\026\357"
	.ascii	"\032\357"
	.ascii	"\036\347"
	.ascii	"\034\354"
	.ascii	"!\351"
	.ascii	"%\345"
	.ascii	"!\351"
	.ascii	"(\344"
	.ascii	"&\357"
	.ascii	"!\365"
	.ascii	"(\361"
	.ascii	")\372"
	.ascii	"&\001"
	.ascii	")\021"
	.ascii	"\036\372"
	.ascii	"\033\003"
	.ascii	"\032\026"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"%\360"
	.ascii	"#\374"
	.ascii	"&\370"
	.ascii	"&\375"
	.ascii	"%\003"
	.ascii	"&\005"
	.asciz	"*"
	.ascii	"#\020"
	.ascii	"'\026"
	.ascii	"\0160"
	.ascii	"\033%"
	.ascii	"\025<"
	.ascii	"\fD"
	.ascii	"\002a"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.asciz	"\030"
	.ascii	"\017\t"
	.ascii	"\b\031"
	.ascii	"\r\022"
	.ascii	"\017\t"
	.ascii	"\r\023"
	.ascii	"\n%"
	.ascii	"\f\022"
	.ascii	"\006\035"
	.ascii	"\024!"
	.ascii	"\017\036"
	.ascii	"\004-"
	.ascii	"\001:"
	.ascii	"\000>"
	.ascii	"\007="
	.ascii	"\000@"
	.ascii	"\f&"
	.ascii	"\013-"
	.ascii	"\017'"
	.ascii	"\013*"
	.ascii	"\r,"
	.ascii	"\020-"
	.ascii	"\f)"
	.ascii	"\n1"
	.ascii	"\036\""
	.ascii	"\022*"
	.ascii	"\n7"
	.ascii	"\0213"
	.ascii	"\021."
	.ascii	"\000Y"
	.ascii	"\027\363"
	.ascii	"\032\363"
	.ascii	"(\361"
	.ascii	"1\362"
	.ascii	",\003"
	.ascii	"-\006"
	.ascii	",\""
	.ascii	"!6"
	.ascii	"\023R"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\032\355"
	.ascii	"\026\357"
	.ascii	"\032\357"
	.ascii	"\036\347"
	.ascii	"\034\354"
	.ascii	"!\351"
	.ascii	"%\345"
	.ascii	"!\351"
	.ascii	"(\344"
	.ascii	"&\357"
	.ascii	"!\365"
	.ascii	"(\361"
	.ascii	")\372"
	.ascii	"&\001"
	.ascii	")\021"
	.asciz	"\030"
	.ascii	"\017\t"
	.ascii	"\b\031"
	.ascii	"\r\022"
	.ascii	"\017\t"
	.ascii	"\r\023"
	.ascii	"\n%"
	.ascii	"\f\022"
	.ascii	"\006\035"
	.ascii	"\024!"
	.ascii	"\017\036"
	.ascii	"\004-"
	.ascii	"\001:"
	.ascii	"\000>"
	.ascii	"\007="
	.ascii	"\000@"
	.ascii	"\f&"
	.ascii	"\013-"
	.ascii	"\017'"
	.ascii	"\013*"
	.ascii	"\r,"
	.ascii	"\020-"
	.ascii	"\f)"
	.ascii	"\n1"
	.ascii	"\036\""
	.ascii	"\022*"
	.ascii	"\n7"
	.ascii	"\0213"
	.ascii	"\021."
	.ascii	"\000Y"
	.ascii	"\027\363"
	.ascii	"\032\363"
	.ascii	"(\361"
	.ascii	"1\362"
	.ascii	",\003"
	.ascii	"-\006"
	.ascii	",\""
	.ascii	"!6"
	.ascii	"\023R"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\032\355"
	.ascii	"\026\357"
	.ascii	"\032\357"
	.ascii	"\036\347"
	.ascii	"\034\354"
	.ascii	"!\351"
	.ascii	"%\345"
	.ascii	"!\351"
	.ascii	"(\344"
	.ascii	"&\357"
	.ascii	"!\365"
	.ascii	"(\361"
	.ascii	")\372"
	.ascii	"&\001"
	.ascii	")\021"
	.size	INIT_LAST_I, 660

	.type	INIT_ONE_I,@object              # @INIT_ONE_I
	.p2align	4, 0x0
INIT_ONE_I:
	.ascii	"\375G"
	.ascii	"\372*"
	.ascii	"\3732"
	.ascii	"\3756"
	.ascii	"\376>"
	.ascii	"\373C"
	.ascii	"\373\033"
	.ascii	"\375'"
	.ascii	"\376,"
	.ascii	"\000."
	.ascii	"\375K"
	.ascii	"\377\027"
	.ascii	"\001\""
	.ascii	"\001+"
	.ascii	"\0006"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\364\\"
	.ascii	"\3617"
	.ascii	"\366<"
	.ascii	"\372>"
	.ascii	"\374A"
	.ascii	"\365a"
	.ascii	"\354T"
	.ascii	"\365O"
	.ascii	"\372I"
	.ascii	"\374J"
	.ascii	"\370N"
	.ascii	"\373!"
	.ascii	"\3740"
	.ascii	"\3765"
	.ascii	"\375>"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\375G"
	.ascii	"\372*"
	.ascii	"\3732"
	.ascii	"\3756"
	.ascii	"\376>"
	.ascii	"\373C"
	.ascii	"\373\033"
	.ascii	"\375'"
	.ascii	"\376,"
	.ascii	"\000."
	.ascii	"\375K"
	.ascii	"\377\027"
	.ascii	"\001\""
	.ascii	"\001+"
	.ascii	"\0006"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\364\\"
	.ascii	"\3617"
	.ascii	"\366<"
	.ascii	"\372>"
	.ascii	"\374A"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\375G"
	.ascii	"\372*"
	.ascii	"\3732"
	.ascii	"\3756"
	.ascii	"\376>"
	.ascii	"\373C"
	.ascii	"\373\033"
	.ascii	"\375'"
	.ascii	"\376,"
	.ascii	"\000."
	.ascii	"\375K"
	.ascii	"\377\027"
	.ascii	"\001\""
	.ascii	"\001+"
	.ascii	"\0006"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\364\\"
	.ascii	"\3617"
	.ascii	"\366<"
	.ascii	"\372>"
	.ascii	"\374A"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_ONE_I, 220

	.type	INIT_ABS_I,@object              # @INIT_ABS_I
	.p2align	4, 0x0
INIT_ABS_I:
	.ascii	"\000:"
	.ascii	"\001?"
	.ascii	"\376H"
	.ascii	"\377J"
	.ascii	"\367["
	.ascii	"\360@"
	.ascii	"\370D"
	.ascii	"\366N"
	.ascii	"\372M"
	.ascii	"\366V"
	.ascii	"\3767"
	.ascii	"\000="
	.ascii	"\001@"
	.ascii	"\000D"
	.ascii	"\367\\"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\364I"
	.ascii	"\370L"
	.ascii	"\371P"
	.ascii	"\367X"
	.ascii	"\357n"
	.ascii	"\363V"
	.ascii	"\363`"
	.ascii	"\365a"
	.ascii	"\355u"
	.ascii	"\000@"
	.ascii	"\363G"
	.ascii	"\366O"
	.ascii	"\364V"
	.ascii	"\363Z"
	.ascii	"\362a"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000:"
	.ascii	"\001?"
	.ascii	"\376H"
	.ascii	"\377J"
	.ascii	"\367["
	.ascii	"\360@"
	.ascii	"\370D"
	.ascii	"\366N"
	.ascii	"\372M"
	.ascii	"\366V"
	.ascii	"\3767"
	.ascii	"\000="
	.ascii	"\001@"
	.ascii	"\000D"
	.ascii	"\367\\"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\364I"
	.ascii	"\370L"
	.ascii	"\371P"
	.ascii	"\367X"
	.ascii	"\357n"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000:"
	.ascii	"\001?"
	.ascii	"\376H"
	.ascii	"\377J"
	.ascii	"\367["
	.ascii	"\360@"
	.ascii	"\370D"
	.ascii	"\366N"
	.ascii	"\372M"
	.ascii	"\366V"
	.ascii	"\3767"
	.ascii	"\000="
	.ascii	"\001@"
	.ascii	"\000D"
	.ascii	"\367\\"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\364I"
	.ascii	"\370L"
	.ascii	"\371P"
	.ascii	"\367X"
	.ascii	"\357n"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_ABS_I, 220

	.type	INIT_MB_TYPE_P,@object          # @INIT_MB_TYPE_P
	.p2align	4, 0x0
INIT_MB_TYPE_P:
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\027!"
	.ascii	"\027\002"
	.asciz	"\025"
	.ascii	"\000@"
	.ascii	"\001\t"
	.ascii	"\0001"
	.ascii	"\333v"
	.ascii	"\0059"
	.ascii	"\363N"
	.ascii	"\365A"
	.ascii	"\001>"
	.ascii	"\032C"
	.ascii	"\020Z"
	.ascii	"\th"
	.ascii	"\000@"
	.ascii	"\322\177"
	.ascii	"\354h"
	.ascii	"\001C"
	.ascii	"\022@"
	.ascii	"\t+"
	.asciz	"\035"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\026\031"
	.asciz	"\""
	.asciz	"\020"
	.ascii	"\000@"
	.ascii	"\376\t"
	.ascii	"\004)"
	.ascii	"\343v"
	.ascii	"\002A"
	.ascii	"\372G"
	.ascii	"\363O"
	.ascii	"\0054"
	.ascii	"9\002"
	.ascii	")$"
	.ascii	"\032E"
	.ascii	"\000@"
	.ascii	"\323\177"
	.ascii	"\361e"
	.ascii	"\374L"
	.ascii	"\032\""
	.ascii	"\023\026"
	.asciz	"("
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\035\020"
	.asciz	"\031"
	.asciz	"\016"
	.ascii	"\000@"
	.ascii	"\3663"
	.ascii	"\375>"
	.ascii	"\345c"
	.ascii	"\032\020"
	.ascii	"\374U"
	.ascii	"\350f"
	.ascii	"\0059"
	.asciz	"6"
	.ascii	"%*"
	.ascii	"\fa"
	.ascii	"\000@"
	.ascii	"\340\177"
	.ascii	"\352u"
	.ascii	"\376J"
	.ascii	"\024("
	.ascii	"\024\n"
	.asciz	"\035"
	.ascii	"\000@"
	.size	INIT_MB_TYPE_P, 198

	.type	INIT_B8_TYPE_P,@object          # @INIT_B8_TYPE_P
	.p2align	4, 0x0
INIT_B8_TYPE_P:
	.ascii	"\000@"
	.ascii	"\f1"
	.ascii	"\000@"
	.ascii	"\374I"
	.ascii	"\0212"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\372V"
	.ascii	"\357_"
	.ascii	"\372="
	.ascii	"\t-"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\t2"
	.ascii	"\000@"
	.ascii	"\375F"
	.ascii	"\n6"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\006E"
	.ascii	"\363Z"
	.ascii	"\0004"
	.ascii	"\b+"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\0069"
	.ascii	"\000@"
	.ascii	"\357I"
	.ascii	"\0169"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\372]"
	.ascii	"\362X"
	.ascii	"\372,"
	.ascii	"\0047"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_B8_TYPE_P, 108

	.type	INIT_MV_RES_P,@object           # @INIT_MV_RES_P
	.p2align	4, 0x0
INIT_MV_RES_P:
	.ascii	"\375E"
	.ascii	"\000@"
	.ascii	"\372Q"
	.ascii	"\365`"
	.ascii	"\000@"
	.ascii	"\000:"
	.ascii	"\000@"
	.ascii	"\375L"
	.ascii	"\366^"
	.ascii	"\000@"
	.ascii	"\0067"
	.ascii	"\007C"
	.ascii	"\373V"
	.ascii	"\002X"
	.ascii	"\000@"
	.ascii	"\0056"
	.ascii	"\004E"
	.ascii	"\375Q"
	.ascii	"\000X"
	.ascii	"\000@"
	.ascii	"\376E"
	.ascii	"\000@"
	.ascii	"\373R"
	.ascii	"\366`"
	.ascii	"\000@"
	.ascii	"\0018"
	.ascii	"\000@"
	.ascii	"\375J"
	.ascii	"\372U"
	.ascii	"\000@"
	.ascii	"\002;"
	.ascii	"\002K"
	.ascii	"\375W"
	.ascii	"\375d"
	.ascii	"\000@"
	.ascii	"\000;"
	.ascii	"\375Q"
	.ascii	"\371V"
	.ascii	"\373_"
	.ascii	"\000@"
	.ascii	"\365Y"
	.ascii	"\000@"
	.ascii	"\361g"
	.ascii	"\353t"
	.ascii	"\000@"
	.ascii	"\001?"
	.ascii	"\000@"
	.ascii	"\373U"
	.ascii	"\363j"
	.ascii	"\000@"
	.ascii	"\0239"
	.ascii	"\024:"
	.ascii	"\004T"
	.ascii	"\006`"
	.ascii	"\000@"
	.ascii	"\005?"
	.ascii	"\006K"
	.ascii	"\375Z"
	.ascii	"\377e"
	.ascii	"\000@"
	.size	INIT_MV_RES_P, 120

	.type	INIT_REF_NO_P,@object           # @INIT_REF_NO_P
	.p2align	4, 0x0
INIT_REF_NO_P:
	.ascii	"\371C"
	.ascii	"\373J"
	.ascii	"\374J"
	.ascii	"\373P"
	.ascii	"\371H"
	.ascii	"\001:"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\377B"
	.ascii	"\377M"
	.ascii	"\001F"
	.ascii	"\376V"
	.ascii	"\373H"
	.ascii	"\000="
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\0037"
	.ascii	"\374O"
	.ascii	"\376K"
	.ascii	"\364a"
	.ascii	"\3712"
	.ascii	"\001<"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_REF_NO_P, 72

	.type	INIT_DELTA_QP_P,@object         # @INIT_DELTA_QP_P
	.p2align	4, 0x0
INIT_DELTA_QP_P:
	.ascii	"\000)"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000)"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000)"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000?"
	.size	INIT_DELTA_QP_P, 24

	.type	INIT_MB_AFF_P,@object           # @INIT_MB_AFF_P
	.p2align	4, 0x0
INIT_MB_AFF_P:
	.ascii	"\000-"
	.ascii	"\374N"
	.ascii	"\375`"
	.ascii	"\000@"
	.ascii	"\r\017"
	.ascii	"\0073"
	.ascii	"\002P"
	.ascii	"\000@"
	.ascii	"\007\""
	.ascii	"\367X"
	.ascii	"\354\177"
	.ascii	"\000@"
	.size	INIT_MB_AFF_P, 24

	.type	INIT_TRANSFORM_SIZE_P,@object   # @INIT_TRANSFORM_SIZE_P
	.p2align	4, 0x0
INIT_TRANSFORM_SIZE_P:
	.ascii	"\f("
	.ascii	"\0133"
	.ascii	"\016;"
	.ascii	"\031 "
	.ascii	"\0251"
	.ascii	"\0256"
	.ascii	"\025!"
	.ascii	"\0232"
	.ascii	"\021="
	.size	INIT_TRANSFORM_SIZE_P, 18

	.type	INIT_IPR_P,@object              # @INIT_IPR_P
INIT_IPR_P:
	.ascii	"\r)"
	.ascii	"\003>"
	.ascii	"\r)"
	.ascii	"\003>"
	.ascii	"\r)"
	.ascii	"\003>"
	.size	INIT_IPR_P, 12

	.type	INIT_CIPR_P,@object             # @INIT_CIPR_P
	.p2align	4, 0x0
INIT_CIPR_P:
	.ascii	"\367S"
	.ascii	"\004V"
	.ascii	"\000a"
	.ascii	"\371H"
	.ascii	"\367S"
	.ascii	"\004V"
	.ascii	"\000a"
	.ascii	"\371H"
	.ascii	"\367S"
	.ascii	"\004V"
	.ascii	"\000a"
	.ascii	"\371H"
	.size	INIT_CIPR_P, 24

	.type	INIT_CBP_P,@object              # @INIT_CBP_P
	.p2align	4, 0x0
INIT_CBP_P:
	.ascii	"\345~"
	.ascii	"\344b"
	.ascii	"\347e"
	.ascii	"\351C"
	.ascii	"\344R"
	.ascii	"\354^"
	.ascii	"\360S"
	.ascii	"\352n"
	.ascii	"\353["
	.ascii	"\356f"
	.ascii	"\363]"
	.ascii	"\343\177"
	.ascii	"\331\177"
	.ascii	"\356["
	.ascii	"\357`"
	.ascii	"\346Q"
	.ascii	"\335b"
	.ascii	"\350f"
	.ascii	"\351a"
	.ascii	"\345w"
	.ascii	"\350c"
	.ascii	"\353n"
	.ascii	"\356f"
	.ascii	"\334\177"
	.ascii	"\334\177"
	.ascii	"\357["
	.ascii	"\362_"
	.ascii	"\347T"
	.ascii	"\347V"
	.ascii	"\364Y"
	.ascii	"\357["
	.ascii	"\341\177"
	.ascii	"\362L"
	.ascii	"\356g"
	.ascii	"\363Z"
	.ascii	"\333\177"
	.size	INIT_CBP_P, 72

	.type	INIT_BCBP_P,@object             # @INIT_BCBP_P
	.p2align	4, 0x0
INIT_BCBP_P:
	.ascii	"\371\\"
	.ascii	"\373Y"
	.ascii	"\371`"
	.ascii	"\363l"
	.ascii	"\375."
	.ascii	"\377A"
	.ascii	"\3779"
	.ascii	"\367]"
	.ascii	"\375J"
	.ascii	"\367\\"
	.ascii	"\370W"
	.ascii	"\351~"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\375J"
	.ascii	"\367\\"
	.ascii	"\370W"
	.ascii	"\351~"
	.ascii	"\0056"
	.ascii	"\006<"
	.ascii	"\006;"
	.ascii	"\006E"
	.ascii	"\3770"
	.ascii	"\000D"
	.ascii	"\374E"
	.ascii	"\370X"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\371\\"
	.ascii	"\373Y"
	.ascii	"\371`"
	.ascii	"\363l"
	.ascii	"\375."
	.ascii	"\377A"
	.ascii	"\3779"
	.ascii	"\367]"
	.ascii	"\375J"
	.ascii	"\367\\"
	.ascii	"\370W"
	.ascii	"\351~"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\375J"
	.ascii	"\367\\"
	.ascii	"\370W"
	.ascii	"\351~"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\371\\"
	.ascii	"\373Y"
	.ascii	"\371`"
	.ascii	"\363l"
	.ascii	"\375."
	.ascii	"\377A"
	.ascii	"\3779"
	.ascii	"\367]"
	.ascii	"\375J"
	.ascii	"\367\\"
	.ascii	"\370W"
	.ascii	"\351~"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\375J"
	.ascii	"\367\\"
	.ascii	"\370W"
	.ascii	"\351~"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000P"
	.ascii	"\373Y"
	.ascii	"\371^"
	.ascii	"\374\\"
	.ascii	"\000'"
	.ascii	"\000A"
	.ascii	"\361T"
	.ascii	"\335\177"
	.ascii	"\376I"
	.ascii	"\364h"
	.ascii	"\367["
	.ascii	"\341\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\376I"
	.ascii	"\364h"
	.ascii	"\367["
	.ascii	"\341\177"
	.ascii	"\0037"
	.ascii	"\0078"
	.ascii	"\0077"
	.ascii	"\b="
	.ascii	"\3755"
	.ascii	"\000D"
	.ascii	"\371J"
	.ascii	"\367X"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000P"
	.ascii	"\373Y"
	.ascii	"\371^"
	.ascii	"\374\\"
	.ascii	"\000'"
	.ascii	"\000A"
	.ascii	"\361T"
	.ascii	"\335\177"
	.ascii	"\376I"
	.ascii	"\364h"
	.ascii	"\367["
	.ascii	"\341\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\376I"
	.ascii	"\364h"
	.ascii	"\367["
	.ascii	"\341\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000P"
	.ascii	"\373Y"
	.ascii	"\371^"
	.ascii	"\374\\"
	.ascii	"\000'"
	.ascii	"\000A"
	.ascii	"\361T"
	.ascii	"\335\177"
	.ascii	"\376I"
	.ascii	"\364h"
	.ascii	"\367["
	.ascii	"\341\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\376I"
	.ascii	"\364h"
	.ascii	"\367["
	.ascii	"\341\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\013P"
	.ascii	"\005L"
	.ascii	"\002T"
	.ascii	"\005N"
	.ascii	"\3727"
	.ascii	"\004="
	.ascii	"\362S"
	.ascii	"\333\177"
	.ascii	"\373O"
	.ascii	"\365h"
	.ascii	"\365["
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\373O"
	.ascii	"\365h"
	.ascii	"\365["
	.ascii	"\342\177"
	.ascii	"\000A"
	.ascii	"\376O"
	.ascii	"\000H"
	.ascii	"\374\\"
	.ascii	"\3728"
	.ascii	"\003D"
	.ascii	"\370G"
	.ascii	"\363b"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\013P"
	.ascii	"\005L"
	.ascii	"\002T"
	.ascii	"\005N"
	.ascii	"\3727"
	.ascii	"\004="
	.ascii	"\362S"
	.ascii	"\333\177"
	.ascii	"\373O"
	.ascii	"\365h"
	.ascii	"\365["
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\373O"
	.ascii	"\365h"
	.ascii	"\365["
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\013P"
	.ascii	"\005L"
	.ascii	"\002T"
	.ascii	"\005N"
	.ascii	"\3727"
	.ascii	"\004="
	.ascii	"\362S"
	.ascii	"\333\177"
	.ascii	"\373O"
	.ascii	"\365h"
	.ascii	"\365["
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\373O"
	.ascii	"\365h"
	.ascii	"\365["
	.ascii	"\342\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_BCBP_P, 528

	.type	INIT_MAP_P,@object              # @INIT_MAP_P
	.p2align	4, 0x0
INIT_MAP_P:
	.ascii	"\376U"
	.ascii	"\372N"
	.ascii	"\377K"
	.ascii	"\371M"
	.ascii	"\0026"
	.ascii	"\0052"
	.ascii	"\375D"
	.ascii	"\0012"
	.ascii	"\006*"
	.ascii	"\374Q"
	.ascii	"\001?"
	.ascii	"\374F"
	.ascii	"\000C"
	.ascii	"\0029"
	.ascii	"\376L"
	.ascii	"\000@"
	.ascii	"\013#"
	.ascii	"\004@"
	.ascii	"\001="
	.ascii	"\013#"
	.ascii	"\022\031"
	.ascii	"\f\030"
	.ascii	"\r\035"
	.ascii	"\r$"
	.ascii	"\366]"
	.ascii	"\371I"
	.ascii	"\376I"
	.ascii	"\r."
	.ascii	"\t1"
	.ascii	"\371d"
	.ascii	"\374O"
	.ascii	"\371G"
	.ascii	"\373E"
	.ascii	"\367F"
	.ascii	"\370B"
	.ascii	"\366D"
	.ascii	"\355I"
	.ascii	"\364E"
	.ascii	"\360F"
	.ascii	"\361C"
	.ascii	"\354>"
	.ascii	"\355F"
	.ascii	"\360B"
	.ascii	"\352A"
	.ascii	"\354?"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\t5"
	.ascii	"\0025"
	.ascii	"\0055"
	.ascii	"\376="
	.ascii	"\0008"
	.ascii	"\0008"
	.ascii	"\363?"
	.ascii	"\373<"
	.ascii	"\377>"
	.ascii	"\0049"
	.ascii	"\372E"
	.ascii	"\0049"
	.ascii	"\016'"
	.ascii	"\0043"
	.ascii	"\rD"
	.ascii	"\003@"
	.ascii	"\001="
	.ascii	"\t?"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\0072"
	.ascii	"\020'"
	.ascii	"\005,"
	.ascii	"\0044"
	.ascii	"\0130"
	.ascii	"\373<"
	.ascii	"\377;"
	.ascii	"\000;"
	.ascii	"\026!"
	.ascii	"\005,"
	.ascii	"\016+"
	.ascii	"\377N"
	.ascii	"\000<"
	.ascii	"\tE"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\376U"
	.ascii	"\372N"
	.ascii	"\377K"
	.ascii	"\371M"
	.ascii	"\0026"
	.ascii	"\0052"
	.ascii	"\375D"
	.ascii	"\0012"
	.ascii	"\006*"
	.ascii	"\374Q"
	.ascii	"\001?"
	.ascii	"\374F"
	.ascii	"\000C"
	.ascii	"\0029"
	.ascii	"\376L"
	.ascii	"\000@"
	.ascii	"\013#"
	.ascii	"\004@"
	.ascii	"\001="
	.ascii	"\013#"
	.ascii	"\022\031"
	.ascii	"\f\030"
	.ascii	"\r\035"
	.ascii	"\r$"
	.ascii	"\366]"
	.ascii	"\371I"
	.ascii	"\376I"
	.ascii	"\r."
	.ascii	"\t1"
	.ascii	"\371d"
	.ascii	"\374O"
	.ascii	"\371G"
	.ascii	"\373E"
	.ascii	"\367F"
	.ascii	"\370B"
	.ascii	"\366D"
	.ascii	"\355I"
	.ascii	"\364E"
	.ascii	"\360F"
	.ascii	"\361C"
	.ascii	"\354>"
	.ascii	"\355F"
	.ascii	"\360B"
	.ascii	"\352A"
	.ascii	"\354?"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\t5"
	.ascii	"\0025"
	.ascii	"\0055"
	.ascii	"\376="
	.ascii	"\0008"
	.ascii	"\0008"
	.ascii	"\363?"
	.ascii	"\373<"
	.ascii	"\377>"
	.ascii	"\0049"
	.ascii	"\372E"
	.ascii	"\0049"
	.ascii	"\016'"
	.ascii	"\0043"
	.ascii	"\rD"
	.ascii	"\376U"
	.ascii	"\372N"
	.ascii	"\377K"
	.ascii	"\371M"
	.ascii	"\0026"
	.ascii	"\0052"
	.ascii	"\375D"
	.ascii	"\0012"
	.ascii	"\006*"
	.ascii	"\374Q"
	.ascii	"\001?"
	.ascii	"\374F"
	.ascii	"\000C"
	.ascii	"\0029"
	.ascii	"\376L"
	.ascii	"\000@"
	.ascii	"\013#"
	.ascii	"\004@"
	.ascii	"\001="
	.ascii	"\013#"
	.ascii	"\022\031"
	.ascii	"\f\030"
	.ascii	"\r\035"
	.ascii	"\r$"
	.ascii	"\366]"
	.ascii	"\371I"
	.ascii	"\376I"
	.ascii	"\r."
	.ascii	"\t1"
	.ascii	"\371d"
	.ascii	"\374O"
	.ascii	"\371G"
	.ascii	"\373E"
	.ascii	"\367F"
	.ascii	"\370B"
	.ascii	"\366D"
	.ascii	"\355I"
	.ascii	"\364E"
	.ascii	"\360F"
	.ascii	"\361C"
	.ascii	"\354>"
	.ascii	"\355F"
	.ascii	"\360B"
	.ascii	"\352A"
	.ascii	"\354?"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\t5"
	.ascii	"\0025"
	.ascii	"\0055"
	.ascii	"\376="
	.ascii	"\0008"
	.ascii	"\0008"
	.ascii	"\363?"
	.ascii	"\373<"
	.ascii	"\377>"
	.ascii	"\0049"
	.ascii	"\372E"
	.ascii	"\0049"
	.ascii	"\016'"
	.ascii	"\0043"
	.ascii	"\rD"
	.ascii	"\363g"
	.ascii	"\363["
	.ascii	"\367Y"
	.ascii	"\362\\"
	.ascii	"\370L"
	.ascii	"\364W"
	.ascii	"\351n"
	.ascii	"\350i"
	.ascii	"\366N"
	.ascii	"\354p"
	.ascii	"\357c"
	.ascii	"\262\177"
	.ascii	"\272\177"
	.ascii	"\316\177"
	.ascii	"\322\177"
	.ascii	"\000@"
	.ascii	"\374B"
	.ascii	"\373N"
	.ascii	"\374G"
	.ascii	"\370H"
	.ascii	"\002;"
	.ascii	"\3777"
	.ascii	"\371F"
	.ascii	"\372K"
	.ascii	"\370Y"
	.ascii	"\336w"
	.ascii	"\375K"
	.ascii	" \024"
	.ascii	"\036\026"
	.ascii	"\324\177"
	.ascii	"\373U"
	.ascii	"\372Q"
	.ascii	"\366M"
	.ascii	"\371Q"
	.ascii	"\357P"
	.ascii	"\356I"
	.ascii	"\374J"
	.ascii	"\366S"
	.ascii	"\367G"
	.ascii	"\367C"
	.ascii	"\377="
	.ascii	"\370B"
	.ascii	"\362B"
	.ascii	"\000;"
	.ascii	"\002;"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\0006"
	.ascii	"\373="
	.ascii	"\000:"
	.ascii	"\377<"
	.ascii	"\375="
	.ascii	"\370C"
	.ascii	"\347T"
	.ascii	"\362J"
	.ascii	"\373A"
	.ascii	"\0054"
	.ascii	"\0029"
	.ascii	"\000="
	.ascii	"\367E"
	.ascii	"\365F"
	.ascii	"\0227"
	.ascii	"\374G"
	.ascii	"\000:"
	.ascii	"\007="
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\t)"
	.ascii	"\022\031"
	.ascii	"\t "
	.ascii	"\005+"
	.ascii	"\t/"
	.ascii	"\000,"
	.ascii	"\0003"
	.ascii	"\002."
	.ascii	"\023&"
	.ascii	"\374B"
	.ascii	"\017&"
	.ascii	"\f*"
	.ascii	"\t\""
	.ascii	"\000Y"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\363g"
	.ascii	"\363["
	.ascii	"\367Y"
	.ascii	"\362\\"
	.ascii	"\370L"
	.ascii	"\364W"
	.ascii	"\351n"
	.ascii	"\350i"
	.ascii	"\366N"
	.ascii	"\354p"
	.ascii	"\357c"
	.ascii	"\262\177"
	.ascii	"\272\177"
	.ascii	"\316\177"
	.ascii	"\322\177"
	.ascii	"\000@"
	.ascii	"\374B"
	.ascii	"\373N"
	.ascii	"\374G"
	.ascii	"\370H"
	.ascii	"\002;"
	.ascii	"\3777"
	.ascii	"\371F"
	.ascii	"\372K"
	.ascii	"\370Y"
	.ascii	"\336w"
	.ascii	"\375K"
	.ascii	" \024"
	.ascii	"\036\026"
	.ascii	"\324\177"
	.ascii	"\373U"
	.ascii	"\372Q"
	.ascii	"\366M"
	.ascii	"\371Q"
	.ascii	"\357P"
	.ascii	"\356I"
	.ascii	"\374J"
	.ascii	"\366S"
	.ascii	"\367G"
	.ascii	"\367C"
	.ascii	"\377="
	.ascii	"\370B"
	.ascii	"\362B"
	.ascii	"\000;"
	.ascii	"\002;"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\0006"
	.ascii	"\373="
	.ascii	"\000:"
	.ascii	"\377<"
	.ascii	"\375="
	.ascii	"\370C"
	.ascii	"\347T"
	.ascii	"\362J"
	.ascii	"\373A"
	.ascii	"\0054"
	.ascii	"\0029"
	.ascii	"\000="
	.ascii	"\367E"
	.ascii	"\365F"
	.ascii	"\0227"
	.ascii	"\363g"
	.ascii	"\363["
	.ascii	"\367Y"
	.ascii	"\362\\"
	.ascii	"\370L"
	.ascii	"\364W"
	.ascii	"\351n"
	.ascii	"\350i"
	.ascii	"\366N"
	.ascii	"\354p"
	.ascii	"\357c"
	.ascii	"\262\177"
	.ascii	"\272\177"
	.ascii	"\316\177"
	.ascii	"\322\177"
	.ascii	"\000@"
	.ascii	"\374B"
	.ascii	"\373N"
	.ascii	"\374G"
	.ascii	"\370H"
	.ascii	"\002;"
	.ascii	"\3777"
	.ascii	"\371F"
	.ascii	"\372K"
	.ascii	"\370Y"
	.ascii	"\336w"
	.ascii	"\375K"
	.ascii	" \024"
	.ascii	"\036\026"
	.ascii	"\324\177"
	.ascii	"\373U"
	.ascii	"\372Q"
	.ascii	"\366M"
	.ascii	"\371Q"
	.ascii	"\357P"
	.ascii	"\356I"
	.ascii	"\374J"
	.ascii	"\366S"
	.ascii	"\367G"
	.ascii	"\367C"
	.ascii	"\377="
	.ascii	"\370B"
	.ascii	"\362B"
	.ascii	"\000;"
	.ascii	"\002;"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\0006"
	.ascii	"\373="
	.ascii	"\000:"
	.ascii	"\377<"
	.ascii	"\375="
	.ascii	"\370C"
	.ascii	"\347T"
	.ascii	"\362J"
	.ascii	"\373A"
	.ascii	"\0054"
	.ascii	"\0029"
	.ascii	"\000="
	.ascii	"\367E"
	.ascii	"\365F"
	.ascii	"\0227"
	.ascii	"\374V"
	.ascii	"\364X"
	.ascii	"\373R"
	.ascii	"\375H"
	.ascii	"\374C"
	.ascii	"\370H"
	.ascii	"\360Y"
	.ascii	"\367E"
	.ascii	"\377;"
	.ascii	"\005B"
	.ascii	"\0049"
	.ascii	"\374G"
	.ascii	"\376G"
	.ascii	"\002:"
	.ascii	"\377J"
	.ascii	"\000@"
	.ascii	"\374,"
	.ascii	"\377E"
	.ascii	"\000>"
	.ascii	"\3713"
	.ascii	"\374/"
	.ascii	"\372*"
	.ascii	"\375)"
	.ascii	"\3725"
	.ascii	"\bL"
	.ascii	"\367N"
	.ascii	"\365S"
	.ascii	"\t4"
	.ascii	"\000C"
	.ascii	"\373Z"
	.ascii	"\375N"
	.ascii	"\370J"
	.ascii	"\367H"
	.ascii	"\366H"
	.ascii	"\356K"
	.ascii	"\364G"
	.ascii	"\365?"
	.ascii	"\373F"
	.ascii	"\357K"
	.ascii	"\362H"
	.ascii	"\360C"
	.ascii	"\3705"
	.ascii	"\362;"
	.ascii	"\3674"
	.ascii	"\365D"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\001C"
	.ascii	"\361H"
	.ascii	"\373K"
	.ascii	"\370P"
	.ascii	"\353S"
	.ascii	"\353@"
	.ascii	"\363\037"
	.ascii	"\347@"
	.ascii	"\343^"
	.ascii	"\tK"
	.ascii	"\021?"
	.ascii	"\370J"
	.ascii	"\373#"
	.ascii	"\376\033"
	.ascii	"\r["
	.ascii	"\003A"
	.ascii	"\371E"
	.ascii	"\bM"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\366B"
	.ascii	"\003>"
	.ascii	"\375D"
	.ascii	"\354Q"
	.ascii	"\000\036"
	.ascii	"\001\007"
	.ascii	"\375\027"
	.ascii	"\353J"
	.ascii	"\020B"
	.ascii	"\351|"
	.ascii	"\021%"
	.ascii	",\356"
	.ascii	"2\336"
	.ascii	"\352\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\374V"
	.ascii	"\364X"
	.ascii	"\373R"
	.ascii	"\375H"
	.ascii	"\374C"
	.ascii	"\370H"
	.ascii	"\360Y"
	.ascii	"\367E"
	.ascii	"\377;"
	.ascii	"\005B"
	.ascii	"\0049"
	.ascii	"\374G"
	.ascii	"\376G"
	.ascii	"\002:"
	.ascii	"\377J"
	.ascii	"\000@"
	.ascii	"\374,"
	.ascii	"\377E"
	.ascii	"\000>"
	.ascii	"\3713"
	.ascii	"\374/"
	.ascii	"\372*"
	.ascii	"\375)"
	.ascii	"\3725"
	.ascii	"\bL"
	.ascii	"\367N"
	.ascii	"\365S"
	.ascii	"\t4"
	.ascii	"\000C"
	.ascii	"\373Z"
	.ascii	"\375N"
	.ascii	"\370J"
	.ascii	"\367H"
	.ascii	"\366H"
	.ascii	"\356K"
	.ascii	"\364G"
	.ascii	"\365?"
	.ascii	"\373F"
	.ascii	"\357K"
	.ascii	"\362H"
	.ascii	"\360C"
	.ascii	"\3705"
	.ascii	"\362;"
	.ascii	"\3674"
	.ascii	"\365D"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\001C"
	.ascii	"\361H"
	.ascii	"\373K"
	.ascii	"\370P"
	.ascii	"\353S"
	.ascii	"\353@"
	.ascii	"\363\037"
	.ascii	"\347@"
	.ascii	"\343^"
	.ascii	"\tK"
	.ascii	"\021?"
	.ascii	"\370J"
	.ascii	"\373#"
	.ascii	"\376\033"
	.ascii	"\r["
	.ascii	"\374V"
	.ascii	"\364X"
	.ascii	"\373R"
	.ascii	"\375H"
	.ascii	"\374C"
	.ascii	"\370H"
	.ascii	"\360Y"
	.ascii	"\367E"
	.ascii	"\377;"
	.ascii	"\005B"
	.ascii	"\0049"
	.ascii	"\374G"
	.ascii	"\376G"
	.ascii	"\002:"
	.ascii	"\377J"
	.ascii	"\000@"
	.ascii	"\374,"
	.ascii	"\377E"
	.ascii	"\000>"
	.ascii	"\3713"
	.ascii	"\374/"
	.ascii	"\372*"
	.ascii	"\375)"
	.ascii	"\3725"
	.ascii	"\bL"
	.ascii	"\367N"
	.ascii	"\365S"
	.ascii	"\t4"
	.ascii	"\000C"
	.ascii	"\373Z"
	.ascii	"\375N"
	.ascii	"\370J"
	.ascii	"\367H"
	.ascii	"\366H"
	.ascii	"\356K"
	.ascii	"\364G"
	.ascii	"\365?"
	.ascii	"\373F"
	.ascii	"\357K"
	.ascii	"\362H"
	.ascii	"\360C"
	.ascii	"\3705"
	.ascii	"\362;"
	.ascii	"\3674"
	.ascii	"\365D"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\001C"
	.ascii	"\361H"
	.ascii	"\373K"
	.ascii	"\370P"
	.ascii	"\353S"
	.ascii	"\353@"
	.ascii	"\363\037"
	.ascii	"\347@"
	.ascii	"\343^"
	.ascii	"\tK"
	.ascii	"\021?"
	.ascii	"\370J"
	.ascii	"\373#"
	.ascii	"\376\033"
	.ascii	"\r["
	.size	INIT_MAP_P, 1980

	.type	INIT_FLD_MAP_P,@object          # @INIT_FLD_MAP_P
	.p2align	4, 0x0
INIT_FLD_MAP_P:
	.ascii	"\363j"
	.ascii	"\360j"
	.ascii	"\366W"
	.ascii	"\353r"
	.ascii	"\356n"
	.ascii	"\362b"
	.ascii	"\352n"
	.ascii	"\353j"
	.ascii	"\356g"
	.ascii	"\353k"
	.ascii	"\351l"
	.ascii	"\346p"
	.ascii	"\366`"
	.ascii	"\364_"
	.ascii	"\373["
	.ascii	"\000@"
	.ascii	"\367]"
	.ascii	"\352^"
	.ascii	"\373V"
	.ascii	"\tC"
	.ascii	"\374P"
	.ascii	"\366U"
	.ascii	"\377F"
	.ascii	"\007<"
	.ascii	"\t:"
	.ascii	"\005="
	.ascii	"\f2"
	.ascii	"\0172"
	.ascii	"\0221"
	.ascii	"\0216"
	.ascii	"\373U"
	.ascii	"\372Q"
	.ascii	"\366M"
	.ascii	"\371Q"
	.ascii	"\357P"
	.ascii	"\356I"
	.ascii	"\374J"
	.ascii	"\366S"
	.ascii	"\367G"
	.ascii	"\367C"
	.ascii	"\377="
	.ascii	"\370B"
	.ascii	"\362B"
	.ascii	"\000;"
	.ascii	"\002;"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\n)"
	.ascii	"\007."
	.ascii	"\3773"
	.ascii	"\0071"
	.ascii	"\b4"
	.ascii	"\t)"
	.ascii	"\006/"
	.ascii	"\0027"
	.ascii	"\r)"
	.ascii	"\n,"
	.ascii	"\0062"
	.ascii	"\0055"
	.ascii	"\r1"
	.ascii	"\004?"
	.ascii	"\006@"
	.ascii	"\376E"
	.ascii	"\376;"
	.ascii	"\006F"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\n,"
	.ascii	"\t\037"
	.ascii	"\f+"
	.ascii	"\0035"
	.ascii	"\016\""
	.ascii	"\n&"
	.ascii	"\3754"
	.ascii	"\r("
	.ascii	"\021 "
	.ascii	"\007,"
	.ascii	"\007&"
	.ascii	"\r2"
	.ascii	"\n9"
	.ascii	"\032+"
	.ascii	"\353~"
	.ascii	"\351|"
	.ascii	"\354n"
	.ascii	"\346~"
	.ascii	"\347|"
	.ascii	"\357i"
	.ascii	"\345y"
	.ascii	"\345u"
	.ascii	"\357f"
	.ascii	"\346u"
	.ascii	"\345t"
	.ascii	"\337z"
	.ascii	"\366_"
	.ascii	"\362d"
	.ascii	"\370_"
	.ascii	"\000@"
	.ascii	"\357o"
	.ascii	"\344r"
	.ascii	"\372Y"
	.ascii	"\376P"
	.ascii	"\374R"
	.ascii	"\367U"
	.ascii	"\370Q"
	.ascii	"\377H"
	.ascii	"\005@"
	.ascii	"\001C"
	.ascii	"\t8"
	.ascii	"\000E"
	.ascii	"\001E"
	.ascii	"\007E"
	.ascii	"\375Q"
	.ascii	"\375L"
	.ascii	"\371H"
	.ascii	"\372N"
	.ascii	"\364H"
	.ascii	"\362D"
	.ascii	"\375F"
	.ascii	"\372L"
	.ascii	"\373B"
	.ascii	"\373>"
	.ascii	"\0009"
	.ascii	"\374="
	.ascii	"\367<"
	.ascii	"\0016"
	.ascii	"\002:"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\371E"
	.ascii	"\372C"
	.ascii	"\360M"
	.ascii	"\376@"
	.ascii	"\002="
	.ascii	"\372C"
	.ascii	"\375@"
	.ascii	"\0029"
	.ascii	"\375A"
	.ascii	"\375B"
	.ascii	"\000>"
	.ascii	"\t3"
	.ascii	"\377B"
	.ascii	"\376G"
	.ascii	"\376K"
	.ascii	"\377F"
	.ascii	"\367H"
	.ascii	"\016<"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\020%"
	.ascii	"\000/"
	.ascii	"\022#"
	.ascii	"\013%"
	.ascii	"\f)"
	.ascii	"\n)"
	.ascii	"\0020"
	.ascii	"\f)"
	.ascii	"\r)"
	.ascii	"\000;"
	.ascii	"\0032"
	.ascii	"\023("
	.ascii	"\003B"
	.ascii	"\0222"
	.ascii	"\352\177"
	.ascii	"\347\177"
	.ascii	"\347x"
	.ascii	"\345\177"
	.ascii	"\355r"
	.ascii	"\351u"
	.ascii	"\347v"
	.ascii	"\346u"
	.ascii	"\350q"
	.ascii	"\344v"
	.ascii	"\341x"
	.ascii	"\333|"
	.ascii	"\366^"
	.ascii	"\361f"
	.ascii	"\366c"
	.ascii	"\000@"
	.ascii	"\363j"
	.ascii	"\316\177"
	.ascii	"\373\\"
	.ascii	"\0219"
	.ascii	"\373V"
	.ascii	"\363^"
	.ascii	"\364["
	.ascii	"\376M"
	.ascii	"\000G"
	.ascii	"\377I"
	.ascii	"\004@"
	.ascii	"\371Q"
	.ascii	"\005@"
	.ascii	"\0179"
	.ascii	"\375N"
	.ascii	"\370J"
	.ascii	"\367H"
	.ascii	"\366H"
	.ascii	"\356K"
	.ascii	"\364G"
	.ascii	"\365?"
	.ascii	"\373F"
	.ascii	"\357K"
	.ascii	"\362H"
	.ascii	"\360C"
	.ascii	"\3705"
	.ascii	"\362;"
	.ascii	"\3674"
	.ascii	"\365D"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\001C"
	.ascii	"\000D"
	.ascii	"\366C"
	.ascii	"\001D"
	.ascii	"\000M"
	.ascii	"\002@"
	.ascii	"\000D"
	.ascii	"\373N"
	.ascii	"\0077"
	.ascii	"\005;"
	.ascii	"\002A"
	.ascii	"\0166"
	.ascii	"\017,"
	.ascii	"\005<"
	.ascii	"\002F"
	.ascii	"\376L"
	.ascii	"\356V"
	.ascii	"\fF"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\005@"
	.ascii	"\364F"
	.ascii	"\0137"
	.ascii	"\0058"
	.ascii	"\000E"
	.ascii	"\002A"
	.ascii	"\372J"
	.ascii	"\0056"
	.ascii	"\0076"
	.ascii	"\372L"
	.ascii	"\365R"
	.ascii	"\376M"
	.ascii	"\376M"
	.ascii	"\031*"
	.size	INIT_FLD_MAP_P, 720

	.type	INIT_FLD_LAST_P,@object         # @INIT_FLD_LAST_P
	.p2align	4, 0x0
INIT_FLD_LAST_P:
	.ascii	"\016\013"
	.ascii	"\013\016"
	.ascii	"\t\013"
	.ascii	"\022\013"
	.ascii	"\025\t"
	.ascii	"\027\376"
	.ascii	" \361"
	.ascii	" \361"
	.ascii	"\"\353"
	.ascii	"'\351"
	.ascii	"*\337"
	.ascii	")\341"
	.ascii	".\344"
	.ascii	"&\364"
	.ascii	"\025\035"
	.ascii	"\000@"
	.ascii	"-\350"
	.ascii	"5\323"
	.ascii	"0\346"
	.ascii	"A\325"
	.ascii	"+\355"
	.ascii	"'\366"
	.ascii	"\036\t"
	.ascii	"\022\032"
	.ascii	"\024\033"
	.ascii	"\0009"
	.ascii	"\362R"
	.ascii	"\373K"
	.ascii	"\355a"
	.ascii	"\335}"
	.ascii	"\025\363"
	.ascii	"!\362"
	.ascii	"'\371"
	.ascii	".\376"
	.ascii	"3\002"
	.ascii	"<\006"
	.ascii	"=\021"
	.ascii	"7\""
	.ascii	"*>"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.asciz	"\033"
	.asciz	"\034"
	.ascii	"\037\374"
	.ascii	"\033\006"
	.ascii	"\"\b"
	.ascii	"\036\n"
	.ascii	"\030\026"
	.ascii	"!\023"
	.ascii	"\026 "
	.ascii	"\032\037"
	.ascii	"\025)"
	.ascii	"\032,"
	.ascii	"\027/"
	.ascii	"\020A"
	.ascii	"\016G"
	.ascii	"\b<"
	.ascii	"\006?"
	.ascii	"\021A"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\025\030"
	.ascii	"\027\024"
	.ascii	"\032\027"
	.ascii	"\033 "
	.ascii	"\034\027"
	.ascii	"\034\030"
	.ascii	"\027("
	.ascii	"\030 "
	.ascii	"\034\035"
	.ascii	"\027*"
	.ascii	"\0239"
	.ascii	"\0265"
	.ascii	"\026="
	.ascii	"\013V"
	.ascii	"\023\372"
	.ascii	"\022\372"
	.asciz	"\016"
	.ascii	"\032\364"
	.ascii	"\037\360"
	.ascii	"!\347"
	.ascii	"!\352"
	.ascii	"%\344"
	.ascii	"'\342"
	.ascii	"*\342"
	.ascii	"/\326"
	.ascii	"-\334"
	.ascii	"1\336"
	.ascii	")\357"
	.ascii	" \t"
	.ascii	"\000@"
	.ascii	"E\271"
	.ascii	"?\301"
	.ascii	"B\300"
	.ascii	"M\266"
	.ascii	"6\331"
	.ascii	"4\335"
	.ascii	")\366"
	.asciz	"$"
	.ascii	"(\377"
	.ascii	"\036\016"
	.ascii	"\034\032"
	.ascii	"\027%"
	.ascii	"\f7"
	.ascii	"\013A"
	.ascii	"\021\366"
	.ascii	" \363"
	.ascii	"*\367"
	.ascii	"1\373"
	.asciz	"5"
	.ascii	"@\003"
	.ascii	"D\n"
	.ascii	"B\033"
	.ascii	"/9"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"%\337"
	.ascii	"'\334"
	.ascii	"(\333"
	.ascii	"&\342"
	.ascii	".\337"
	.ascii	"*\342"
	.ascii	"(\350"
	.ascii	"1\343"
	.ascii	"&\364"
	.ascii	"(\366"
	.ascii	"&\375"
	.ascii	".\373"
	.ascii	"\037\024"
	.ascii	"\035\036"
	.ascii	"\031,"
	.ascii	"\f0"
	.ascii	"\0131"
	.ascii	"\032-"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.zero	2,22
	.ascii	"\027\026"
	.ascii	"\033\025"
	.ascii	"!\024"
	.ascii	"\032\034"
	.ascii	"\036\030"
	.ascii	"\033\""
	.ascii	"\022*"
	.ascii	"\031'"
	.ascii	"\0222"
	.ascii	"\fF"
	.ascii	"\0256"
	.ascii	"\016G"
	.ascii	"\013S"
	.ascii	"\021\363"
	.ascii	"\020\367"
	.ascii	"\021\364"
	.ascii	"\033\353"
	.ascii	"%\342"
	.ascii	")\330"
	.ascii	"*\327"
	.ascii	"0\321"
	.ascii	"'\340"
	.ascii	".\330"
	.ascii	"4\315"
	.ascii	".\327"
	.ascii	"4\331"
	.ascii	"+\355"
	.ascii	" \013"
	.ascii	"\000@"
	.ascii	"=\311"
	.ascii	"8\322"
	.ascii	">\316"
	.ascii	"Q\275"
	.ascii	"-\354"
	.ascii	"#\376"
	.ascii	"\034\017"
	.ascii	"\"\001"
	.ascii	"'\001"
	.ascii	"\036\021"
	.ascii	"\024&"
	.ascii	"\022-"
	.ascii	"\0176"
	.ascii	"\000O"
	.ascii	"\t\376"
	.ascii	"\036\366"
	.ascii	"\037\374"
	.ascii	"!\377"
	.ascii	"!\007"
	.ascii	"\037\f"
	.ascii	"%\027"
	.ascii	"\037&"
	.ascii	"\024@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"$\360"
	.ascii	"%\362"
	.ascii	"%\357"
	.ascii	" \001"
	.ascii	"\"\017"
	.ascii	"\035\017"
	.ascii	"\030\031"
	.ascii	"\"\026"
	.ascii	"\037\020"
	.ascii	"#\022"
	.ascii	"\037\034"
	.ascii	"!)"
	.ascii	"$\034"
	.ascii	"\033/"
	.ascii	"\025>"
	.ascii	"\022\037"
	.ascii	"\023\032"
	.ascii	"$\030"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\030\027"
	.ascii	"\033\020"
	.ascii	"\030\036"
	.ascii	"\037\035"
	.ascii	"\026)"
	.ascii	"\026*"
	.ascii	"\020<"
	.ascii	"\0174"
	.ascii	"\016<"
	.ascii	"\003N"
	.ascii	"\360{"
	.ascii	"\0255"
	.ascii	"\0268"
	.ascii	"\031="
	.size	INIT_FLD_LAST_P, 720

	.type	INIT_LAST_P,@object             # @INIT_LAST_P
	.p2align	4, 0x0
INIT_LAST_P:
	.ascii	"\013\034"
	.ascii	"\002("
	.ascii	"\003,"
	.ascii	"\0001"
	.ascii	"\000."
	.ascii	"\002,"
	.ascii	"\0023"
	.ascii	"\000/"
	.ascii	"\004'"
	.ascii	"\002>"
	.ascii	"\006."
	.ascii	"\0006"
	.ascii	"\0036"
	.ascii	"\002:"
	.ascii	"\004?"
	.ascii	"\000@"
	.ascii	"\0063"
	.ascii	"\0069"
	.ascii	"\0075"
	.ascii	"\0064"
	.ascii	"\0067"
	.ascii	"\013-"
	.ascii	"\016$"
	.ascii	"\b5"
	.ascii	"\377R"
	.ascii	"\0077"
	.ascii	"\375N"
	.ascii	"\017."
	.ascii	"\026\037"
	.ascii	"\377T"
	.ascii	"\t\376"
	.ascii	"\032\367"
	.ascii	"!\367"
	.ascii	"'\371"
	.ascii	")\376"
	.ascii	"-\003"
	.ascii	"1\t"
	.ascii	"-\033"
	.ascii	"$;"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\031\007"
	.ascii	"\036\371"
	.ascii	"\034\003"
	.ascii	"\034\004"
	.asciz	" "
	.ascii	"\"\377"
	.ascii	"\036\006"
	.ascii	"\036\006"
	.ascii	" \t"
	.ascii	"\037\023"
	.ascii	"\032\033"
	.ascii	"\032\036"
	.ascii	"%\024"
	.ascii	"\034\""
	.ascii	"\021F"
	.ascii	"\001C"
	.ascii	"\005;"
	.ascii	"\tC"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\020\036"
	.ascii	"\022 "
	.ascii	"\022#"
	.ascii	"\026\035"
	.ascii	"\030\037"
	.ascii	"\027&"
	.ascii	"\022+"
	.ascii	"\024)"
	.ascii	"\013?"
	.ascii	"\t;"
	.ascii	"\t@"
	.ascii	"\377^"
	.ascii	"\376Y"
	.ascii	"\367l"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\013\034"
	.ascii	"\002("
	.ascii	"\003,"
	.ascii	"\0001"
	.ascii	"\000."
	.ascii	"\002,"
	.ascii	"\0023"
	.ascii	"\000/"
	.ascii	"\004'"
	.ascii	"\002>"
	.ascii	"\006."
	.ascii	"\0006"
	.ascii	"\0036"
	.ascii	"\002:"
	.ascii	"\004?"
	.ascii	"\000@"
	.ascii	"\0063"
	.ascii	"\0069"
	.ascii	"\0075"
	.ascii	"\0064"
	.ascii	"\0067"
	.ascii	"\013-"
	.ascii	"\016$"
	.ascii	"\b5"
	.ascii	"\377R"
	.ascii	"\0077"
	.ascii	"\375N"
	.ascii	"\017."
	.ascii	"\026\037"
	.ascii	"\377T"
	.ascii	"\t\376"
	.ascii	"\032\367"
	.ascii	"!\367"
	.ascii	"'\371"
	.ascii	")\376"
	.ascii	"-\003"
	.ascii	"1\t"
	.ascii	"-\033"
	.ascii	"$;"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\031\007"
	.ascii	"\036\371"
	.ascii	"\034\003"
	.ascii	"\034\004"
	.asciz	" "
	.ascii	"\"\377"
	.ascii	"\036\006"
	.ascii	"\036\006"
	.ascii	" \t"
	.ascii	"\037\023"
	.ascii	"\032\033"
	.ascii	"\032\036"
	.ascii	"%\024"
	.ascii	"\034\""
	.ascii	"\021F"
	.ascii	"\013\034"
	.ascii	"\002("
	.ascii	"\003,"
	.ascii	"\0001"
	.ascii	"\000."
	.ascii	"\002,"
	.ascii	"\0023"
	.ascii	"\000/"
	.ascii	"\004'"
	.ascii	"\002>"
	.ascii	"\006."
	.ascii	"\0006"
	.ascii	"\0036"
	.ascii	"\002:"
	.ascii	"\004?"
	.ascii	"\000@"
	.ascii	"\0063"
	.ascii	"\0069"
	.ascii	"\0075"
	.ascii	"\0064"
	.ascii	"\0067"
	.ascii	"\013-"
	.ascii	"\016$"
	.ascii	"\b5"
	.ascii	"\377R"
	.ascii	"\0077"
	.ascii	"\375N"
	.ascii	"\017."
	.ascii	"\026\037"
	.ascii	"\377T"
	.ascii	"\t\376"
	.ascii	"\032\367"
	.ascii	"!\367"
	.ascii	"'\371"
	.ascii	")\376"
	.ascii	"-\003"
	.ascii	"1\t"
	.ascii	"-\033"
	.ascii	"$;"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\031\007"
	.ascii	"\036\371"
	.ascii	"\034\003"
	.ascii	"\034\004"
	.asciz	" "
	.ascii	"\"\377"
	.ascii	"\036\006"
	.ascii	"\036\006"
	.ascii	" \t"
	.ascii	"\037\023"
	.ascii	"\032\033"
	.ascii	"\032\036"
	.ascii	"%\024"
	.ascii	"\034\""
	.ascii	"\021F"
	.ascii	"\004-"
	.ascii	"\n\034"
	.ascii	"\n\037"
	.ascii	"!\365"
	.ascii	"4\325"
	.ascii	"\022\017"
	.asciz	"\034"
	.ascii	"#\352"
	.ascii	"&\347"
	.asciz	"\""
	.ascii	"'\356"
	.ascii	" \364"
	.ascii	"f\242"
	.zero	2
	.ascii	"8\361"
	.ascii	"\000@"
	.ascii	"!\374"
	.ascii	"\035\n"
	.ascii	"%\373"
	.ascii	"3\343"
	.ascii	"'\367"
	.ascii	"4\336"
	.ascii	"E\306"
	.ascii	"C\301"
	.ascii	",\373"
	.ascii	" \007"
	.ascii	"7\343"
	.ascii	" \001"
	.zero	2
	.ascii	"\033$"
	.ascii	"\021\366"
	.ascii	" \363"
	.ascii	"*\367"
	.ascii	"1\373"
	.asciz	"5"
	.ascii	"@\003"
	.ascii	"D\n"
	.ascii	"B\033"
	.ascii	"/9"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"!\347"
	.ascii	"\"\342"
	.ascii	"$\344"
	.ascii	"&\344"
	.ascii	"&\345"
	.ascii	"\"\356"
	.ascii	"#\360"
	.ascii	"\"\362"
	.ascii	" \370"
	.ascii	"%\372"
	.asciz	"#"
	.ascii	"\036\n"
	.ascii	"\034\022"
	.ascii	"\032\031"
	.ascii	"\035)"
	.ascii	"\000K"
	.ascii	"\002H"
	.ascii	"\bM"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\016#"
	.ascii	"\022\037"
	.ascii	"\021#"
	.ascii	"\025\036"
	.ascii	"\021-"
	.ascii	"\024*"
	.ascii	"\022-"
	.ascii	"\033\032"
	.ascii	"\0206"
	.ascii	"\007B"
	.ascii	"\0208"
	.ascii	"\013I"
	.ascii	"\nC"
	.ascii	"\366t"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\004-"
	.ascii	"\n\034"
	.ascii	"\n\037"
	.ascii	"!\365"
	.ascii	"4\325"
	.ascii	"\022\017"
	.asciz	"\034"
	.ascii	"#\352"
	.ascii	"&\347"
	.asciz	"\""
	.ascii	"'\356"
	.ascii	" \364"
	.ascii	"f\242"
	.zero	2
	.ascii	"8\361"
	.ascii	"\000@"
	.ascii	"!\374"
	.ascii	"\035\n"
	.ascii	"%\373"
	.ascii	"3\343"
	.ascii	"'\367"
	.ascii	"4\336"
	.ascii	"E\306"
	.ascii	"C\301"
	.ascii	",\373"
	.ascii	" \007"
	.ascii	"7\343"
	.ascii	" \001"
	.zero	2
	.ascii	"\033$"
	.ascii	"\021\366"
	.ascii	" \363"
	.ascii	"*\367"
	.ascii	"1\373"
	.asciz	"5"
	.ascii	"@\003"
	.ascii	"D\n"
	.ascii	"B\033"
	.ascii	"/9"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"!\347"
	.ascii	"\"\342"
	.ascii	"$\344"
	.ascii	"&\344"
	.ascii	"&\345"
	.ascii	"\"\356"
	.ascii	"#\360"
	.ascii	"\"\362"
	.ascii	" \370"
	.ascii	"%\372"
	.asciz	"#"
	.ascii	"\036\n"
	.ascii	"\034\022"
	.ascii	"\032\031"
	.ascii	"\035)"
	.ascii	"\004-"
	.ascii	"\n\034"
	.ascii	"\n\037"
	.ascii	"!\365"
	.ascii	"4\325"
	.ascii	"\022\017"
	.asciz	"\034"
	.ascii	"#\352"
	.ascii	"&\347"
	.asciz	"\""
	.ascii	"'\356"
	.ascii	" \364"
	.ascii	"f\242"
	.zero	2
	.ascii	"8\361"
	.ascii	"\000@"
	.ascii	"!\374"
	.ascii	"\035\n"
	.ascii	"%\373"
	.ascii	"3\343"
	.ascii	"'\367"
	.ascii	"4\336"
	.ascii	"E\306"
	.ascii	"C\301"
	.ascii	",\373"
	.ascii	" \007"
	.ascii	"7\343"
	.ascii	" \001"
	.zero	2
	.ascii	"\033$"
	.ascii	"\021\366"
	.ascii	" \363"
	.ascii	"*\367"
	.ascii	"1\373"
	.asciz	"5"
	.ascii	"@\003"
	.ascii	"D\n"
	.ascii	"B\033"
	.ascii	"/9"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"!\347"
	.ascii	"\"\342"
	.ascii	"$\344"
	.ascii	"&\344"
	.ascii	"&\345"
	.ascii	"\"\356"
	.ascii	"#\360"
	.ascii	"\"\362"
	.ascii	" \370"
	.ascii	"%\372"
	.asciz	"#"
	.ascii	"\036\n"
	.ascii	"\034\022"
	.ascii	"\032\031"
	.ascii	"\035)"
	.ascii	"\004'"
	.ascii	"\000*"
	.ascii	"\007\""
	.ascii	"\013\035"
	.ascii	"\b\037"
	.ascii	"\006%"
	.ascii	"\007*"
	.ascii	"\003("
	.ascii	"\b!"
	.ascii	"\r+"
	.ascii	"\r$"
	.ascii	"\004/"
	.ascii	"\0037"
	.ascii	"\002:"
	.ascii	"\006<"
	.ascii	"\000@"
	.ascii	"\b,"
	.ascii	"\013,"
	.ascii	"\016*"
	.ascii	"\0070"
	.ascii	"\0048"
	.ascii	"\0044"
	.ascii	"\r%"
	.ascii	"\t1"
	.ascii	"\023:"
	.ascii	"\n0"
	.ascii	"\f-"
	.ascii	"\000E"
	.ascii	"\024!"
	.ascii	"\b?"
	.ascii	"\t\376"
	.ascii	"\036\366"
	.ascii	"\037\374"
	.ascii	"!\377"
	.ascii	"!\007"
	.ascii	"\037\f"
	.ascii	"%\027"
	.ascii	"\037&"
	.ascii	"\024@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"#\356"
	.ascii	"!\347"
	.ascii	"\034\375"
	.ascii	"\030\n"
	.asciz	"\033"
	.ascii	"\"\362"
	.ascii	"4\324"
	.ascii	"'\350"
	.ascii	"\023\021"
	.ascii	"\037\031"
	.ascii	"$\035"
	.ascii	"\030!"
	.ascii	"\"\017"
	.ascii	"\036\024"
	.ascii	"\026I"
	.ascii	"\024\""
	.ascii	"\023\037"
	.ascii	"\033,"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\023\020"
	.ascii	"\017$"
	.ascii	"\017$"
	.ascii	"\025\034"
	.ascii	"\031\025"
	.ascii	"\036\024"
	.ascii	"\037\f"
	.ascii	"\033\020"
	.ascii	"\030*"
	.ascii	"\000]"
	.ascii	"\0168"
	.ascii	"\0179"
	.ascii	"\032&"
	.ascii	"\350\177"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\004'"
	.ascii	"\000*"
	.ascii	"\007\""
	.ascii	"\013\035"
	.ascii	"\b\037"
	.ascii	"\006%"
	.ascii	"\007*"
	.ascii	"\003("
	.ascii	"\b!"
	.ascii	"\r+"
	.ascii	"\r$"
	.ascii	"\004/"
	.ascii	"\0037"
	.ascii	"\002:"
	.ascii	"\006<"
	.ascii	"\000@"
	.ascii	"\b,"
	.ascii	"\013,"
	.ascii	"\016*"
	.ascii	"\0070"
	.ascii	"\0048"
	.ascii	"\0044"
	.ascii	"\r%"
	.ascii	"\t1"
	.ascii	"\023:"
	.ascii	"\n0"
	.ascii	"\f-"
	.ascii	"\000E"
	.ascii	"\024!"
	.ascii	"\b?"
	.ascii	"\t\376"
	.ascii	"\036\366"
	.ascii	"\037\374"
	.ascii	"!\377"
	.ascii	"!\007"
	.ascii	"\037\f"
	.ascii	"%\027"
	.ascii	"\037&"
	.ascii	"\024@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"#\356"
	.ascii	"!\347"
	.ascii	"\034\375"
	.ascii	"\030\n"
	.asciz	"\033"
	.ascii	"\"\362"
	.ascii	"4\324"
	.ascii	"'\350"
	.ascii	"\023\021"
	.ascii	"\037\031"
	.ascii	"$\035"
	.ascii	"\030!"
	.ascii	"\"\017"
	.ascii	"\036\024"
	.ascii	"\026I"
	.ascii	"\004'"
	.ascii	"\000*"
	.ascii	"\007\""
	.ascii	"\013\035"
	.ascii	"\b\037"
	.ascii	"\006%"
	.ascii	"\007*"
	.ascii	"\003("
	.ascii	"\b!"
	.ascii	"\r+"
	.ascii	"\r$"
	.ascii	"\004/"
	.ascii	"\0037"
	.ascii	"\002:"
	.ascii	"\006<"
	.ascii	"\000@"
	.ascii	"\b,"
	.ascii	"\013,"
	.ascii	"\016*"
	.ascii	"\0070"
	.ascii	"\0048"
	.ascii	"\0044"
	.ascii	"\r%"
	.ascii	"\t1"
	.ascii	"\023:"
	.ascii	"\n0"
	.ascii	"\f-"
	.ascii	"\000E"
	.ascii	"\024!"
	.ascii	"\b?"
	.ascii	"\t\376"
	.ascii	"\036\366"
	.ascii	"\037\374"
	.ascii	"!\377"
	.ascii	"!\007"
	.ascii	"\037\f"
	.ascii	"%\027"
	.ascii	"\037&"
	.ascii	"\024@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"#\356"
	.ascii	"!\347"
	.ascii	"\034\375"
	.ascii	"\030\n"
	.asciz	"\033"
	.ascii	"\"\362"
	.ascii	"4\324"
	.ascii	"'\350"
	.ascii	"\023\021"
	.ascii	"\037\031"
	.ascii	"$\035"
	.ascii	"\030!"
	.ascii	"\"\017"
	.ascii	"\036\024"
	.ascii	"\026I"
	.size	INIT_LAST_P, 1980

	.type	INIT_ONE_P,@object              # @INIT_ONE_P
	.p2align	4, 0x0
INIT_ONE_P:
	.ascii	"\372L"
	.ascii	"\376,"
	.ascii	"\000-"
	.ascii	"\0004"
	.ascii	"\375@"
	.ascii	"\367M"
	.ascii	"\003\030"
	.ascii	"\000*"
	.ascii	"\0000"
	.ascii	"\0007"
	.ascii	"\372B"
	.ascii	"\371#"
	.ascii	"\371*"
	.ascii	"\370-"
	.ascii	"\3730"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\001:"
	.ascii	"\375\035"
	.ascii	"\377$"
	.ascii	"\001&"
	.ascii	"\002+"
	.ascii	"\000F"
	.ascii	"\374\035"
	.ascii	"\005\037"
	.ascii	"\007*"
	.ascii	"\001;"
	.ascii	"\000:"
	.ascii	"\b\005"
	.ascii	"\n\016"
	.ascii	"\016\022"
	.ascii	"\r\033"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\372L"
	.ascii	"\376,"
	.ascii	"\000-"
	.ascii	"\0004"
	.ascii	"\375@"
	.ascii	"\367M"
	.ascii	"\003\030"
	.ascii	"\000*"
	.ascii	"\0000"
	.ascii	"\0007"
	.ascii	"\372B"
	.ascii	"\371#"
	.ascii	"\371*"
	.ascii	"\370-"
	.ascii	"\3730"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\001:"
	.ascii	"\375\035"
	.ascii	"\377$"
	.ascii	"\001&"
	.ascii	"\002+"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\372L"
	.ascii	"\376,"
	.ascii	"\000-"
	.ascii	"\0004"
	.ascii	"\375@"
	.ascii	"\367M"
	.ascii	"\003\030"
	.ascii	"\000*"
	.ascii	"\0000"
	.ascii	"\0007"
	.ascii	"\372B"
	.ascii	"\371#"
	.ascii	"\371*"
	.ascii	"\370-"
	.ascii	"\3730"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\001:"
	.ascii	"\375\035"
	.ascii	"\377$"
	.ascii	"\001&"
	.ascii	"\002+"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\351p"
	.ascii	"\361G"
	.ascii	"\371="
	.ascii	"\0005"
	.ascii	"\373B"
	.ascii	"\353e"
	.ascii	"\375'"
	.ascii	"\3735"
	.ascii	"\371="
	.ascii	"\365K"
	.ascii	"\373G"
	.ascii	"\000\030"
	.ascii	"\377$"
	.ascii	"\376*"
	.ascii	"\3764"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\365L"
	.ascii	"\366,"
	.ascii	"\3664"
	.ascii	"\3669"
	.ascii	"\367:"
	.ascii	"\002B"
	.ascii	"\367\""
	.ascii	"\001 "
	.ascii	"\013\037"
	.ascii	"\0054"
	.ascii	"\0034"
	.ascii	"\007\004"
	.ascii	"\n\b"
	.ascii	"\021\b"
	.ascii	"\020\023"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\351p"
	.ascii	"\361G"
	.ascii	"\371="
	.ascii	"\0005"
	.ascii	"\373B"
	.ascii	"\353e"
	.ascii	"\375'"
	.ascii	"\3735"
	.ascii	"\371="
	.ascii	"\365K"
	.ascii	"\373G"
	.ascii	"\000\030"
	.ascii	"\377$"
	.ascii	"\376*"
	.ascii	"\3764"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\365L"
	.ascii	"\366,"
	.ascii	"\3664"
	.ascii	"\3669"
	.ascii	"\367:"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\351p"
	.ascii	"\361G"
	.ascii	"\371="
	.ascii	"\0005"
	.ascii	"\373B"
	.ascii	"\353e"
	.ascii	"\375'"
	.ascii	"\3735"
	.ascii	"\371="
	.ascii	"\365K"
	.ascii	"\373G"
	.ascii	"\000\030"
	.ascii	"\377$"
	.ascii	"\376*"
	.ascii	"\3764"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\365L"
	.ascii	"\366,"
	.ascii	"\3664"
	.ascii	"\3669"
	.ascii	"\367:"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\350s"
	.ascii	"\352R"
	.ascii	"\367>"
	.ascii	"\0005"
	.ascii	"\000;"
	.ascii	"\353d"
	.ascii	"\3629"
	.ascii	"\364C"
	.ascii	"\365G"
	.ascii	"\366M"
	.ascii	"\367G"
	.ascii	"\371%"
	.ascii	"\370,"
	.ascii	"\3651"
	.ascii	"\3668"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\366R"
	.ascii	"\3700"
	.ascii	"\370="
	.ascii	"\370B"
	.ascii	"\371F"
	.ascii	"\374O"
	.ascii	"\352E"
	.ascii	"\360K"
	.ascii	"\376:"
	.ascii	"\001:"
	.ascii	"\363Q"
	.ascii	"\372&"
	.ascii	"\363>"
	.ascii	"\372:"
	.ascii	"\376;"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\350s"
	.ascii	"\352R"
	.ascii	"\367>"
	.ascii	"\0005"
	.ascii	"\000;"
	.ascii	"\353d"
	.ascii	"\3629"
	.ascii	"\364C"
	.ascii	"\365G"
	.ascii	"\366M"
	.ascii	"\367G"
	.ascii	"\371%"
	.ascii	"\370,"
	.ascii	"\3651"
	.ascii	"\3668"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\366R"
	.ascii	"\3700"
	.ascii	"\370="
	.ascii	"\370B"
	.ascii	"\371F"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\350s"
	.ascii	"\352R"
	.ascii	"\367>"
	.ascii	"\0005"
	.ascii	"\000;"
	.ascii	"\353d"
	.ascii	"\3629"
	.ascii	"\364C"
	.ascii	"\365G"
	.ascii	"\366M"
	.ascii	"\367G"
	.ascii	"\371%"
	.ascii	"\370,"
	.ascii	"\3651"
	.ascii	"\3668"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\366R"
	.ascii	"\3700"
	.ascii	"\370="
	.ascii	"\370B"
	.ascii	"\371F"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_ONE_P, 660

	.type	INIT_ABS_P,@object              # @INIT_ABS_P
	.p2align	4, 0x0
INIT_ABS_P:
	.ascii	"\376;"
	.ascii	"\374F"
	.ascii	"\374K"
	.ascii	"\370R"
	.ascii	"\357f"
	.ascii	"\372;"
	.ascii	"\371G"
	.ascii	"\364S"
	.ascii	"\365W"
	.ascii	"\342w"
	.ascii	"\3648"
	.ascii	"\372<"
	.ascii	"\373>"
	.ascii	"\370B"
	.ascii	"\370L"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\3727"
	.ascii	"\000:"
	.ascii	"\000@"
	.ascii	"\375J"
	.ascii	"\366Z"
	.ascii	"\376:"
	.ascii	"\375H"
	.ascii	"\375Q"
	.ascii	"\365a"
	.ascii	"\000@"
	.ascii	"\002("
	.ascii	"\000:"
	.ascii	"\375F"
	.ascii	"\372O"
	.ascii	"\370U"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\376;"
	.ascii	"\374F"
	.ascii	"\374K"
	.ascii	"\370R"
	.ascii	"\357f"
	.ascii	"\372;"
	.ascii	"\371G"
	.ascii	"\364S"
	.ascii	"\365W"
	.ascii	"\342w"
	.ascii	"\3648"
	.ascii	"\372<"
	.ascii	"\373>"
	.ascii	"\370B"
	.ascii	"\370L"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\3727"
	.ascii	"\000:"
	.ascii	"\000@"
	.ascii	"\375J"
	.ascii	"\366Z"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\376;"
	.ascii	"\374F"
	.ascii	"\374K"
	.ascii	"\370R"
	.ascii	"\357f"
	.ascii	"\372;"
	.ascii	"\371G"
	.ascii	"\364S"
	.ascii	"\365W"
	.ascii	"\342w"
	.ascii	"\3648"
	.ascii	"\372<"
	.ascii	"\373>"
	.ascii	"\370B"
	.ascii	"\370L"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\3727"
	.ascii	"\000:"
	.ascii	"\000@"
	.ascii	"\375J"
	.ascii	"\366Z"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\365M"
	.ascii	"\367P"
	.ascii	"\367T"
	.ascii	"\366W"
	.ascii	"\336\177"
	.ascii	"\361M"
	.ascii	"\357["
	.ascii	"\347k"
	.ascii	"\347o"
	.ascii	"\344z"
	.ascii	"\3679"
	.ascii	"\372?"
	.ascii	"\374A"
	.ascii	"\374C"
	.ascii	"\371R"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\360H"
	.ascii	"\371E"
	.ascii	"\374E"
	.ascii	"\373J"
	.ascii	"\367V"
	.ascii	"\3767"
	.ascii	"\376C"
	.ascii	"\000I"
	.ascii	"\370Y"
	.ascii	"\000@"
	.ascii	"\003%"
	.ascii	"\377="
	.ascii	"\373I"
	.ascii	"\377F"
	.ascii	"\374N"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\365M"
	.ascii	"\367P"
	.ascii	"\367T"
	.ascii	"\366W"
	.ascii	"\336\177"
	.ascii	"\361M"
	.ascii	"\357["
	.ascii	"\347k"
	.ascii	"\347o"
	.ascii	"\344z"
	.ascii	"\3679"
	.ascii	"\372?"
	.ascii	"\374A"
	.ascii	"\374C"
	.ascii	"\371R"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\360H"
	.ascii	"\371E"
	.ascii	"\374E"
	.ascii	"\373J"
	.ascii	"\367V"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\365M"
	.ascii	"\367P"
	.ascii	"\367T"
	.ascii	"\366W"
	.ascii	"\336\177"
	.ascii	"\361M"
	.ascii	"\357["
	.ascii	"\347k"
	.ascii	"\347o"
	.ascii	"\344z"
	.ascii	"\3679"
	.ascii	"\372?"
	.ascii	"\374A"
	.ascii	"\374C"
	.ascii	"\371R"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\360H"
	.ascii	"\371E"
	.ascii	"\374E"
	.ascii	"\373J"
	.ascii	"\367V"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\362U"
	.ascii	"\363Y"
	.ascii	"\363^"
	.ascii	"\365\\"
	.ascii	"\343\177"
	.ascii	"\353U"
	.ascii	"\360X"
	.ascii	"\351h"
	.ascii	"\361b"
	.ascii	"\333\177"
	.ascii	"\364;"
	.ascii	"\370?"
	.ascii	"\367C"
	.ascii	"\372D"
	.ascii	"\366O"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\362K"
	.ascii	"\366O"
	.ascii	"\367S"
	.ascii	"\364\\"
	.ascii	"\356l"
	.ascii	"\363N"
	.ascii	"\367S"
	.ascii	"\374Q"
	.ascii	"\363c"
	.ascii	"\000@"
	.ascii	"\360I"
	.ascii	"\366L"
	.ascii	"\363V"
	.ascii	"\367S"
	.ascii	"\366W"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\362U"
	.ascii	"\363Y"
	.ascii	"\363^"
	.ascii	"\365\\"
	.ascii	"\343\177"
	.ascii	"\353U"
	.ascii	"\360X"
	.ascii	"\351h"
	.ascii	"\361b"
	.ascii	"\333\177"
	.ascii	"\364;"
	.ascii	"\370?"
	.ascii	"\367C"
	.ascii	"\372D"
	.ascii	"\366O"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\362K"
	.ascii	"\366O"
	.ascii	"\367S"
	.ascii	"\364\\"
	.ascii	"\356l"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\362U"
	.ascii	"\363Y"
	.ascii	"\363^"
	.ascii	"\365\\"
	.ascii	"\343\177"
	.ascii	"\353U"
	.ascii	"\360X"
	.ascii	"\351h"
	.ascii	"\361b"
	.ascii	"\333\177"
	.ascii	"\364;"
	.ascii	"\370?"
	.ascii	"\367C"
	.ascii	"\372D"
	.ascii	"\366O"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\362K"
	.ascii	"\366O"
	.ascii	"\367S"
	.ascii	"\364\\"
	.ascii	"\356l"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.ascii	"\000@"
	.size	INIT_ABS_P, 660

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
