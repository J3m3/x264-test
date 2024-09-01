	.text
	.file	"errorconcealment.c"
	.globl	set_ec_flag                     # -- Begin function set_ec_flag
	.p2align	4, 0x90
	.type	set_ec_flag,@function
set_ec_flag:                            # @set_ec_flag
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$17, %esi
	ja	.LBB0_20
# %bb.1:                                # %entry
	movl	%esi, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_2:                                # %sw.bb
	movl	$1, 856528(%rdi)
.LBB0_3:                                # %sw.bb1
	movl	$1, 856532(%rdi)
.LBB0_4:                                # %sw.bb4
	movl	$1, 856536(%rdi)
.LBB0_5:                                # %sw.bb7
	movl	$1, 856540(%rdi)
.LBB0_6:                                # %sw.bb33.sink.split
	movl	$1, 856548(%rdi)
.LBB0_7:                                # %sw.bb33
	movl	$1, 856572(%rdi)
.LBB0_8:                                # %sw.bb36
	movl	$1, 856576(%rdi)
.LBB0_9:                                # %sw.bb39
	movl	$1, 856580(%rdi)
.LBB0_10:                               # %sw.bb42
	movl	$1, 856584(%rdi)
.LBB0_11:                               # %sw.bb45
	movl	$1, 856588(%rdi)
	movl	$1, %eax
	retq
.LBB0_18:                               # %sw.bb48
	movl	$1, 856592(%rdi)
	movl	$1, %eax
	retq
.LBB0_12:                               # %sw.epilog.thread76
	movl	$1, 856544(%rdi)
.LBB0_13:                               # %sw.bb18
	movl	$1, 856552(%rdi)
.LBB0_14:                               # %sw.bb21
	movl	$1, 856556(%rdi)
.LBB0_15:                               # %sw.bb24
	movl	$1, 856560(%rdi)
.LBB0_16:                               # %sw.bb27
	movl	$1, 856564(%rdi)
.LBB0_17:                               # %sw.bb30
	movl	$1, 856568(%rdi)
	movl	$1, %eax
	retq
.LBB0_19:                               # %sw.bb51
	movl	$1, 856596(%rdi)
.LBB0_20:                               # %sw.epilog55
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	set_ec_flag, .Lfunc_end0-set_ec_flag
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_12
	.quad	.LBB0_6
	.quad	.LBB0_13
	.quad	.LBB0_14
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_18
	.quad	.LBB0_19
                                        # -- End function
	.text
	.globl	reset_ec_flags                  # -- Begin function reset_ec_flags
	.p2align	4, 0x90
	.type	reset_ec_flags,@function
reset_ec_flags:                         # @reset_ec_flags
	.cfi_startproc
# %bb.0:                                # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 856592(%rdi)
	movups	%xmm0, 856576(%rdi)
	movups	%xmm0, 856560(%rdi)
	movups	%xmm0, 856544(%rdi)
	movups	%xmm0, 856528(%rdi)
	retq
.Lfunc_end1:
	.size	reset_ec_flags, .Lfunc_end1-reset_ec_flags
	.cfi_endproc
                                        # -- End function
	.globl	get_concealed_element           # -- Begin function get_concealed_element
	.p2align	4, 0x90
	.type	get_concealed_element,@function
get_concealed_element:                  # @get_concealed_element
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	(%rsi), %rcx
	cmpl	$0, 856528(%rdi,%rcx,4)
	je	.LBB2_1
# %bb.2:                                # %if.end
	movl	$1, %eax
	cmpl	$17, %ecx
	ja	.LBB2_4
# %bb.3:                                # %switch.lookup
	movl	.Lswitch.table.get_concealed_element(,%rcx,4), %ecx
	movl	%ecx, 12(%rsi)
	movl	$0, 16(%rsi)
.LBB2_4:                                # %return
	retq
.LBB2_1:
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	get_concealed_element, .Lfunc_end2-get_concealed_element
	.cfi_endproc
                                        # -- End function
	.type	.Lswitch.table.get_concealed_element,@object # @switch.table.get_concealed_element
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.get_concealed_element:
	.long	31                              # 0x1f
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.size	.Lswitch.table.get_concealed_element, 72

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
