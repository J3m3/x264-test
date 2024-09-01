	.text
	.file	"biaridecod.c"
	.globl	arideco_create_decoding_environment # -- Begin function arideco_create_decoding_environment
	.p2align	4, 0x90
	.type	arideco_create_decoding_environment,@function
arideco_create_decoding_environment:    # @arideco_create_decoding_environment
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$1, %edi
	movl	$32, %esi
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
	.size	arideco_create_decoding_environment, .Lfunc_end0-arideco_create_decoding_environment
	.cfi_endproc
                                        # -- End function
	.globl	arideco_delete_decoding_environment # -- Begin function arideco_delete_decoding_environment
	.p2align	4, 0x90
	.type	arideco_delete_decoding_environment,@function
arideco_delete_decoding_environment:    # @arideco_delete_decoding_environment
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jne	free@PLT                        # TAILCALL
# %bb.1:                                # %if.then
	movups	.L.str.1+16(%rip), %xmm0
	movq	errortext@GOTPCREL(%rip), %rdi
	movaps	%xmm0, 16(%rdi)
	movups	.L.str.1(%rip), %xmm0
	movaps	%xmm0, (%rdi)
	movb	$0, 32(%rdi)
	movl	$200, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end1:
	.size	arideco_delete_decoding_environment, .Lfunc_end1-arideco_delete_decoding_environment
	.cfi_endproc
                                        # -- End function
	.globl	arideco_done_decoding           # -- Begin function arideco_done_decoding
	.p2align	4, 0x90
	.type	arideco_done_decoding,@function
arideco_done_decoding:                  # @arideco_done_decoding
	.cfi_startproc
# %bb.0:                                # %entry
	movq	24(%rdi), %rax
	incl	(%rax)
	retq
.Lfunc_end2:
	.size	arideco_done_decoding, .Lfunc_end2-arideco_done_decoding
	.cfi_endproc
                                        # -- End function
	.globl	getbyte                         # -- Begin function getbyte
	.p2align	4, 0x90
	.type	getbyte,@function
getbyte:                                # @getbyte
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16(%rdi), %rax
	movq	24(%rdi), %rcx
	movslq	(%rcx), %rdx
	leal	1(%rdx), %esi
	movl	%esi, (%rcx)
	movzbl	(%rax,%rdx), %eax
	retq
.Lfunc_end3:
	.size	getbyte, .Lfunc_end3-getbyte
	.cfi_endproc
                                        # -- End function
	.globl	getword                         # -- Begin function getword
	.p2align	4, 0x90
	.type	getword,@function
getword:                                # @getword
	.cfi_startproc
# %bb.0:                                # %entry
	movq	24(%rdi), %rax
	movslq	(%rax), %rcx
	leal	2(%rcx), %edx
	movl	%edx, (%rax)
	movq	16(%rdi), %rax
	movzwl	(%rax,%rcx), %eax
	rolw	$8, %ax
	movzwl	%ax, %eax
	retq
.Lfunc_end4:
	.size	getword, .Lfunc_end4-getword
	.cfi_endproc
                                        # -- End function
	.globl	arideco_start_decoding          # -- Begin function arideco_start_decoding
	.p2align	4, 0x90
	.type	arideco_start_decoding,@function
arideco_start_decoding:                 # @arideco_start_decoding
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rsi, 16(%rdi)
	movq	%rcx, 24(%rdi)
	movl	%edx, (%rcx)
	movq	16(%rdi), %rax
	movq	24(%rdi), %rcx
	movslq	(%rcx), %rdx
	leal	1(%rdx), %esi
	movl	%esi, (%rcx)
	movzbl	(%rax,%rdx), %eax
	movl	%eax, 4(%rdi)
	shll	$16, %eax
	movq	24(%rdi), %rcx
	movslq	(%rcx), %rdx
	leal	2(%rdx), %esi
	movl	%esi, (%rcx)
	movq	16(%rdi), %rcx
	movzbl	(%rcx,%rdx), %esi
	shll	$8, %esi
	movzbl	1(%rcx,%rdx), %ecx
	orl	%eax, %ecx
	orl	%esi, %ecx
	movl	%ecx, 4(%rdi)
	movl	$15, 8(%rdi)
	movl	$510, (%rdi)                    # imm = 0x1FE
	retq
.Lfunc_end5:
	.size	arideco_start_decoding, .Lfunc_end5-arideco_start_decoding
	.cfi_endproc
                                        # -- End function
	.globl	arideco_bits_read               # -- Begin function arideco_bits_read
	.p2align	4, 0x90
	.type	arideco_bits_read,@function
arideco_bits_read:                      # @arideco_bits_read
	.cfi_startproc
# %bb.0:                                # %entry
	movq	24(%rdi), %rax
	movl	(%rax), %eax
	shll	$3, %eax
	subl	8(%rdi), %eax
	retq
.Lfunc_end6:
	.size	arideco_bits_read, .Lfunc_end6-arideco_bits_read
	.cfi_endproc
                                        # -- End function
	.globl	biari_decode_symbol             # -- Begin function biari_decode_symbol
	.p2align	4, 0x90
	.type	biari_decode_symbol,@function
biari_decode_symbol:                    # @biari_decode_symbol
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	2(%rsi), %eax
	movzwl	(%rsi), %ecx
	movl	(%rdi), %r10d
	movl	4(%rdi), %r8d
	movl	%r10d, %edx
	shrl	$6, %edx
	andl	$3, %edx
	leal	(%rdx,%rcx,4), %ecx
	movzbl	rLPS_table_64x4(%rcx), %r9d
	subl	%r9d, %r10d
	movl	%r10d, (%rdi)
	movl	8(%rdi), %edx
	movl	%edx, %ecx
	shll	%cl, %r10d
	subl	%r10d, %r8d
	jae	.LBB7_3
# %bb.1:                                # %if.then
	movzwl	(%rsi), %ecx
	movzbl	AC_next_state_MPS_64(%rcx), %ecx
	movw	%cx, (%rsi)
	movl	(%rdi), %ecx
	cmpl	$255, %ecx
	ja	.LBB7_8
# %bb.2:                                # %if.else
	addl	%ecx, %ecx
	movl	%ecx, (%rdi)
	movl	8(%rdi), %ecx
	decl	%ecx
	movl	%ecx, 8(%rdi)
	testl	%ecx, %ecx
	jg	.LBB7_8
	jmp	.LBB7_7
.LBB7_3:                                # %if.else14
	movl	%r9d, %ecx
	shrl	$3, %ecx
	movzbl	renorm_table_32(%rcx), %ecx
	movl	%r8d, 4(%rdi)
	shll	%cl, %r9d
	movl	%r9d, (%rdi)
	subl	%ecx, %edx
	movl	%edx, 8(%rdi)
	movzwl	(%rsi), %ecx
	testq	%rcx, %rcx
	jne	.LBB7_5
# %bb.4:                                # %if.then25
	xorb	$1, 2(%rsi)
.LBB7_5:                                # %if.end30
	xorl	$1, %eax
	movzbl	AC_next_state_LPS_64(%rcx), %ecx
	movw	%cx, (%rsi)
	movl	8(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB7_7
.LBB7_8:                                # %cleanup
	retq
.LBB7_7:                                # %if.else38
	shll	$16, 4(%rdi)
	movq	24(%rdi), %rcx
	movslq	(%rcx), %rdx
	leal	2(%rdx), %esi
	movl	%esi, (%rcx)
	movq	16(%rdi), %rcx
	movzwl	(%rcx,%rdx), %ecx
	rolw	$8, %cx
	movzwl	%cx, %ecx
	orl	%ecx, 4(%rdi)
	addl	$16, 8(%rdi)
	retq
.Lfunc_end7:
	.size	biari_decode_symbol, .Lfunc_end7-biari_decode_symbol
	.cfi_endproc
                                        # -- End function
	.globl	biari_decode_symbol_eq_prob     # -- Begin function biari_decode_symbol_eq_prob
	.p2align	4, 0x90
	.type	biari_decode_symbol_eq_prob,@function
biari_decode_symbol_eq_prob:            # @biari_decode_symbol_eq_prob
	.cfi_startproc
# %bb.0:                                # %entry
	movl	4(%rdi), %eax
	movl	8(%rdi), %ecx
	decl	%ecx
	movl	%ecx, 8(%rdi)
	je	.LBB8_3
# %bb.1:                                # %if.end
	movl	(%rdi), %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	subl	%edx, %eax
	js	.LBB8_4
.LBB8_2:                                # %if.else
	movl	%eax, 4(%rdi)
	movl	$1, %eax
	retq
.LBB8_3:                                # %if.then
	shll	$16, %eax
	movq	24(%rdi), %rcx
	movslq	(%rcx), %rdx
	leal	2(%rdx), %esi
	movl	%esi, (%rcx)
	movq	16(%rdi), %rcx
	movzbl	(%rcx,%rdx), %esi
	shll	$8, %esi
	movzbl	1(%rcx,%rdx), %edx
	orl	%eax, %edx
	orl	%esi, %edx
	movl	%edx, 4(%rdi)
	movl	$16, 8(%rdi)
	movl	$16, %ecx
	movl	%edx, %eax
	movl	(%rdi), %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	subl	%edx, %eax
	jns	.LBB8_2
.LBB8_4:
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	biari_decode_symbol_eq_prob, .Lfunc_end8-biari_decode_symbol_eq_prob
	.cfi_endproc
                                        # -- End function
	.globl	biari_decode_final              # -- Begin function biari_decode_final
	.p2align	4, 0x90
	.type	biari_decode_final,@function
biari_decode_final:                     # @biari_decode_final
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rdi), %esi
	addl	$-2, %esi
	movl	8(%rdi), %ecx
	movl	%esi, %r8d
	shll	%cl, %r8d
	movl	4(%rdi), %edx
	movl	$1, %eax
	cmpl	%r8d, %edx
	js	.LBB9_1
.LBB9_3:                                # %cleanup
	retq
.LBB9_1:                                # %if.then
	cmpl	$256, %esi                      # imm = 0x100
	jb	.LBB9_4
# %bb.2:                                # %if.then3
	movl	%esi, (%rdi)
	xorl	%eax, %eax
	retq
.LBB9_4:                                # %if.else
	addl	%esi, %esi
	movl	%esi, (%rdi)
	leal	-1(%rcx), %eax
	movl	%eax, 8(%rdi)
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jg	.LBB9_3
# %bb.5:                                # %if.else10
	shll	$16, %edx
	movq	24(%rdi), %rcx
	movslq	(%rcx), %rsi
	leal	2(%rsi), %r8d
	movl	%r8d, (%rcx)
	movq	16(%rdi), %rcx
	movzbl	(%rcx,%rsi), %r8d
	shll	$8, %r8d
	movzbl	1(%rcx,%rsi), %ecx
	orl	%edx, %ecx
	orl	%r8d, %ecx
	movl	%ecx, 4(%rdi)
	movl	$16, 8(%rdi)
	retq
.Lfunc_end9:
	.size	biari_decode_final, .Lfunc_end9-biari_decode_final
	.cfi_endproc
                                        # -- End function
	.globl	biari_init_context              # -- Begin function biari_init_context
	.p2align	4, 0x90
	.type	biari_init_context,@function
biari_init_context:                     # @biari_init_context
	.cfi_startproc
# %bb.0:                                # %entry
	movsbl	(%rdx), %eax
	imull	%edi, %eax
	sarl	$4, %eax
	movsbl	1(%rdx), %ecx
	addl	%eax, %ecx
	cmpl	$64, %ecx
	jl	.LBB10_2
# %bb.1:                                # %if.then
	cmpl	$126, %ecx
	movl	$126, %eax
	cmovbl	%ecx, %eax
	addl	$-64, %eax
	movb	$1, %cl
	movw	%ax, (%rsi)
	movb	%cl, 2(%rsi)
	retq
.LBB10_2:                               # %if.else
	cmpl	$2, %ecx
	movl	$1, %edx
	cmovgel	%ecx, %edx
	movl	$63, %eax
	subl	%edx, %eax
	xorl	%ecx, %ecx
	movw	%ax, (%rsi)
	movb	%cl, 2(%rsi)
	retq
.Lfunc_end10:
	.size	biari_init_context, .Lfunc_end10-biari_init_context
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"arideco_create_decoding_environment: dep"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error freeing dep (NULL pointer)"
	.size	.L.str.1, 33

	.type	rLPS_table_64x4,@object         # @rLPS_table_64x4
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
rLPS_table_64x4:
	.ascii	"\200\260\320\360"
	.ascii	"\200\247\305\343"
	.ascii	"\200\236\273\330"
	.ascii	"{\226\262\315"
	.ascii	"t\216\251\303"
	.ascii	"o\207\240\271"
	.ascii	"i\200\230\257"
	.ascii	"dz\220\246"
	.ascii	"_t\211\236"
	.ascii	"Zn\202\226"
	.ascii	"Uh{\216"
	.ascii	"Qcu\207"
	.ascii	"M^o\200"
	.ascii	"IYiz"
	.ascii	"EUdt"
	.ascii	"BP_n"
	.ascii	">LZh"
	.ascii	";HVc"
	.ascii	"8EQ^"
	.ascii	"5AMY"
	.ascii	"3>IU"
	.ascii	"0;EP"
	.ascii	".8BL"
	.ascii	"+5?H"
	.ascii	")2;E"
	.ascii	"'08A"
	.ascii	"%-6>"
	.ascii	"#+3;"
	.ascii	"!)08"
	.ascii	" '.5"
	.ascii	"\036%+2"
	.ascii	"\035#)0"
	.ascii	"\033!'-"
	.ascii	"\032\037%+"
	.ascii	"\030\036#)"
	.ascii	"\027\034!'"
	.ascii	"\026\033 %"
	.ascii	"\025\032\036#"
	.ascii	"\024\030\035!"
	.ascii	"\023\027\033\037"
	.ascii	"\022\026\032\036"
	.ascii	"\021\025\031\034"
	.ascii	"\020\024\027\033"
	.ascii	"\017\023\026\031"
	.ascii	"\016\022\025\030"
	.ascii	"\016\021\024\027"
	.ascii	"\r\020\023\026"
	.ascii	"\f\017\022\025"
	.ascii	"\f\016\021\024"
	.ascii	"\013\016\020\023"
	.ascii	"\013\r\017\022"
	.ascii	"\n\f\017\021"
	.ascii	"\n\f\016\020"
	.ascii	"\t\013\r\017"
	.ascii	"\t\013\f\016"
	.ascii	"\b\n\f\016"
	.ascii	"\b\t\013\r"
	.ascii	"\007\t\013\f"
	.ascii	"\007\t\n\f"
	.ascii	"\007\b\n\013"
	.ascii	"\006\b\t\013"
	.ascii	"\006\007\t\n"
	.ascii	"\006\007\b\t"
	.zero	4,2
	.size	rLPS_table_64x4, 256

	.type	AC_next_state_MPS_64,@object    # @AC_next_state_MPS_64
	.p2align	4, 0x0
AC_next_state_MPS_64:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>>?"
	.size	AC_next_state_MPS_64, 64

	.type	renorm_table_32,@object         # @renorm_table_32
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
renorm_table_32:
	.ascii	"\006\005\004\004\003\003\003\003\002\002\002\002\002\002\002\002\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.size	renorm_table_32, 32

	.type	AC_next_state_LPS_64,@object    # @AC_next_state_LPS_64
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
AC_next_state_LPS_64:
	.ascii	"\000\000\001\002\002\004\004\005\006\007\b\t\t\013\013\f\r\r\017\017\020\020\022\022\023\023\025\025\026\026\027\030\030\031\032\032\033\033\034\035\035\036\036\036\037  !!!\"\"###$$$%%%&&?"
	.size	AC_next_state_LPS_64, 64

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
