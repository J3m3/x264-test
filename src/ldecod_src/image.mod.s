	.text
	.file	"image.c"
	.globl	init_all_macroblocks            # -- Begin function init_all_macroblocks
	.p2align	4, 0x90
	.type	init_all_macroblocks,@function
init_all_macroblocks:                   # @init_all_macroblocks
	.cfi_startproc
# %bb.0:                                # %entry
	movl	68(%rdi), %eax
	imull	64(%rdi), %eax
	cmpl	$16, %eax
	jl	.LBB0_3
# %bb.1:                                # %for.body.preheader
	movq	152(%rdi), %rax
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movw	$-1, 24(%rax)
	movl	68(%rdi), %edx
	imull	64(%rdi), %edx
	incl	%ecx
	sarl	$4, %edx
	addq	$32, %rax
	cmpl	%edx, %ecx
	jl	.LBB0_2
.LBB0_3:                                # %for.end
	retq
.Lfunc_end0:
	.size	init_all_macroblocks, .Lfunc_end0-init_all_macroblocks
	.cfi_endproc
                                        # -- End function
	.globl	init_slice                      # -- Begin function init_slice
	.p2align	4, 0x90
	.type	init_slice,@function
init_slice:                             # @init_slice
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
	movq	24(%rsi), %rax
	movq	%rax, 16(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	%rsi, %rdi
	callq	*13464(%rsi)
	cmpl	$1, 32(%rbx)
	ja	.LBB1_2
# %bb.1:                                # %if.then
	movl	104(%rbx), %esi
	movq	%rbx, %rdi
	callq	reorder_lists_mvc@PLT
	movq	13320(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_2:                                # %if.else
	movq	%rbx, %rdi
	callq	reorder_lists
	movq	13320(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_5
.LBB1_4:                                # %if.then5
	callq	free@PLT
	movq	$0, 13320(%rbx)
.LBB1_5:                                # %if.end8
	movq	13328(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_7
# %bb.6:                                # %if.then10
	callq	free@PLT
	movq	$0, 13328(%rbx)
.LBB1_7:                                # %if.end13
	cmpl	$0, 184(%rbx)
	je	.LBB1_8
# %bb.9:                                # %if.end16
	movl	220(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB1_10
	jmp	.LBB1_11
.LBB1_8:                                # %if.then15
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	init_mbaff_lists@PLT
	movl	220(%rbx), %eax
	testl	%eax, %eax
	je	.LBB1_11
.LBB1_10:                               # %land.lhs.true
	movl	851864(%r14), %ecx
	cmpl	172(%rbx), %ecx
	je	.LBB1_12
.LBB1_11:                               # %if.then19
	movups	13340(%rbx), %xmm0
	movups	13356(%rbx), %xmm1
	movups	13372(%rbx), %xmm2
	movups	13388(%rbx), %xmm3
	movups	%xmm0, 13344(%rbx)
	movups	%xmm1, 13360(%rbx)
	movups	%xmm2, 13376(%rbx)
	movups	%xmm3, 13392(%rbx)
.LBB1_12:                               # %if.end24
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	851868(%r14,%rcx,4), %eax
	movl	%eax, 13340(%rbx)
	movq	24(%rbx), %rax
	movl	36(%rax), %edx
	movq	linfo_cbp_inter_other@GOTPCREL(%rip), %rax
	movq	linfo_cbp_intra_other@GOTPCREL(%rip), %rcx
	testl	%edx, %edx
	je	.LBB1_15
# %bb.13:                               # %if.end24
	cmpl	$3, %edx
	je	.LBB1_15
# %bb.14:                               # %if.else36
	movq	linfo_cbp_inter_normal@GOTPCREL(%rip), %rax
	movq	linfo_cbp_intra_normal@GOTPCREL(%rip), %rcx
.LBB1_15:                               # %if.end39
	movq	%rcx, 13480(%rbx)
	movq	%rax, 13488(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	init_slice, .Lfunc_end1-init_slice
	.cfi_endproc
                                        # -- End function
	.globl	reorder_lists                   # -- Begin function reorder_lists
	.p2align	4, 0x90
	.type	reorder_lists,@function
reorder_lists:                          # @reorder_lists
	.cfi_startproc
# %bb.0:                                # %entry
	movl	164(%rdi), %eax
	cmpl	$2, %eax
	je	free_ref_pic_list_reordering_buffer@PLT # TAILCALL
# %bb.1:                                # %entry
	cmpl	$4, %eax
	je	free_ref_pic_list_reordering_buffer@PLT # TAILCALL
# %bb.2:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rdi), %r14
	cmpl	$0, 1104(%rdi)
	je	.LBB2_4
# %bb.3:                                # %if.then4
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	reorder_ref_pic_list@PLT
	movq	%rbx, %rdi
.LBB2_4:                                # %if.end
	movq	856488(%r14), %rax
	movq	264(%rdi), %rcx
	movslq	136(%rdi), %rdx
	cmpq	-8(%rcx,%rdx,8), %rax
	je	.LBB2_5
# %bb.9:                                # %if.end17
	movzbl	136(%rdi), %eax
	movb	%al, 256(%rdi)
	cmpl	$1, 164(%rdi)
	je	.LBB2_10
.LBB2_18:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	jmp	free_ref_pic_list_reordering_buffer@PLT # TAILCALL
.LBB2_5:                                # %if.then9
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	cmpl	$0, 848948(%r14)
	je	.LBB2_7
# %bb.6:                                # %if.then11
	movl	$.Lstr, %edi
	callq	puts@PLT
	jmp	.LBB2_8
.LBB2_7:                                # %if.else
	movl	$.L.str.7, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB2_8:                                # %if.end17
	movq	%rbx, %rdi
	movzbl	136(%rdi), %eax
	movb	%al, 256(%rdi)
	cmpl	$1, 164(%rdi)
	jne	.LBB2_18
.LBB2_10:                               # %if.then21
	cmpl	$0, 1108(%rdi)
	je	.LBB2_12
# %bb.11:                               # %if.then25
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	reorder_ref_pic_list@PLT
	movq	%rbx, %rdi
.LBB2_12:                               # %if.end26
	movq	856488(%r14), %rax
	movq	272(%rdi), %rcx
	movslq	140(%rdi), %rdx
	cmpq	-8(%rcx,%rdx,8), %rax
	jne	.LBB2_17
# %bb.13:                               # %if.then37
	movq	%rdi, %rbx
	cmpl	$0, 848948(%r14)
	je	.LBB2_15
# %bb.14:                               # %if.then40
	movl	$.Lstr.51, %edi
	callq	puts@PLT
	jmp	.LBB2_16
.LBB2_15:                               # %if.else42
	movl	$.L.str.9, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB2_16:                               # %if.end44
	movq	%rbx, %rdi
.LBB2_17:                               # %if.end44
	movzbl	140(%rdi), %eax
	movb	%al, 257(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	jmp	free_ref_pic_list_reordering_buffer@PLT # TAILCALL
.Lfunc_end2:
	.size	reorder_lists, .Lfunc_end2-reorder_lists
	.cfi_endproc
                                        # -- End function
	.globl	decode_slice                    # -- Begin function decode_slice
	.p2align	4, 0x90
	.type	decode_slice,@function
decode_slice:                           # @decode_slice
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
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movq	%rdi, %r15
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	16(%rdi), %rcx
	movl	128(%rdi), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	cmpl	$0, 12(%rcx)
	je	.LBB3_2
# %bb.1:                                # %if.then
	movq	%r15, %rdi
	callq	init_contexts@PLT
	movq	%r15, %rdi
	callq	cabac_new_slice@PLT
	movq	16(%r15), %rcx
.LBB3_2:                                # %if.end
	movl	2180(%rcx), %eax
	testl	%eax, %eax
	je	.LBB3_4
# %bb.3:                                # %land.lhs.true
	cmpl	$1, 164(%r15)
	je	.LBB3_6
.LBB3_4:                                # %lor.lhs.false
	cmpl	$0, 2176(%rcx)
	je	.LBB3_90
# %bb.5:                                # %land.lhs.true6
	cmpl	$1, 164(%r15)
	jne	.LBB3_90
.LBB3_6:                                # %if.then.i
	movl	136(%r15), %esi
	movl	140(%r15), %edi
	cmpl	$2, %eax
	jne	.LBB3_9
# %bb.7:                                # %if.then4.i
	movl	$327685, 13276(%r15)            # imm = 0x50005
	movl	$1048592, 13304(%r15)           # imm = 0x100010
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_8:                                # %for.cond6.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	13276(%r15), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movq	13280(%r15), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	%edx, (%rcx)
	movq	13280(%r15), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	%edx, (%rcx)
	movq	13288(%r15), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	$0, (%rcx)
	movq	13288(%r15), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	$0, (%rcx)
	movzbl	13278(%r15), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movq	13280(%r15), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	%edx, 4(%rcx)
	movq	13280(%r15), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	%edx, 4(%rcx)
	movq	13288(%r15), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	$0, 4(%rcx)
	movq	13288(%r15), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	$0, 4(%rcx)
	movzbl	13278(%r15), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movq	13280(%r15), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	%edx, 8(%rcx)
	movq	13280(%r15), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	%edx, 8(%rcx)
	movq	13288(%r15), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	$0, 8(%rcx)
	movq	13288(%r15), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movl	$0, 8(%rcx)
	addq	$8, %rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB3_8
.LBB3_9:                                # %if.end.i
	testl	%esi, %esi
	jle	.LBB3_90
# %bb.10:                               # %for.cond42.preheader.lr.ph.i
	testl	%edi, %edi
	jle	.LBB3_90
# %bb.11:                               # %for.cond42.preheader.us.preheader.i
	movl	$-129, %ecx
	xorl	%r8d, %r8d
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_38:                               # %for.cond42.for.inc235_crit_edge.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	incq	%r8
	cmpq	%rsi, %r8
	je	.LBB3_39
.LBB3_12:                               # %for.cond42.preheader.us.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(,%r8,8), %r9
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	16(%r15), %rax
	movl	2180(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB3_14
	.p2align	4, 0x90
.LBB3_33:                               # %if.then64.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	13280(%r15), %rax
	movq	13296(%r15), %rdx
	movq	(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movl	(%rax,%r11), %eax
	movq	(%rdx), %rdx
	movq	(%rdx,%r8,8), %rdx
	movq	(%rdx,%r10,8), %rdx
	movl	%eax, (%rdx,%r11)
	movq	13280(%r15), %rax
	movq	13296(%r15), %rbx
	movq	8(%rax), %rax
	movq	(%rax,%r10,8), %rax
	movl	(%rax,%r11), %edx
	movq	8(%rbx), %rax
	addq	%r9, %rax
.LBB3_34:                               # %for.inc229.us.sink.split.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	(%rax), %rax
	movq	(%rax,%r10,8), %rax
	movl	%edx, (%rax,%r11)
.LBB3_35:                               # %for.inc229.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	addq	$4, %r11
	cmpq	$12, %r11
	je	.LBB3_36
# %bb.13:                               # %cond.end58.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	16(%r15), %rax
	movl	2180(%rax), %eax
	cmpl	$1, %eax
	je	.LBB3_33
.LBB3_14:                               # %cond.end58.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	cmpl	$2, %eax
	jne	.LBB3_35
# %bb.15:                               # %if.then96.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	264(%r15), %rax
	movq	272(%r15), %rdx
	movq	(%rdx,%r10,8), %rbx
	movl	4(%rbx), %ebp
	movq	(%rax,%r8,8), %rdx
	movl	4(%rdx), %eax
	movl	%ebp, %r12d
	subl	%eax, %r12d
	cmpl	$-127, %r12d
	jl	.LBB3_16
# %bb.17:                               # %if.then96.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	cmpl	$127, %r12d
	jge	.LBB3_18
.LBB3_19:                               # %if.then96.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	cmpl	%eax, %ebp
	jne	.LBB3_20
	jmp	.LBB3_32
.LBB3_16:                               # %if.then96.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$-128, %r12d
	cmpl	$127, %r12d
	jl	.LBB3_19
.LBB3_18:                               # %if.then96.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$127, %r12d
	cmpl	%eax, %ebp
	je	.LBB3_32
.LBB3_20:                               # %lor.lhs.false.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	cmpb	$0, 40(%rbx)
	jne	.LBB3_32
# %bb.21:                               # %lor.lhs.false112.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	cmpb	$0, 40(%rdx)
	je	.LBB3_22
	.p2align	4, 0x90
.LBB3_32:                               # %if.then120.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	13296(%r15), %rax
	movq	(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r10,8), %rax
	movl	$32, (%rax,%r11)
	movq	13296(%r15), %rax
	movq	8(%rax), %rax
	addq	%r9, %rax
	movl	$32, %edx
	jmp	.LBB3_34
.LBB3_36:                               # %for.inc232.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	incq	%r10
	cmpq	%rdi, %r10
	je	.LBB3_38
# %bb.37:                               # %for.cond46.preheader.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	xorl	%r11d, %r11d
	movq	16(%r15), %rax
	movl	2180(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB3_14
	jmp	.LBB3_33
.LBB3_22:                               # %if.else137.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	104(%r15), %ebx
	subl	%eax, %ebx
	cmpl	$-127, %ebx
	jge	.LBB3_24
# %bb.23:                               # %if.else137.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$-128, %ebx
.LBB3_24:                               # %if.else137.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	cmpl	$127, %ebx
	jl	.LBB3_26
# %bb.25:                               # %if.else137.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$127, %ebx
.LBB3_26:                               # %if.else137.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	%r12d, %eax
	shrb	$7, %al
	addb	%r12b, %al
	movl	%eax, %edx
	sarb	%dl
	sarb	$7, %al
	xorb	%al, %dl
	subb	%al, %dl
	movzbl	%dl, %eax
	orl	$16384, %eax                    # imm = 0x4000
                                        # kill: def $ax killed $ax killed $eax
	xorl	%edx, %edx
	idivw	%r12w
	cwtl
	imull	%ebx, %eax
	addl	$32, %eax
	sarl	$6, %eax
	cmpl	$-1023, %eax                    # imm = 0xFC01
	jge	.LBB3_28
# %bb.27:                               # %if.else137.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$-1024, %eax                    # imm = 0xFC00
.LBB3_28:                               # %if.else137.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	cmpl	$1023, %eax                     # imm = 0x3FF
	jl	.LBB3_30
# %bb.29:                               # %if.else137.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$1023, %eax                     # imm = 0x3FF
.LBB3_30:                               # %if.else137.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	sarl	$2, %eax
	movq	13296(%r15), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%r8,8), %rdx
	movq	(%rdx,%r10,8), %rdx
	movl	%eax, (%rdx,%r11)
	movq	13296(%r15), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r10,8), %rax
	movl	$64, %ebx
	subl	(%rax,%r11), %ebx
	movq	(%rdx,%r8,8), %rax
	movq	(%rax,%r10,8), %rax
	movl	%ebx, (%rax,%r11)
	movq	13296(%r15), %rax
	movq	8(%rax), %rdx
	movq	(%rdx,%r8,8), %rdx
	movq	(%rdx,%r10,8), %rdx
	movl	(%rdx,%r11), %edx
	addl	%ecx, %edx
	cmpl	$-194, %edx
	ja	.LBB3_35
# %bb.31:                               # %if.then196.us.i
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r10,8), %rax
	movl	$32, (%rax,%r11)
	movq	13296(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r10,8), %rax
	movl	$32, (%rax,%r11)
	movq	13288(%r15), %rax
	movq	(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movl	$0, (%rax,%r11)
	movq	13288(%r15), %rax
	addq	$8, %rax
	xorl	%edx, %edx
	jmp	.LBB3_34
.LBB3_39:                               # %for.end237.i
	cmpl	$0, 128(%r15)
	je	.LBB3_90
# %bb.40:                               # %for.cond245.preheader.lr.ph.i
	addl	%esi, %esi
	addl	%edi, %edi
	cmpl	$2, %edi
	movl	$1, %eax
	cmovll	%eax, %edi
	cmpl	$2, %esi
	cmovll	%eax, %esi
	movl	$-129, %ecx
	xorl	%r8d, %r8d
	jmp	.LBB3_41
	.p2align	4, 0x90
.LBB3_89:                               # %for.cond245.for.inc533_crit_edge.us.i
                                        #   in Loop: Header=BB3_41 Depth=1
	incq	%r8
	cmpq	%rsi, %r8
	je	.LBB3_90
.LBB3_41:                               # %for.cond245.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_88 Depth 2
                                        #       Child Loop BB3_85 Depth 3
	movl	%r8d, %r9d
	shrl	%r9d
	leaq	(,%r8,8), %r10
	xorl	%r11d, %r11d
	jmp	.LBB3_88
	.p2align	4, 0x90
.LBB3_87:                               # %for.inc530.us.i
                                        #   in Loop: Header=BB3_88 Depth=2
	incq	%r11
	cmpq	%rdi, %r11
	je	.LBB3_89
.LBB3_88:                               # %for.cond250.preheader.us.i
                                        #   Parent Loop BB3_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_85 Depth 3
	movl	%r11d, %r12d
	shrl	%r12d
	xorl	%r13d, %r13d
	jmp	.LBB3_85
	.p2align	4, 0x90
.LBB3_82:                               # %if.then302.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movq	13280(%r15), %rax
	movq	13296(%r15), %rdx
	movq	(%rax), %rax
	movq	(%rax,%r9,8), %rax
	movl	(%rax,%r13), %eax
	movq	32(%rdx), %rdx
	movq	(%rdx,%r8,8), %rdx
	movq	(%rdx,%r11,8), %rdx
	movl	%eax, (%rdx,%r13)
	movq	13280(%r15), %rax
	movq	13296(%r15), %rbx
	movq	8(%rax), %rax
	movq	(%rax,%r12,8), %rax
	movl	(%rax,%r13), %edx
	movq	40(%rbx), %rax
	addq	%r10, %rax
.LBB3_83:                               # %for.inc524.us.1.sink.split.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movq	(%rax), %rax
	movq	(%rax,%r11,8), %rax
	movl	%edx, (%rax,%r13)
.LBB3_84:                               # %for.inc524.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	addq	$4, %r13
	cmpq	$12, %r13
	je	.LBB3_87
.LBB3_85:                               # %for.cond254.preheader.us.i
                                        #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	13288(%r15), %rax
	movq	(%rax), %rdx
	movq	16(%rax), %rax
	movq	(%rdx,%r9,8), %rdx
	movl	(%rdx,%r13), %edx
	movq	(%rax,%r8,8), %rax
	movl	%edx, (%rax,%r13)
	movq	13288(%r15), %rax
	movq	8(%rax), %rdx
	movq	24(%rax), %rax
	movq	(%rdx,%r12,8), %rdx
	movl	(%rdx,%r13), %edx
	movq	(%rax,%r11,8), %rax
	movl	%edx, (%rax,%r13)
	movq	16(%r15), %rax
	movl	2180(%rax), %eax
	cmpl	$1, %eax
	je	.LBB3_60
# %bb.86:                               # %for.cond254.preheader.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	$2, %eax
	jne	.LBB3_62
# %bb.42:                               # %if.then342.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movq	280(%r15), %rax
	movq	288(%r15), %rdx
	movq	(%rdx,%r11,8), %rbp
	movl	4(%rbp), %r14d
	movq	(%rax,%r8,8), %rdx
	movl	4(%rdx), %eax
	movl	%r14d, %ebx
	subl	%eax, %ebx
	cmpl	$-127, %ebx
	jl	.LBB3_43
# %bb.44:                               # %if.then342.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	$127, %ebx
	jge	.LBB3_45
.LBB3_46:                               # %if.then342.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	%eax, %r14d
	jne	.LBB3_47
	jmp	.LBB3_59
	.p2align	4, 0x90
.LBB3_60:                               # %if.then302.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movq	13280(%r15), %rax
	movq	13296(%r15), %rdx
	movq	(%rax), %rax
	movq	(%rax,%r9,8), %rax
	movl	(%rax,%r13), %eax
	movq	16(%rdx), %rdx
	movq	(%rdx,%r8,8), %rdx
	movq	(%rdx,%r11,8), %rdx
	movl	%eax, (%rdx,%r13)
	movq	13280(%r15), %rax
	movq	13296(%r15), %rbx
	movq	8(%rax), %rax
	movq	(%rax,%r12,8), %rax
	movl	(%rax,%r13), %edx
	movq	24(%rbx), %rax
	addq	%r10, %rax
	jmp	.LBB3_61
.LBB3_43:                               # %if.then342.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$-128, %ebx
	cmpl	$127, %ebx
	jl	.LBB3_46
.LBB3_45:                               # %if.then342.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$127, %ebx
	cmpl	%eax, %r14d
	je	.LBB3_59
.LBB3_47:                               # %lor.lhs.false361.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpb	$0, 40(%rbp)
	jne	.LBB3_59
# %bb.48:                               # %lor.lhs.false371.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpb	$0, 40(%rdx)
	je	.LBB3_49
	.p2align	4, 0x90
.LBB3_59:                               # %if.then381.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movq	13296(%r15), %rax
	movq	16(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	$32, (%rax,%r13)
	movq	13296(%r15), %rax
	movq	24(%rax), %rax
	addq	%r10, %rax
	movl	$32, %edx
.LBB3_61:                               # %for.inc524.us.sink.split.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movq	(%rax), %rax
	movq	(%rax,%r11,8), %rax
	movl	%edx, (%rax,%r13)
.LBB3_62:                               # %for.inc524.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movq	13288(%r15), %rax
	movq	(%rax), %rdx
	movq	32(%rax), %rax
	movq	(%rdx,%r9,8), %rdx
	movl	(%rdx,%r13), %edx
	movq	(%rax,%r8,8), %rax
	movl	%edx, (%rax,%r13)
	movq	13288(%r15), %rax
	movq	8(%rax), %rdx
	movq	40(%rax), %rax
	movq	(%rdx,%r12,8), %rdx
	movl	(%rdx,%r13), %edx
	movq	(%rax,%r11,8), %rax
	movl	%edx, (%rax,%r13)
	movq	16(%r15), %rax
	movl	2180(%rax), %eax
	cmpl	$1, %eax
	je	.LBB3_82
# %bb.63:                               # %for.inc524.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	$2, %eax
	jne	.LBB3_84
# %bb.64:                               # %if.then342.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movq	296(%r15), %rax
	movq	304(%r15), %rdx
	movq	(%rdx,%r11,8), %rbp
	movl	4(%rbp), %r14d
	movq	(%rax,%r8,8), %rdx
	movl	4(%rdx), %eax
	movl	%r14d, %ebx
	subl	%eax, %ebx
	cmpl	$-127, %ebx
	jl	.LBB3_65
# %bb.66:                               # %if.then342.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	$127, %ebx
	jge	.LBB3_67
.LBB3_68:                               # %if.then342.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	%eax, %r14d
	jne	.LBB3_69
	jmp	.LBB3_81
.LBB3_65:                               # %if.then342.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$-128, %ebx
	cmpl	$127, %ebx
	jl	.LBB3_68
.LBB3_67:                               # %if.then342.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$127, %ebx
	cmpl	%eax, %r14d
	je	.LBB3_81
.LBB3_69:                               # %lor.lhs.false361.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpb	$0, 40(%rbp)
	jne	.LBB3_81
# %bb.70:                               # %lor.lhs.false371.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpb	$0, 40(%rdx)
	je	.LBB3_71
	.p2align	4, 0x90
.LBB3_81:                               # %if.then381.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movq	13296(%r15), %rax
	movq	32(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	$32, (%rax,%r13)
	movq	13296(%r15), %rax
	movq	40(%rax), %rax
	addq	%r10, %rax
	movl	$32, %edx
	jmp	.LBB3_83
.LBB3_49:                               # %if.else402.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	68(%r15), %ebp
	subl	%eax, %ebp
	cmpl	$-127, %ebp
	jge	.LBB3_51
# %bb.50:                               # %if.else402.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$-128, %ebp
.LBB3_51:                               # %if.else402.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	$127, %ebp
	jl	.LBB3_53
# %bb.52:                               # %if.else402.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$127, %ebp
.LBB3_53:                               # %if.else402.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	%ebx, %eax
	shrb	$7, %al
	addb	%bl, %al
	movl	%eax, %edx
	sarb	%dl
	sarb	$7, %al
	xorb	%al, %dl
	subb	%al, %dl
	movzbl	%dl, %eax
	orl	$16384, %eax                    # imm = 0x4000
                                        # kill: def $ax killed $ax killed $eax
	xorl	%edx, %edx
	idivw	%bx
	cwtl
	imull	%ebp, %eax
	addl	$32, %eax
	sarl	$6, %eax
	cmpl	$-1023, %eax                    # imm = 0xFC01
	jge	.LBB3_55
# %bb.54:                               # %if.else402.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$-1024, %eax                    # imm = 0xFC00
.LBB3_55:                               # %if.else402.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	$1023, %eax                     # imm = 0x3FF
	jl	.LBB3_57
# %bb.56:                               # %if.else402.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$1023, %eax                     # imm = 0x3FF
.LBB3_57:                               # %if.else402.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	sarl	$2, %eax
	movq	13296(%r15), %rdx
	movq	24(%rdx), %rdx
	movq	(%rdx,%r8,8), %rdx
	movq	(%rdx,%r11,8), %rdx
	movl	%eax, (%rdx,%r13)
	movq	13296(%r15), %rax
	movq	16(%rax), %rdx
	movq	24(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	$64, %ebx
	subl	(%rax,%r13), %ebx
	movq	(%rdx,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	%ebx, (%rax,%r13)
	movq	13296(%r15), %rax
	movq	24(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	(%rax,%r13), %edx
	addl	%ecx, %edx
	cmpl	$-194, %edx
	ja	.LBB3_62
# %bb.58:                               # %if.then483.us.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$32, (%rax,%r13)
	movq	13296(%r15), %rax
	movq	16(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	$32, (%rax,%r13)
	movq	13288(%r15), %rax
	movq	16(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movl	$0, (%rax,%r13)
	movq	13288(%r15), %rax
	addq	$24, %rax
	xorl	%edx, %edx
	jmp	.LBB3_61
.LBB3_71:                               # %if.else402.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	72(%r15), %ebp
	subl	%eax, %ebp
	cmpl	$-127, %ebp
	jge	.LBB3_73
# %bb.72:                               # %if.else402.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$-128, %ebp
.LBB3_73:                               # %if.else402.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	$127, %ebp
	jl	.LBB3_75
# %bb.74:                               # %if.else402.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$127, %ebp
.LBB3_75:                               # %if.else402.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	%ebx, %eax
	shrb	$7, %al
	addb	%bl, %al
	movl	%eax, %edx
	sarb	%dl
	sarb	$7, %al
	xorb	%al, %dl
	subb	%al, %dl
	movzbl	%dl, %eax
	orl	$16384, %eax                    # imm = 0x4000
                                        # kill: def $ax killed $ax killed $eax
	xorl	%edx, %edx
	idivw	%bx
	cwtl
	imull	%ebp, %eax
	addl	$32, %eax
	sarl	$6, %eax
	cmpl	$-1023, %eax                    # imm = 0xFC01
	jge	.LBB3_77
# %bb.76:                               # %if.else402.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$-1024, %eax                    # imm = 0xFC00
.LBB3_77:                               # %if.else402.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	cmpl	$1023, %eax                     # imm = 0x3FF
	jl	.LBB3_79
# %bb.78:                               # %if.else402.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$1023, %eax                     # imm = 0x3FF
.LBB3_79:                               # %if.else402.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	sarl	$2, %eax
	movq	13296(%r15), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx,%r8,8), %rdx
	movq	(%rdx,%r11,8), %rdx
	movl	%eax, (%rdx,%r13)
	movq	13296(%r15), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	$64, %ebx
	subl	(%rax,%r13), %ebx
	movq	(%rdx,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	%ebx, (%rax,%r13)
	movq	13296(%r15), %rax
	movq	40(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	(%rax,%r13), %edx
	addl	%ecx, %edx
	cmpl	$-194, %edx
	ja	.LBB3_84
# %bb.80:                               # %if.then483.us.1.i
                                        #   in Loop: Header=BB3_85 Depth=3
	movl	$32, (%rax,%r13)
	movq	13296(%r15), %rax
	movq	32(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movq	(%rax,%r11,8), %rax
	movl	$32, (%rax,%r13)
	movq	13288(%r15), %rax
	movq	32(%rax), %rax
	movq	(%rax,%r8,8), %rax
	movl	$0, (%rax,%r13)
	movq	13288(%r15), %rax
	addq	$40, %rax
	xorl	%edx, %edx
	jmp	.LBB3_83
.LBB3_90:                               # %if.end10
	movl	12(%rsp), %eax                  # 4-byte Reload
	andl	$-2, %eax
	cmpl	$2, %eax
	jne	.LBB3_93
# %bb.91:                               # %land.lhs.true14
	cmpl	$0, 144(%r15)
	je	.LBB3_92
.LBB3_93:                               # %if.end17
	movq	16(%rsp), %r14                  # 8-byte Reload
	cmpl	$0, 856824(%r14)
	je	.LBB3_98
.LBB3_94:                               # %land.lhs.true19
	movl	856856(%r14), %eax
	movq	856456(%r14), %rcx
	movl	44(%rcx), %ecx
	btl	%ecx, %eax
	jae	.LBB3_98
# %bb.95:                               # %if.then21
	movl	8(%rsp), %ecx                   # 4-byte Reload
	incl	%ecx
	cmpl	$0, 849280(%r14)
	je	.LBB3_97
# %bb.96:                               # %if.then23
	movl	216(%r15), %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	movl	%ecx, %ebx
	callq	change_plane_JV@PLT
	movl	%ebx, %ecx
.LBB3_97:                               # %if.end32.sink.split
	movq	13520(%r15), %rsi
	movl	188(%r15), %edx
	imull	%ecx, %edx
	imull	192(%r15), %ecx
	movq	%r14, %rdi
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
	jmp	DeblockPicturePartially@PLT     # TAILCALL
.LBB3_92:                               # %if.then16
	.cfi_def_cfa_offset 80
	movq	%r15, %rdi
	callq	decode_one_slice
	movq	16(%rsp), %r14                  # 8-byte Reload
	cmpl	$0, 856824(%r14)
	jne	.LBB3_94
.LBB3_98:                               # %if.end32
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
.Lfunc_end3:
	.size	decode_slice, .Lfunc_end3-decode_slice
	.cfi_endproc
                                        # -- End function
	.globl	decode_one_slice                # -- Begin function decode_one_slice
	.p2align	4, 0x90
	.type	decode_one_slice,@function
decode_one_slice:                       # @decode_one_slice
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
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movq	$0, (%rsp)
	movl	$-1, 120(%rdi)
	cmpl	$0, 849280(%r14)
	je	.LBB4_2
# %bb.1:                                # %if.then
	movl	216(%rbx), %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	change_plane_JV@PLT
	movl	164(%rbx), %esi
	cmpl	$1, %esi
	jne	.LBB4_5
.LBB4_4:                                # %if.then8
	leaq	264(%rbx), %rsi
	movq	%rbx, %rdi
	callq	compute_colocated@PLT
	movl	164(%rbx), %esi
.LBB4_5:                                # %if.end9
	cmpl	$2, %esi
	je	.LBB4_60
# %bb.6:                                # %if.end9
	cmpl	$4, %esi
	je	.LBB4_60
# %bb.7:                                # %if.then14
	cmpl	$0, 849280(%r14)
	movq	856488(%r14), %rax
	movl	76(%rbx), %ecx
	movl	849276(%r14), %edx
	je	.LBB4_51
# %bb.8:                                # %if.then.i
	cmpl	$0, 216(%rbx)
	je	.LBB4_9
.LBB4_60:                               # %if.end15
	movq	%rsp, %r14
	jmp	.LBB4_61
	.p2align	4, 0x90
.LBB4_62:                               #   in Loop: Header=BB4_61 Depth=1
	movb	$1, %al
.LBB4_66:                               # %lor.end
                                        #   in Loop: Header=BB4_61 Depth=1
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	exit_macroblock@PLT
	testl	%eax, %eax
	jne	.LBB4_67
.LBB4_61:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	start_macroblock@PLT
	movq	(%rsp), %rdi
	callq	*13448(%rbx)
	movq	(%rsp), %rdi
	movq	13520(%rbx), %rsi
	callq	decode_one_macroblock@PLT
	cmpl	$0, 128(%rbx)
	je	.LBB4_62
# %bb.63:                               # %land.lhs.true18
                                        #   in Loop: Header=BB4_61 Depth=1
	movq	(%rsp), %rax
	cmpl	$0, 384(%rax)
	je	.LBB4_65
# %bb.64:                               # %if.then20
                                        #   in Loop: Header=BB4_61 Depth=1
	movq	136(%rbx), %xmm0                # xmm0 = mem[0],zero
	psrad	$1, %xmm0
	movq	%xmm0, 136(%rbx)
.LBB4_65:                               # %lor.rhs
                                        #   in Loop: Header=BB4_61 Depth=1
	movzbl	108(%rbx), %eax
	andb	$1, %al
	jmp	.LBB4_66
.LBB4_67:                               # %while.end
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB4_2:                                # %if.else
	.cfi_def_cfa_offset 32
	movq	848888(%r14), %rax
	movq	%rax, 13512(%rbx)
	movq	856456(%r14), %rax
	movq	%rax, 13520(%rbx)
	movq	848840(%r14), %rax
	movq	%rax, 13528(%rbx)
	movq	848800(%r14), %rax
	movq	%rax, 13536(%rbx)
	movq	848744(%r14), %rax
	movq	%rax, 13544(%rbx)
	movl	164(%rbx), %esi
	cmpl	$1, %esi
	je	.LBB4_4
	jmp	.LBB4_5
.LBB4_51:                               # %if.else.i
	xorl	%edi, %edi
	cmpl	$1, %esi
	sete	%dil
	incq	%rdi
	cmpl	$0, 128(%rbx)
	movl	$6, %esi
	cmoveq	%rdi, %rsi
	xorl	%edi, %edi
	jmp	.LBB4_52
	.p2align	4, 0x90
.LBB4_59:                               # %for.inc57.i
                                        #   in Loop: Header=BB4_52 Depth=1
	incq	%rdi
	cmpq	%rsi, %rdi
	je	.LBB4_60
.LBB4_52:                               # %for.cond32.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_53 Depth 2
	xorl	%r8d, %r8d
	jmp	.LBB4_53
	.p2align	4, 0x90
.LBB4_58:                               # %if.end53.i.1
                                        #   in Loop: Header=BB4_53 Depth=2
	addq	$2, %r8
.LBB4_53:                               # %for.body35.i
                                        #   Parent Loop BB4_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	264(%rbx,%rdi,8), %r9
	movq	(%r9,%r8,8), %r9
	testq	%r9, %r9
	je	.LBB4_55
# %bb.54:                               # %if.then43.i
                                        #   in Loop: Header=BB4_53 Depth=2
	cmpl	%edx, %ecx
	setl	%r10b
	cmpq	%rax, %r9
	sete	%r11b
	andb	%r10b, %r11b
	movzbl	%r11b, %r10d
	movl	%r10d, 384(%r9)
	movq	128(%r9), %r10
	movq	%r10, 376(%r9)
.LBB4_55:                               # %if.end53.i
                                        #   in Loop: Header=BB4_53 Depth=2
	cmpq	$32, %r8
	je	.LBB4_59
# %bb.56:                               # %for.body35.i.1
                                        #   in Loop: Header=BB4_53 Depth=2
	movq	264(%rbx,%rdi,8), %r9
	movq	8(%r9,%r8,8), %r9
	testq	%r9, %r9
	je	.LBB4_58
# %bb.57:                               # %if.then43.i.1
                                        #   in Loop: Header=BB4_53 Depth=2
	cmpl	%edx, %ecx
	setl	%r10b
	cmpq	%rax, %r9
	sete	%r11b
	andb	%r10b, %r11b
	movzbl	%r11b, %r10d
	movl	%r10d, 384(%r9)
	movq	128(%r9), %r10
	movq	%r10, 376(%r9)
	jmp	.LBB4_58
.LBB4_9:                                # %for.cond.preheader.i
	xorl	%esi, %esi
	jmp	.LBB4_10
	.p2align	4, 0x90
.LBB4_15:                               # %if.end.i.1
                                        #   in Loop: Header=BB4_10 Depth=1
	addq	$2, %rsi
.LBB4_10:                               # %for.body7.i
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rdi
	movq	(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_12
# %bb.11:                               # %if.then10.i
                                        #   in Loop: Header=BB4_10 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
.LBB4_12:                               # %if.end.i
                                        #   in Loop: Header=BB4_10 Depth=1
	cmpq	$32, %rsi
	je	.LBB4_16
# %bb.13:                               # %for.body7.i.1
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	264(%rbx), %rdi
	movq	8(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_15
# %bb.14:                               # %if.then10.i.1
                                        #   in Loop: Header=BB4_10 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
	jmp	.LBB4_15
.LBB4_16:                               # %for.inc14.i
	xorl	%esi, %esi
	jmp	.LBB4_17
	.p2align	4, 0x90
.LBB4_22:                               # %if.end.1.i.1
                                        #   in Loop: Header=BB4_17 Depth=1
	addq	$2, %rsi
.LBB4_17:                               # %for.body7.1.i
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rbx), %rdi
	movq	(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_19
# %bb.18:                               # %if.then10.1.i
                                        #   in Loop: Header=BB4_17 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
.LBB4_19:                               # %if.end.1.i
                                        #   in Loop: Header=BB4_17 Depth=1
	cmpq	$32, %rsi
	je	.LBB4_23
# %bb.20:                               # %for.body7.1.i.1
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	272(%rbx), %rdi
	movq	8(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_22
# %bb.21:                               # %if.then10.1.i.1
                                        #   in Loop: Header=BB4_17 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
	jmp	.LBB4_22
.LBB4_23:                               # %for.inc14.1.i
	xorl	%esi, %esi
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_29:                               # %if.end.2.i.1
                                        #   in Loop: Header=BB4_24 Depth=1
	addq	$2, %rsi
.LBB4_24:                               # %for.body7.2.i
                                        # =>This Inner Loop Header: Depth=1
	movq	280(%rbx), %rdi
	movq	(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_26
# %bb.25:                               # %if.then10.2.i
                                        #   in Loop: Header=BB4_24 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
.LBB4_26:                               # %if.end.2.i
                                        #   in Loop: Header=BB4_24 Depth=1
	cmpq	$32, %rsi
	je	.LBB4_30
# %bb.27:                               # %for.body7.2.i.1
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	280(%rbx), %rdi
	movq	8(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_29
# %bb.28:                               # %if.then10.2.i.1
                                        #   in Loop: Header=BB4_24 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
	jmp	.LBB4_29
.LBB4_30:                               # %for.inc14.2.i
	xorl	%esi, %esi
	jmp	.LBB4_31
	.p2align	4, 0x90
.LBB4_36:                               # %if.end.3.i.1
                                        #   in Loop: Header=BB4_31 Depth=1
	addq	$2, %rsi
.LBB4_31:                               # %for.body7.3.i
                                        # =>This Inner Loop Header: Depth=1
	movq	288(%rbx), %rdi
	movq	(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_33
# %bb.32:                               # %if.then10.3.i
                                        #   in Loop: Header=BB4_31 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
.LBB4_33:                               # %if.end.3.i
                                        #   in Loop: Header=BB4_31 Depth=1
	cmpq	$32, %rsi
	je	.LBB4_37
# %bb.34:                               # %for.body7.3.i.1
                                        #   in Loop: Header=BB4_31 Depth=1
	movq	288(%rbx), %rdi
	movq	8(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_36
# %bb.35:                               # %if.then10.3.i.1
                                        #   in Loop: Header=BB4_31 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
	jmp	.LBB4_36
.LBB4_37:                               # %for.inc14.3.i
	xorl	%esi, %esi
	jmp	.LBB4_38
	.p2align	4, 0x90
.LBB4_43:                               # %if.end.4.i.1
                                        #   in Loop: Header=BB4_38 Depth=1
	addq	$2, %rsi
.LBB4_38:                               # %for.body7.4.i
                                        # =>This Inner Loop Header: Depth=1
	movq	296(%rbx), %rdi
	movq	(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_40
# %bb.39:                               # %if.then10.4.i
                                        #   in Loop: Header=BB4_38 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
.LBB4_40:                               # %if.end.4.i
                                        #   in Loop: Header=BB4_38 Depth=1
	cmpq	$32, %rsi
	je	.LBB4_44
# %bb.41:                               # %for.body7.4.i.1
                                        #   in Loop: Header=BB4_38 Depth=1
	movq	296(%rbx), %rdi
	movq	8(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_43
# %bb.42:                               # %if.then10.4.i.1
                                        #   in Loop: Header=BB4_38 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
	jmp	.LBB4_43
.LBB4_44:                               # %for.inc14.4.i
	xorl	%esi, %esi
	jmp	.LBB4_45
	.p2align	4, 0x90
.LBB4_50:                               # %if.end.5.i.1
                                        #   in Loop: Header=BB4_45 Depth=1
	addq	$2, %rsi
.LBB4_45:                               # %for.body7.5.i
                                        # =>This Inner Loop Header: Depth=1
	movq	304(%rbx), %rdi
	movq	(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_47
# %bb.46:                               # %if.then10.5.i
                                        #   in Loop: Header=BB4_45 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
.LBB4_47:                               # %if.end.5.i
                                        #   in Loop: Header=BB4_45 Depth=1
	cmpq	$32, %rsi
	je	.LBB4_60
# %bb.48:                               # %for.body7.5.i.1
                                        #   in Loop: Header=BB4_45 Depth=1
	movq	304(%rbx), %rdi
	movq	8(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB4_50
# %bb.49:                               # %if.then10.5.i.1
                                        #   in Loop: Header=BB4_45 Depth=1
	cmpl	%edx, %ecx
	setl	%r8b
	cmpq	%rax, %rdi
	sete	%r9b
	andb	%r8b, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, 384(%rdi)
	movq	128(%rdi), %r8
	movq	%r8, 376(%rdi)
	jmp	.LBB4_50
.Lfunc_end4:
	.size	decode_one_slice, .Lfunc_end4-decode_one_slice
	.cfi_endproc
                                        # -- End function
	.globl	decode_one_frame                # -- Begin function decode_one_frame
	.p2align	4, 0x90
	.type	decode_one_frame,@function
decode_one_frame:                       # @decode_one_frame
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
	subq	$2232, %rsp                     # imm = 0x8B8
	.cfi_def_cfa_offset 2288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	8(%rdi), %rbx
	movq	(%rbx), %r13
	movq	848736(%rbx), %r14
	movl	$0, 848728(%rbx)
	movq	$0, 848716(%rbx)
	cmpl	$0, 848872(%rbx)
	je	.LBB5_4
# %bb.1:                                # %if.then
	movq	856872(%rbx), %rdx
	cmpl	$0, (%rdx)
	je	.LBB5_6
# %bb.2:                                # %land.lhs.true
	movl	4(%rdx), %esi
	movq	848880(%rbx), %rax
	cmpl	1228(%rax), %esi
	jne	.LBB5_6
# %bb.3:                                # %if.then7
	movq	%rbx, %rdi
	callq	MakePPSavailable@PLT
	movq	856872(%rbx), %rax
	movl	$0, (%rax)
	movslq	848720(%rbx), %rax
	jmp	.LBB5_7
.LBB5_6:
	xorl	%eax, %eax
.LBB5_7:                                # %if.end
	movq	(%r14,%rax,8), %rcx
	movq	848880(%rbx), %rdx
	movq	%rdx, (%r14,%rax,8)
	movq	%rcx, 848880(%rbx)
	movslq	848720(%rbx), %rax
	movq	(%r14,%rax,8), %r15
	movq	%r15, %rdi
	callq	UseParameterSet@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	init_picture
	incl	848720(%rbx)
	movl	$3, %r12d
	jmp	.LBB5_8
.LBB5_4:
	xorl	%r12d, %r12d
.LBB5_8:                                # %if.end23
	leaq	856456(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	$4294967295, %r15d              # imm = 0xFFFFFFFF
	jmp	.LBB5_10
.LBB5_9:                                # %CopySliceInfo.exit
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	1176(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movl	1180(%rbp), %ecx
	movl	%ecx, 44(%rax)
	movl	1184(%rbp), %ecx
	movl	%ecx, 48(%rax)
	.p2align	4, 0x90
.LBB5_10:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	leal	-3(%r12), %eax
	cmpl	$-3, %eax
	ja	.LBB5_49
# %bb.11:                               # %while.body
                                        #   in Loop: Header=BB5_10 Depth=1
	movslq	848720(%rbx), %rax
	movq	(%r14,%rax,8), %rbp
	testq	%rbp, %rbp
	jne	.LBB5_13
# %bb.12:                               # %if.then30
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	malloc_slice@PLT
	movslq	848720(%rbx), %rcx
	movq	%rax, (%r14,%rcx,8)
	movslq	848720(%rbx), %rax
	movq	(%r14,%rax,8), %rbp
.LBB5_13:                               # %if.end34
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	%rbx, (%rbp)
	movq	%r13, 8(%rbp)
	movq	856656(%rbx), %rax
	movq	%rax, 40(%rbp)
	movl	$-8888, 208(%rbp)               # imm = 0xDD48
	movl	$0, 112(%rbp)
	movq	%r15, 13264(%rbp)
	movl	$0, 1240(%rbp)
	movq	%rbp, %rdi
	callq	read_new_slice
	movl	%eax, %r12d
	movl	%eax, 204(%rbp)
	cmpl	$0, 220(%rbp)
	jne	.LBB5_15
# %bb.14:                               # %if.end.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movabsq	$4294967297, %rax               # imm = 0x100000001
	movq	%rax, 851868(%rbx)
	cmpl	$0, 220(%rbp)
	je	.LBB5_18
.LBB5_15:                               # %land.lhs.true13.i
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$2, 848776(%rbx)
	je	.LBB5_24
# %bb.16:                               # %if.then16.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movslq	232(%rbp), %rax
	cmpl	$0, 13340(%rbp,%rax,4)
	jne	.LBB5_24
# %bb.17:                               # %if.then21.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	$0, 851872(%rbx)
	jmp	.LBB5_24
.LBB5_18:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$2, 848776(%rbx)
	je	.LBB5_24
# %bb.19:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	136(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB5_24
# %bb.20:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB5_10 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB5_22
	.p2align	4, 0x90
.LBB5_21:                               # %for.inc.i
                                        #   in Loop: Header=BB5_22 Depth=2
	incq	%rcx
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB5_24
.LBB5_22:                               # %for.body.i
                                        #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 13340(%rbp,%rcx,4)
	jne	.LBB5_21
# %bb.23:                               # %if.then8.i
                                        #   in Loop: Header=BB5_22 Depth=2
	movl	$0, 851868(%rbx)
	movl	136(%rbp), %eax
	jmp	.LBB5_21
	.p2align	4, 0x90
.LBB5_24:                               # %Error_tracking.exit
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	172(%rbp), %eax
	cmpl	851864(%rbx), %eax
	jne	.LBB5_28
# %bb.25:                               # %land.lhs.true45
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$0, 220(%rbp)
	je	.LBB5_28
# %bb.26:                               # %land.lhs.true47
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$0, 851868(%rbx)
	je	.LBB5_28
# %bb.27:                               # %land.lhs.true47
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$1, %r12d
	jne	.LBB5_10
.LBB5_28:                               # %if.end52
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-3(%r12), %ecx
	movslq	848720(%rbx), %rax
	cmpl	$-2, %ecx
	jb	.LBB5_31
# %bb.29:                               # %lor.lhs.false
                                        #   in Loop: Header=BB5_10 Depth=1
	testl	%eax, %eax
	jne	.LBB5_36
# %bb.30:                               # %lor.lhs.false
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$2, %r12d
	jne	.LBB5_36
.LBB5_31:                               # %if.then60
                                        #   in Loop: Header=BB5_10 Depth=1
	movw	%ax, 116(%rbp)
	cwtl
	movq	856456(%rbx), %rcx
	movswl	60(%rcx), %edx
	cmpl	%edx, %eax
	cmovgl	%eax, %edx
	movw	%dx, 60(%rcx)
	movl	848720(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB5_33
# %bb.32:                               # %if.then72
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r14), %rax
	movl	76(%rax), %ecx
	movl	%ecx, 76(%rbp)
	movl	68(%rax), %ecx
	movl	%ecx, 68(%rbp)
	movl	72(%rax), %ecx
	movl	%ecx, 72(%rbp)
	movl	104(%rax), %eax
	movl	%eax, 104(%rbp)
	movl	188(%rbp), %eax
	movslq	848720(%rbx), %rcx
	movq	-8(%r14,%rcx,8), %rcx
	movl	%eax, 192(%rcx)
	movl	848720(%rbx), %eax
.LBB5_33:                               # %if.end76
                                        #   in Loop: Header=BB5_10 Depth=1
	incl	%eax
	movl	%eax, 848720(%rbx)
	movslq	848724(%rbx), %rcx
	movl	$3, %r12d
	cmpl	%ecx, %eax
	jl	.LBB5_41
# %bb.34:                               # %if.then82
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	848736(%rbx), %rdi
	leaq	128(,%rcx,8), %rsi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB5_38
# %bb.35:                               # %if.else
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	%rax, %r14
	movq	%rax, 848736(%rbx)
	movslq	848720(%rbx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%r14,%rax,8)
	movups	%xmm0, 96(%r14,%rax,8)
	movups	%xmm0, 80(%r14,%rax,8)
	movups	%xmm0, 64(%r14,%rax,8)
	movups	%xmm0, 48(%r14,%rax,8)
	movups	%xmm0, 32(%r14,%rax,8)
	movups	%xmm0, 16(%r14,%rax,8)
	movups	%xmm0, (%r14,%rax,8)
	addl	$16, 848724(%rbx)
	jmp	.LBB5_41
.LBB5_36:                               # %if.else106
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-8(%r14,%rax,8), %rcx
	cmpl	$0, 128(%rcx)
	movl	849016(%rbx), %eax
	je	.LBB5_39
# %bb.37:                               # %if.then112
                                        #   in Loop: Header=BB5_10 Depth=1
	shrl	%eax
	jmp	.LBB5_40
.LBB5_38:                               # %if.then88
                                        #   in Loop: Header=BB5_10 Depth=1
	movslq	848724(%rbx), %rdi
	addq	$16, %rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, %r14
	movq	848736(%rbx), %rsi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	movslq	848720(%rbx), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	callq	memcpy@PLT
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	free@PLT
	movq	%r14, 848736(%rbx)
	addl	$16, 848724(%rbx)
	jmp	.LBB5_41
.LBB5_39:                               # %if.else118
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	176(%rcx), %esi
	incl	%esi
	xorl	%edx, %edx
	divl	%esi
.LBB5_40:                               # %if.end131
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	%eax, 192(%rcx)
	movl	$1, 848872(%rbx)
	movw	$0, 116(%rbp)
	movq	848880(%rbx), %rax
	movslq	848720(%rbx), %rcx
	movq	%rax, (%r14,%rcx,8)
	movq	%rbp, 848880(%rbx)
.LBB5_41:                               # %if.end139
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	848696(%rbx), %rax
	movq	(%rbp), %rcx
	movl	1228(%rbp), %edx
	movl	%edx, 36(%rax)
	movl	172(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	176(%rbp), %edx
	movl	%edx, (%rax)
	testl	%edx, %edx
	je	.LBB5_43
# %bb.42:                               # %if.then.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	180(%rbp), %edx
	movb	%dl, 28(%rax)
.LBB5_43:                               # %if.end.i286
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	56(%rbp), %edx
	movl	%edx, 8(%rax)
	movzbl	48(%rbp), %edx
	movb	%dl, 29(%rax)
	cmpl	$0, 48(%rbp)
	je	.LBB5_45
# %bb.44:                               # %if.then9.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	52(%rbp), %edx
	movl	%edx, 32(%rax)
.LBB5_45:                               # %if.end11.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	16(%rcx), %rdx
	movl	2072(%rdx), %edx
	testl	%edx, %edx
	je	.LBB5_47
# %bb.46:                               # %if.end14.i
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$1, %edx
	jne	.LBB5_9
	jmp	.LBB5_48
.LBB5_47:                               # %if.then13.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	80(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	84(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	16(%rcx), %rcx
	movl	2072(%rcx), %edx
	cmpl	$1, %edx
	jne	.LBB5_9
.LBB5_48:                               # %if.then19.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	88(%rbp), %ecx
	movl	%ecx, 20(%rax)
	movl	92(%rbp), %ecx
	movl	%ecx, 24(%rax)
	jmp	.LBB5_9
.LBB5_49:                               # %while.end
	movq	848736(%rbx), %rax
	movq	(%rax), %r13
	cmpl	$50, 848720(%rbx)
	jl	.LBB5_51
# %bb.50:                               # %if.then.i305
	movl	$.L.str.50, %edi
	movl	$200, %esi
	callq	error@PLT
.LBB5_51:                               # %if.end.i290
	movq	856872(%rbx), %rax
	cmpl	$0, (%rax)
	je	.LBB5_54
# %bb.52:                               # %land.lhs.true.i292
	movl	4(%rax), %eax
	cmpl	1228(%r13), %eax
	jne	.LBB5_54
# %bb.53:                               # %if.then4.i
	movq	8(%rbx), %r15
	leaq	72(%rsp), %rdi
	movl	$2160, %edx                     # imm = 0x870
	movq	%r15, %rsi
	callq	memcpy@PLT
	movq	2160(%r15), %rbp
	movups	2168(%r15), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	2184(%r15), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	2200(%r15), %xmm0
	movaps	%xmm0, 48(%rsp)
	movq	$0, 2160(%r15)
	movq	856872(%rbx), %rdx
	movl	4(%rdx), %esi
	movq	%rbx, %rdi
	callq	MakePPSavailable@PLT
	movq	856872(%rbx), %r15
	movl	$2160, %edx                     # imm = 0x870
	movq	%r15, %rdi
	leaq	72(%rsp), %rsi
	callq	memcpy@PLT
	movq	%rbp, 2160(%r15)
	movaps	16(%rsp), %xmm0
	movaps	32(%rsp), %xmm1
	movaps	48(%rsp), %xmm2
	movups	%xmm0, 2168(%r15)
	movups	%xmm1, 2184(%r15)
	movups	%xmm2, 2200(%r15)
.LBB5_54:                               # %if.end11.i294
	movq	%r13, %rdi
	callq	UseParameterSet@PLT
	cmpl	$0, 48(%r13)
	je	.LBB5_56
# %bb.55:                               # %if.then13.i296
	movl	$0, 848712(%rbx)
.LBB5_56:                               # %if.end14.i297
	movl	848996(%rbx), %esi
	movl	849004(%rbx), %ecx
	movl	176(%r13), %edi
	incl	%edi
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, 849008(%rbx)
	imull	%esi, %eax
	movl	%eax, 849012(%rbx)
	imull	%ecx, %esi
	movl	%esi, 849016(%rbx)
	movl	184(%r13), %eax
	movl	%eax, 848876(%rbx)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	fmo_init@PLT
	movq	856656(%rbx), %rdi
	movl	1176(%r13), %esi
	callq	update_ref_list@PLT
	movq	856656(%rbx), %rdi
	movl	1176(%r13), %esi
	callq	update_ltref_list@PLT
	movq	%r13, %rdi
	callq	update_pic_num@PLT
	movl	128(%r13), %esi
	movq	%rbx, %rdi
	callq	init_Deblock@PLT
	movslq	848720(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB5_59
# %bb.57:                               # %for.body.lr.ph.i300
	movq	848736(%rbx), %rcx
	cmpl	$4, %eax
	jae	.LBB5_60
# %bb.58:
	movl	$1, %esi
	xorl	%r10d, %r10d
	jmp	.LBB5_63
.LBB5_59:                               # %init_picture_decoding.exit.thread317
	movl	$1, 856824(%rbx)
	jmp	.LBB5_82
.LBB5_60:                               # %vector.ph
	movl	%eax, %edx
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movl	%eax, %esi
	shrl	$2, %esi
	andl	$536870911, %esi                # imm = 0x1FFFFFFF
	shlq	$5, %rsi
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB5_61:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%r9), %r15
	cmpw	$0, 1220(%r15)
	movq	8(%rcx,%r9), %r15
	sete	%bpl
	cmpw	$0, 1220(%r15)
	movq	16(%rcx,%r9), %r15
	sete	%r13b
	cmpw	$0, 1220(%r15)
	movq	24(%rcx,%r9), %r15
	sete	%dl
	cmpw	$0, 1220(%r15)
	sete	%r15b
	orb	%bpl, %r11b
	orb	%r13b, %r10b
	orb	%dl, %r8b
	orb	%r15b, %dil
	addq	$32, %r9
	cmpq	%r9, %rsi
	jne	.LBB5_61
# %bb.62:                               # %middle.block
	orb	%r11b, %r10b
	orb	%r10b, %r8b
	orb	%r8b, %dil
	notb	%dil
	movzbl	%dil, %esi
	andl	$1, %esi
	movq	(%rsp), %r10                    # 8-byte Reload
	cmpq	%rax, %r10
	je	.LBB5_70
.LBB5_63:                               # %for.body.i301.preheader
	movq	%rax, %r8
	andq	$3, %r8
	je	.LBB5_67
# %bb.64:                               # %for.body.i301.prol.preheader
	xorl	%r9d, %r9d
	movq	%r10, %rdi
	.p2align	4, 0x90
.LBB5_65:                               # %for.body.i301.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %rdx
	cmpw	$0, 1220(%rdx)
	cmovel	%r9d, %esi
	incq	%rdi
	decq	%r8
	jne	.LBB5_65
# %bb.66:                               # %for.body.i301.prol.loopexit
	subq	%rax, %r10
	cmpq	$-4, %r10
	jbe	.LBB5_68
	jmp	.LBB5_70
.LBB5_67:
	movq	%r10, %rdi
	subq	%rax, %r10
	cmpq	$-4, %r10
	ja	.LBB5_70
.LBB5_68:                               # %for.body.i301.preheader.new
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB5_69:                               # %for.body.i301
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r8
	movq	8(%rcx,%rdi,8), %r9
	cmpw	$0, 1220(%r8)
	cmovel	%edx, %esi
	cmpw	$0, 1220(%r9)
	cmovel	%edx, %esi
	movq	16(%rcx,%rdi,8), %r8
	cmpw	$0, 1220(%r8)
	movq	24(%rcx,%rdi,8), %r8
	cmovel	%edx, %esi
	cmpw	$0, 1220(%r8)
	cmovel	%edx, %esi
	addq	$4, %rdi
	cmpq	%rdi, %rax
	jne	.LBB5_69
.LBB5_70:                               # %for.end.i
	movl	%esi, 856824(%rbx)
	cmpl	$1, %esi
	jne	.LBB5_80
# %bb.71:                               # %for.body40.lr.ph.i
	leaq	848896(%rbx), %rcx
	leaq	848888(%rbx), %rdx
	xorl	%esi, %esi
	jmp	.LBB5_73
	.p2align	4, 0x90
.LBB5_72:                               # %for.inc67.i
                                        #   in Loop: Header=BB5_73 Depth=1
	incq	%rsi
	movslq	%eax, %rdi
	cmpq	%rdi, %rsi
	jge	.LBB5_79
.LBB5_73:                               # %for.body40.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_77 Depth 2
	movq	848736(%rbx), %rdi
	movq	(%rdi,%rsi,8), %rdi
	cmpl	$0, 849280(%rbx)
	movq	%rdx, %r9
	je	.LBB5_75
# %bb.74:                               # %if.then47.i
                                        #   in Loop: Header=BB5_73 Depth=1
	movslq	216(%rdi), %r8
	leaq	(%rcx,%r8,8), %r9
.LBB5_75:                               # %if.end50.i
                                        #   in Loop: Header=BB5_73 Depth=1
	movslq	188(%rdi), %r10
	movslq	128(%rdi), %r8
	incq	%r8
	movl	192(%rdi), %r11d
	imull	%r8d, %r11d
	imulq	%r10, %r8
	cmpl	%r11d, %r8d
	jge	.LBB5_72
# %bb.76:                               # %for.body60.preheader.i
                                        #   in Loop: Header=BB5_73 Depth=1
	movzwl	116(%rdi), %eax
	movq	(%r9), %r9
	imulq	$480, %r8, %r10                 # imm = 0x1E0
	addq	%r10, %r9
	addq	$108, %r9
	.p2align	4, 0x90
.LBB5_77:                               # %for.body60.i
                                        #   Parent Loop BB5_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	%ax, (%r9)
	incq	%r8
	movslq	192(%rdi), %r10
	movslq	128(%rdi), %r11
	incq	%r11
	imulq	%r10, %r11
	addq	$480, %r9                       # imm = 0x1E0
	cmpq	%r11, %r8
	jl	.LBB5_77
# %bb.78:                               # %for.inc67.loopexit.i
                                        #   in Loop: Header=BB5_73 Depth=1
	movl	848720(%rbx), %eax
	jmp	.LBB5_72
.LBB5_79:                               # %init_picture_decoding.exit
	testl	%eax, %eax
	jle	.LBB5_82
.LBB5_80:                               # %for.body.lr.ph
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB5_81:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%r13,8), %r15
	movl	204(%r15), %ebp
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	init_slice
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	decode_slice
	incl	848728(%rbx)
	movl	112(%r15), %eax
	addl	%eax, 848716(%rbx)
	movl	13504(%r15), %eax
	addl	%eax, 856512(%rbx)
	incq	%r13
	movslq	848720(%rbx), %rax
	cmpq	%rax, %r13
	jl	.LBB5_81
.LBB5_82:                               # %for.end
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	exit_picture
	movq	(%r14), %rax
	movl	172(%rax), %eax
	movl	%eax, 851864(%rbx)
	movl	%r12d, %eax
	addq	$2232, %rsp                     # imm = 0x8B8
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
.Lfunc_end5:
	.size	decode_one_frame, .Lfunc_end5-decode_one_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function init_picture
	.type	init_picture,@function
init_picture:                           # @init_picture
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	16(%rdi), %r13
	movq	40(%rsi), %r12
	movl	$1, 856864(%rdi)
	cmpq	$0, 856456(%rdi)
	je	.LBB6_2
# %bb.1:                                # %if.then
	leaq	856456(%rbx), %rsi
	movq	%rbx, %rdi
	callq	exit_picture
.LBB6_2:                                # %if.end
	movl	849260(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB6_4
# %bb.3:                                # %if.then6
	movl	849268(%rbx), %eax
	addl	172(%r14), %eax
	xorl	%edx, %edx
	divl	848992(%rbx)
	movl	%edx, 849272(%rbx)
.LBB6_4:                                # %if.end7
	cmpl	$0, 48(%r14)
	je	.LBB6_6
# %bb.5:                                # %if.then9
	movl	172(%r14), %eax
	movl	%eax, 849272(%rbx)
.LBB6_6:                                # %if.end12
	testl	%ecx, %ecx
	jne	.LBB6_17
# %bb.7:                                # %land.lhs.true
	movl	172(%r14), %ecx
	movl	848944(%rbx), %eax
	cmpl	%eax, %ecx
	je	.LBB6_17
# %bb.8:                                # %land.lhs.true16
	incl	%eax
	xorl	%edx, %edx
	divl	848992(%rbx)
	cmpl	%edx, %ecx
	je	.LBB6_17
# %bb.9:                                # %if.then23
	cmpl	$0, 3124(%r13)
	je	.LBB6_10
.LBB6_15:                               # %if.end44
	cmpl	$0, 849240(%rbx)
	jne	.LBB6_17
# %bb.16:                               # %if.then47
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	fill_frame_num_gap@PLT
.LBB6_17:                               # %if.end49
	cmpl	$0, 56(%r14)
	je	.LBB6_19
# %bb.18:                               # %if.then51
	movl	172(%r14), %eax
	movl	%eax, 848944(%rbx)
.LBB6_19:                               # %if.end54
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	decode_poc@PLT
	movl	849272(%rbx), %eax
	cmpl	172(%r14), %eax
	jne	.LBB6_22
# %bb.20:                               # %land.lhs.true58
	cmpl	$2147483647, 849276(%rbx)       # imm = 0x7FFFFFFF
	jne	.LBB6_22
# %bb.21:                               # %if.then60
	movl	76(%r14), %eax
	movl	%eax, 849276(%rbx)
.LBB6_22:                               # %if.end62
	cmpl	$0, 56(%r14)
	je	.LBB6_24
# %bb.23:                               # %if.then65
	movl	76(%r14), %eax
	movl	%eax, 849228(%rbx)
.LBB6_24:                               # %if.end67
	movl	184(%r14), %esi
	movl	848780(%rbx), %edx
	movl	848784(%rbx), %ecx
	movl	848788(%rbx), %r8d
	movl	848792(%rbx), %r9d
	movq	%rbx, %rdi
	callq	alloc_storable_picture@PLT
	movq	%rax, %r15
	movq	%rax, 856456(%rbx)
	movl	68(%r14), %eax
	movl	%eax, 8(%r15)
	movl	72(%r14), %eax
	movl	%eax, 12(%r15)
	movl	76(%r14), %eax
	movl	%eax, 16(%r15)
	movl	148(%r14), %eax
	movl	%eax, 296(%r15)
	movl	152(%r14), %eax
	movl	%eax, 308(%r15)
	movq	8(%rbx), %rax
	movl	2192(%rax), %eax
	movl	%eax, 300(%r15)
	movq	8(%rbx), %rax
	movl	2196(%rax), %eax
	movl	%eax, 304(%r15)
	movl	$1, %eax
	cmpl	$0, 184(%r14)
	jne	.LBB6_26
# %bb.25:                               # %cond.true
	xorl	%eax, %eax
	cmpl	$0, 128(%r14)
	setne	%al
	leal	(%rax,%rax,2), %eax
.LBB6_26:                               # %cond.end
	movl	%eax, 388(%r15)
	movl	1176(%r14), %eax
	movl	%eax, 344(%r15)
	movl	1180(%r14), %eax
	movl	%eax, 348(%r15)
	movl	1184(%r14), %eax
	movl	%eax, 352(%r15)
	movq	856504(%rbx), %rdi
	movl	849012(%rbx), %edx
	movl	64(%r15), %ecx
	movl	%edx, %esi
	callq	ercReset@PLT
	movl	$0, 856512(%rbx)
	movl	184(%r14), %eax
	testl	%eax, %eax
	je	.LBB6_31
# %bb.27:                               # %cond.end
	cmpl	$2, %eax
	je	.LBB6_30
# %bb.28:                               # %cond.end
	cmpl	$1, %eax
	jne	.LBB6_32
# %bb.29:                               # %sw.bb
	movl	68(%r14), %eax
	movl	%eax, 4(%r15)
	shll	848712(%rbx)
	cmpl	$5, 848776(%rbx)
	jge	.LBB6_34
	jmp	.LBB6_35
.LBB6_30:                               # %sw.bb85
	movl	72(%r14), %eax
	movl	%eax, 4(%r15)
	movl	848712(%rbx), %eax
	leal	1(,%rax,2), %eax
	movl	%eax, 848712(%rbx)
	cmpl	$5, 848776(%rbx)
	jge	.LBB6_34
	jmp	.LBB6_35
.LBB6_31:                               # %sw.bb92
	movl	76(%r14), %eax
	movl	%eax, 4(%r15)
	cmpl	$5, 848776(%rbx)
	jl	.LBB6_35
.LBB6_34:                               # %if.then96
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	set_ec_flag@PLT
	movl	$0, 848776(%rbx)
.LBB6_35:                               # %if.end99
	movq	8(%rbx), %rax
	cmpl	$0, 12(%rax)
	je	.LBB6_36
# %bb.37:                               # %if.end109
	cmpl	$0, 849280(%rbx)
	je	.LBB6_59
.LBB6_38:                               # %for.cond.preheader
	movq	848752(%rbx), %r12
	cmpl	$0, 849012(%rbx)
	jle	.LBB6_41
# %bb.39:                               # %for.body122.preheader
	movq	848896(%rbx), %rax
	addq	$111, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_40:                               # %for.body122
                                        # =>This Inner Loop Header: Depth=1
	movl	$131071, -3(%rax)               # imm = 0x1FFFF
	incl	%ecx
	addq	$480, %rax                      # imm = 0x1E0
	cmpl	849012(%rbx), %ecx
	jl	.LBB6_40
.LBB6_41:                               # %for.end
	movq	848808(%rbx), %rax
	movq	(%rax), %rdi
	movl	849004(%rbx), %eax
	imull	848996(%rbx), %eax
	shll	$4, %eax
	movslq	%eax, %rdx
	movl	$2, %esi
	callq	memset@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	849012(%rbx), %eax
	je	.LBB6_45
# %bb.42:                               # %for.cond134.preheader
	testl	%eax, %eax
	jle	.LBB6_81
# %bb.43:                               # %for.body138.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_44:                               # %for.body138
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, (%r12,%rcx)
	incq	%rcx
	movslq	849012(%rbx), %rax
	cmpq	%rax, %rcx
	jl	.LBB6_44
.LBB6_45:                               # %if.end144
	movq	848760(%rbx), %r12
	testl	%eax, %eax
	jle	.LBB6_48
# %bb.46:                               # %for.body122.preheader.1
	movq	848904(%rbx), %rax
	addq	$111, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_47:                               # %for.body122.1
                                        # =>This Inner Loop Header: Depth=1
	movl	$131071, -3(%rax)               # imm = 0x1FFFF
	incl	%ecx
	addq	$480, %rax                      # imm = 0x1E0
	cmpl	849012(%rbx), %ecx
	jl	.LBB6_47
	jmp	.LBB6_48
.LBB6_36:                               # %if.then102
	movq	848832(%rbx), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	849012(%rbx), %eax
	shll	$4, %eax
	leal	(%rax,%rax,2), %edx
	movl	$255, %esi
	callq	memset@PLT
	cmpl	$0, 849280(%rbx)
	jne	.LBB6_38
.LBB6_59:                               # %if.else148
	cmpl	$0, 849012(%rbx)
	jle	.LBB6_65
# %bb.60:                               # %for.body154.preheader
	movq	848888(%rbx), %rax
	addq	$111, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_61:                               # %for.body154
                                        # =>This Inner Loop Header: Depth=1
	movl	$131071, -3(%rax)               # imm = 0x1FFFF
	incl	%ecx
	movl	849012(%rbx), %edx
	addq	$480, %rax                      # imm = 0x1E0
	cmpl	%edx, %ecx
	jl	.LBB6_61
# %bb.62:                               # %for.end158
	testl	%edx, %edx
	setle	%al
	movq	8(%rbx), %rcx
	cmpl	$0, 2204(%rcx)
	sete	%cl
	orb	%al, %cl
	jne	.LBB6_65
# %bb.63:                               # %for.body167.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_64:                               # %for.body167
                                        # =>This Inner Loop Header: Depth=1
	movq	848744(%rbx), %rcx
	movb	$1, (%rcx,%rax)
	incq	%rax
	movslq	849012(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_64
.LBB6_65:                               # %if.end174
	movq	848800(%rbx), %rax
	movq	(%rax), %rdi
	movl	849004(%rbx), %eax
	imull	848996(%rbx), %eax
	shll	$4, %eax
	movslq	%eax, %rdx
	movl	$2, %esi
	callq	memset@PLT
	jmp	.LBB6_66
.LBB6_32:                               # %sw.default
	movl	$.L.str.48, %edi
	movl	$235, %esi
	callq	error@PLT
	cmpl	$5, 848776(%rbx)
	jge	.LBB6_34
	jmp	.LBB6_35
.LBB6_81:                               # %if.end144.thread
	movq	848760(%rbx), %r12
.LBB6_48:                               # %for.end.1
	movq	848816(%rbx), %rax
	movq	(%rax), %rdi
	movl	849004(%rbx), %eax
	imull	848996(%rbx), %eax
	shll	$4, %eax
	movslq	%eax, %rdx
	movl	$2, %esi
	callq	memset@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	849012(%rbx), %eax
	je	.LBB6_52
# %bb.49:                               # %for.cond134.preheader.1
	testl	%eax, %eax
	jle	.LBB6_82
# %bb.50:                               # %for.body138.1.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_51:                               # %for.body138.1
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, (%r12,%rcx)
	incq	%rcx
	movslq	849012(%rbx), %rax
	cmpq	%rax, %rcx
	jl	.LBB6_51
.LBB6_52:                               # %if.end144.1
	movq	848768(%rbx), %r12
	testl	%eax, %eax
	jle	.LBB6_55
# %bb.53:                               # %for.body122.preheader.2
	movq	848912(%rbx), %rax
	addq	$111, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_54:                               # %for.body122.2
                                        # =>This Inner Loop Header: Depth=1
	movl	$131071, -3(%rax)               # imm = 0x1FFFF
	incl	%ecx
	addq	$480, %rax                      # imm = 0x1E0
	cmpl	849012(%rbx), %ecx
	jl	.LBB6_54
	jmp	.LBB6_55
.LBB6_82:                               # %if.end144.1.thread
	movq	848768(%rbx), %r12
.LBB6_55:                               # %for.end.2
	movq	848824(%rbx), %rax
	movq	(%rax), %rdi
	movl	849004(%rbx), %eax
	imull	848996(%rbx), %eax
	shll	$4, %eax
	movslq	%eax, %rdx
	movl	$2, %esi
	callq	memset@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB6_66
# %bb.56:                               # %for.cond134.preheader.2
	cmpl	$0, 849012(%rbx)
	jle	.LBB6_66
# %bb.57:                               # %for.body138.2.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_58:                               # %for.body138.2
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, (%r12,%rax)
	incq	%rax
	movslq	849012(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_58
.LBB6_66:                               # %if.end183
	movl	848776(%rbx), %eax
	movl	%eax, 248(%r15)
	xorl	%eax, %eax
	cmpl	$0, 56(%r14)
	setne	%al
	movl	%eax, 44(%r15)
	movl	48(%r14), %eax
	movl	%eax, 252(%r15)
	movl	236(%r14), %eax
	movl	%eax, 256(%r15)
	movl	240(%r14), %eax
	movl	%eax, 260(%r15)
	movl	244(%r14), %eax
	movl	%eax, 264(%r15)
	movq	248(%r14), %rax
	movq	%rax, 312(%r15)
	movq	$0, 248(%r14)
	movl	128(%r14), %eax
	movl	%eax, 100(%r15)
	movl	848996(%rbx), %ecx
	movl	%ecx, 104(%r15)
	testl	%eax, %eax
	jne	.LBB6_67
# %bb.68:                               # %if.end183
	movq	get_mb_block_pos_normal@GOTPCREL(%rip), %rax
	movq	%rax, 856752(%rbx)
	cmpl	$0, 100(%r15)
	je	.LBB6_71
.LBB6_70:
	movq	getAffNeighbour@GOTPCREL(%rip), %rax
	jmp	.LBB6_72
.LBB6_67:
	movq	get_mb_block_pos_mbaff@GOTPCREL(%rip), %rax
	movq	%rax, 856752(%rbx)
	cmpl	$0, 100(%r15)
	jne	.LBB6_70
.LBB6_71:                               # %if.end183
	movq	getNonAffNeighbour@GOTPCREL(%rip), %rax
.LBB6_72:                               # %if.end183
	movq	%rax, 856744(%rbx)
	movl	172(%r14), %eax
	movl	%eax, 28(%r15)
	movl	%eax, 20(%r15)
	movl	172(%r14), %eax
	xorl	%ecx, %ecx
	cmpl	849272(%rbx), %eax
	sete	%cl
	movl	%ecx, 24(%r15)
	xorl	%eax, %eax
	cmpl	$0, 184(%r14)
	sete	%al
	movl	%eax, 96(%r15)
	movl	36(%r13), %eax
	movl	%eax, 268(%r15)
	movl	3136(%r13), %eax
	movl	%eax, 272(%r15)
	movl	3148(%r13), %eax
	movl	%eax, 276(%r15)
	testl	%eax, %eax
	je	.LBB6_74
# %bb.73:                               # %if.then220
	movl	3152(%r13), %eax
	movl	%eax, 280(%r15)
	movl	3156(%r13), %eax
	movl	%eax, 284(%r15)
	movl	3160(%r13), %eax
	movl	%eax, 288(%r15)
	movl	3164(%r13), %eax
	movl	%eax, 292(%r15)
.LBB6_74:                               # %if.end225
	movq	856728(%rbx), %rax
	cmpl	$0, (%rax)
	je	.LBB6_78
# %bb.75:                               # %if.then227
	movzbl	8(%rax), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	$1, 324(%r15)
	movq	856728(%rbx), %rcx
	movl	12(%rcx), %ecx
	movl	%ecx, 328(%r15)
	movq	856728(%rbx), %rcx
	movzbl	9(%rcx), %ecx
	movl	%ecx, 332(%r15)
	movslq	%eax, %r12
	leaq	(,%r12,4), %rdi
	callq	malloc@PLT
	movq	%rax, 336(%r15)
	testq	%rax, %rax
	jne	.LBB6_77
# %bb.76:                               # %if.then240
	movl	$.L.str.49, %edi
	callq	no_mem_exit@PLT
	movq	336(%r15), %rax
.LBB6_77:                               # %if.end241
	movq	856728(%rbx), %rsi
	addq	$20, %rsi
	addq	%r12, %r12
	movq	%rax, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	856728(%rbx), %rdi
	callq	update_tone_mapping_sei@PLT
	cmpl	$0, 849280(%rbx)
	je	.LBB6_80
.LBB6_83:                               # %if.then253
	movq	856456(%rbx), %rax
	movq	%rax, 856464(%rbx)
	movl	184(%r14), %esi
	movl	848780(%rbx), %edx
	movl	848784(%rbx), %ecx
	movl	848788(%rbx), %r8d
	movl	848792(%rbx), %r9d
	movq	%rbx, %rdi
	callq	alloc_storable_picture@PLT
	movq	%rax, 856472(%rbx)
	movq	856464(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	copy_dec_picture_JV
	movl	184(%r14), %esi
	movl	848780(%rbx), %edx
	movl	848784(%rbx), %ecx
	movl	848788(%rbx), %r8d
	movl	848792(%rbx), %r9d
	movq	%rbx, %rdi
	callq	alloc_storable_picture@PLT
	movq	%rax, 856480(%rbx)
	movq	856464(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
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
	jmp	copy_dec_picture_JV             # TAILCALL
.LBB6_78:                               # %if.else247
	.cfi_def_cfa_offset 48
	movl	$0, 324(%r15)
	cmpl	$0, 849280(%rbx)
	jne	.LBB6_83
.LBB6_80:                               # %if.end280
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
.LBB6_10:                               # %if.then25
	.cfi_def_cfa_offset 48
	movl	3980(%r15), %eax
	testl	%eax, %eax
	je	.LBB6_14
# %bb.11:                               # %if.then27
	cmpl	%edx, %ecx
	jae	.LBB6_13
# %bb.12:                               # %if.then34
	movl	$1, 849240(%rbx)
	movl	$1, 849252(%rbx)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	conceal_lost_frames@PLT
	movl	3980(%r15), %eax
	movl	%eax, 849240(%rbx)
	jmp	.LBB6_15
.LBB6_14:                               # %if.else42
	movl	$.L.str.47, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB6_15
.LBB6_13:                               # %if.else
	movl	%eax, 849240(%rbx)
	movl	$0, 849252(%rbx)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	conceal_lost_frames@PLT
	jmp	.LBB6_15
.Lfunc_end6:
	.size	init_picture, .Lfunc_end6-init_picture
	.cfi_endproc
                                        # -- End function
	.globl	read_new_slice                  # -- Begin function read_new_slice
	.p2align	4, 0x90
	.type	read_new_slice,@function
read_new_slice:                         # @read_new_slice
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
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	movq	8(%rdi), %rbp
	movq	856832(%rbx), %r15
	movl	$-1, 32(%rdi)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	read_next_nalu@PLT
	testl	%eax, %eax
	je	.LBB7_60
# %bb.1:                                # %if.end.lr.ph
	leaq	1188(%r14), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	48(%r14), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB7_4
.LBB7_2:                                # %sw.bb381
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	ProcessPPS@PLT
	.p2align	4, 0x90
.LBB7_3:                                # %sw.epilog
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$-1, 32(%r14)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	read_next_nalu@PLT
	testl	%eax, %eax
	je	.LBB7_60
.LBB7_4:                                # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	cmpl	$1, 3976(%rbp)
	movl	16(%r15), %esi
	jne	.LBB7_14
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$20, %esi
	je	.LBB7_7
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$14, %esi
	jne	.LBB7_14
.LBB7_7:                                # %if.then8
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	312(%r14), %rax
	movq	(%rax), %r12
	movl	$0, 24(%r12)
	movl	$0, (%r12)
	movl	$0, 8(%r12)
	movq	16(%r12), %rdi
	movq	24(%r15), %rsi
	incq	%rsi
	movl	4(%r15), %eax
	decl	%eax
	movslq	%eax, %rdx
	callq	memcpy@PLT
	movq	16(%r12), %rdi
	movl	4(%r15), %esi
	decl	%esi
	callq	RBSPtoSODB@PLT
	movl	%eax, 12(%r12)
	movl	%eax, 4(%r12)
	movl	$.L.str.10, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	%eax, 32(%r14)
	testl	%eax, %eax
	je	.LBB7_9
# %bb.8:                                # %if.then17
                                        #   in Loop: Header=BB7_4 Depth=1
	xorl	%eax, %eax
	callq	nal_unit_header_svc_extension@PLT
	movl	16(%r15), %esi
	cmpl	$20, %esi
	jne	.LBB7_14
	jmp	.LBB7_10
.LBB7_9:                                # %if.else
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%r12, %rsi
	callq	nal_unit_header_mvc_extension@PLT
	xorl	%eax, %eax
	cmpl	$14, 16(%r15)
	sete	%al
	movl	%eax, 1216(%r14)
	movl	16(%r15), %esi
	cmpl	$20, %esi
	jne	.LBB7_14
.LBB7_10:                               # %if.then25
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$20, %esi
	cmpl	$0, 32(%r14)
	jne	.LBB7_14
# %bb.11:                               # %if.else29
                                        #   in Loop: Header=BB7_4 Depth=1
	xorl	%eax, %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	cmpl	$0, (%rcx)
	sete	%al
	leal	1(,%rax,4), %esi
	movl	%esi, 16(%r15)
	jmp	.LBB7_14
	.p2align	4, 0x90
.LBB7_12:                               # %if.else353
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	$1, 1236(%r14)
.LBB7_13:                               # %if.end355
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	16(%r15), %esi
	leal	-3(%rsi), %eax
	cmpl	$2, %eax
	jb	.LBB7_61
.LBB7_14:                               # %process_nalu
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rsi), %eax
	cmpl	$23, %eax
	ja	.LBB7_56
# %bb.15:                               # %process_nalu
                                        #   in Loop: Header=BB7_14 Depth=2
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_16:                               # %sw.bb202
                                        #   in Loop: Header=BB7_14 Depth=2
	movabsq	$4294967297, %rax               # imm = 0x100000001
	movq	%rax, 1232(%r14)
	movl	$0, 48(%r14)
	movl	20(%r15), %eax
	movl	%eax, 56(%r14)
	movabsq	$4294967299, %rax               # imm = 0x100000003
	movq	%rax, 196(%r14)
	movl	$0, 144(%r14)
	movq	312(%r14), %rax
	movq	(%rax), %r12
	movl	$0, 24(%r12)
	movl	$0, (%r12)
	movl	$0, 8(%r12)
	movq	16(%r12), %rdi
	movq	24(%r15), %rsi
	incq	%rsi
	movl	4(%r15), %edx
	decl	%edx
	callq	memcpy@PLT
	movq	16(%r12), %rdi
	movl	4(%r15), %esi
	decl	%esi
	callq	RBSPtoSODB@PLT
	movl	%eax, 12(%r12)
	movl	%eax, 4(%r12)
	movq	%r14, %rdi
	callq	FirstPartOfSliceHeader@PLT
	movq	%r14, %rdi
	callq	UseParameterSet@PLT
	movq	%r14, %rdi
	callq	RestOfSliceHeader@PLT
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	fmo_init@PLT
	movq	856456(%rbx), %rdi
	movq	848696(%rbx), %rdx
	movq	%r14, %rsi
	callq	is_new_picture
	testl	%eax, %eax
	je	.LBB7_18
# %bb.17:                               # %if.then235
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	init_picture
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	CheckZeroByteVCL@PLT
	movl	$2, 4(%rsp)                     # 4-byte Folded Spill
	jmp	.LBB7_19
	.p2align	4, 0x90
.LBB7_18:                               #   in Loop: Header=BB7_14 Depth=2
	movl	$3, 4(%rsp)                     # 4-byte Folded Spill
.LBB7_19:                               # %if.end237
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	%r14, %rdi
	callq	update_pic_num@PLT
	movq	%r14, %rdi
	callq	*13464(%r14)
	movq	%r14, %rdi
	callq	reorder_lists
	cmpl	$0, 848876(%rbx)
	jne	.LBB7_21
# %bb.20:                               # %if.then240
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	init_mbaff_lists@PLT
.LBB7_21:                               # %if.end241
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpl	$0, 128(%r14)
	setne	%cl
	movl	188(%r14), %eax
	shll	%cl, %eax
	movl	%eax, 108(%r14)
	movl	$.L.str.12, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movl	%eax, %r13d
	movq	8(%rbx), %rax
	cmpl	$0, 12(%rax)
	je	.LBB7_23
# %bb.22:                               # %if.then256
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	$.L.str.13, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB7_23:                               # %if.end257
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	read_next_nalu@PLT
	testl	%eax, %eax
	je	.LBB7_61
# %bb.24:                               # %if.end262
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpl	$3, 16(%r15)
	jne	.LBB7_28
# %bb.25:                               # %if.then266
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	312(%r14), %rax
	movq	48(%rax), %r12
	movl	$0, 24(%r12)
	movl	$0, (%r12)
	movl	$0, 8(%r12)
	movq	16(%r12), %rdi
	movq	24(%r15), %rsi
	incq	%rsi
	movl	4(%r15), %edx
	decl	%edx
	callq	memcpy@PLT
	movq	16(%r12), %rdi
	movl	4(%r15), %esi
	decl	%esi
	callq	RBSPtoSODB@PLT
	movl	%eax, 12(%r12)
	movl	%eax, 4(%r12)
	movl	$.L.str.14, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movl	$0, 1232(%r14)
	cmpl	%r13d, %eax
	jne	.LBB7_27
# %bb.26:                               # %lor.lhs.false289
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpw	$0, 32(%r15)
	je	.LBB7_35
.LBB7_27:                               # %if.then292
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	$.Lstr.56, %edi
	callq	puts@PLT
	movabsq	$4294967297, %rax               # imm = 0x100000001
	movq	%rax, 1232(%r14)
	jmp	.LBB7_29
	.p2align	4, 0x90
.LBB7_28:                               # %if.else309
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	$1, 1232(%r14)
.LBB7_29:                               # %if.end311
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpl	$4, 16(%r15)
	jne	.LBB7_12
# %bb.30:                               # %if.then315
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	312(%r14), %rax
	movq	96(%rax), %r12
	movl	$0, 24(%r12)
	movl	$0, (%r12)
	movl	$0, 8(%r12)
	movq	16(%r12), %rdi
	movq	24(%r15), %rsi
	incq	%rsi
	movl	4(%r15), %edx
	decl	%edx
	callq	memcpy@PLT
	movq	16(%r12), %rdi
	movl	4(%r15), %esi
	decl	%esi
	callq	RBSPtoSODB@PLT
	movl	%eax, 12(%r12)
	movl	%eax, 4(%r12)
	movl	$0, 1236(%r14)
	movl	$.L.str.17, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	cmpl	%r13d, %eax
	jne	.LBB7_32
# %bb.31:                               # %lor.lhs.false338
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpw	$0, 32(%r15)
	je	.LBB7_33
.LBB7_32:                               # %if.then342
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	$.Lstr.57, %edi
	callq	puts@PLT
	movl	$1, 1236(%r14)
.LBB7_33:                               # %if.end345
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	8(%rbx), %rax
	cmpl	$0, 2208(%rax)
	je	.LBB7_13
# %bb.34:                               # %if.then349
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	$.L.str.19, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	jmp	.LBB7_13
.LBB7_35:                               # %if.else296
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	8(%rbx), %rax
	cmpl	$0, 2208(%rax)
	je	.LBB7_37
# %bb.36:                               # %if.then299
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	$.L.str.16, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
.LBB7_37:                               # %if.end302
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	read_next_nalu@PLT
	testl	%eax, %eax
	jne	.LBB7_29
	jmp	.LBB7_61
.LBB7_38:                               # %sw.bb
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$0, 849260(%rbx)
	jne	.LBB7_62
# %bb.39:                               # %lor.lhs.false39
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	849264(%rbx), %eax
	cmpl	$5, %esi
	je	.LBB7_65
# %bb.40:                               # %if.end57
                                        #   in Loop: Header=BB7_4 Depth=1
	testl	%eax, %eax
	je	.LBB7_3
	jmp	.LBB7_70
.LBB7_41:                               # %sw.bb371
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$0, 784(%rbp)
	jne	.LBB7_3
# %bb.42:                               # %if.then375
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$.Lstr.54, %edi
	callq	puts@PLT
	jmp	.LBB7_3
.LBB7_43:                               # %sw.bb411
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$0, 3976(%rbp)
	jne	.LBB7_3
# %bb.44:                               # %land.lhs.true415
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$0, 784(%rbp)
	jne	.LBB7_3
# %bb.45:                               # %if.then419
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$.L.str.25, %edi
	movl	$20, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB7_3
.LBB7_46:                               # %sw.bb383
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$0, 784(%rbp)
	jne	.LBB7_3
# %bb.47:                               # %if.then387
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	4(%r15), %esi
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.53, %edi
	callq	puts@PLT
	jmp	.LBB7_3
.LBB7_48:                               # %sw.bb365
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$0, 784(%rbp)
	jne	.LBB7_3
# %bb.49:                               # %if.then368
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$.Lstr.55, %edi
	callq	puts@PLT
	jmp	.LBB7_3
.LBB7_50:                               # %sw.bb398
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$1, 3976(%rbp)
	jne	.LBB7_58
# %bb.51:                               # %if.then402
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	ProcessSubsetSPS@PLT
	jmp	.LBB7_3
.LBB7_52:                               # %sw.bb382
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	ProcessSPS@PLT
	jmp	.LBB7_3
.LBB7_53:                               # %sw.bb378
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	24(%r15), %rdi
	movl	4(%r15), %esi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	InterpretSEIMessage@PLT
	jmp	.LBB7_3
.LBB7_54:                               # %sw.bb392
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$1, 32(%r14)
	jne	.LBB7_3
# %bb.55:                               # %if.then396
                                        #   in Loop: Header=BB7_4 Depth=1
	xorl	%eax, %eax
	callq	prefix_nal_unit_svc@PLT
	jmp	.LBB7_3
.LBB7_56:                               # %sw.default
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$0, 784(%rbp)
	jne	.LBB7_3
# %bb.57:                               # %if.then426
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	4(%r15), %edx
	movl	$.L.str.26, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB7_3
.LBB7_58:                               # %if.else403
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$0, 784(%rbp)
	jne	.LBB7_3
# %bb.59:                               # %if.then407
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$.Lstr.52, %edi
	callq	puts@PLT
	jmp	.LBB7_3
.LBB7_60:
	movl	$1, 4(%rsp)                     # 4-byte Folded Spill
.LBB7_61:                               # %cleanup
	movl	4(%rsp), %eax                   # 4-byte Reload
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
.LBB7_62:                               # %if.then43
	.cfi_def_cfa_offset 80
	cmpl	$0, 849264(%rbx)
	jne	.LBB7_69
# %bb.63:                               # %if.then46
	cmpl	$5, %esi
	je	.LBB7_66
# %bb.67:                               # %if.then50
	movl	$.Lstr.58, %edi
	callq	puts@PLT
	movl	$1, %eax
	jmp	.LBB7_68
.LBB7_65:                               # %if.then43.thread
	testl	%eax, %eax
	jne	.LBB7_69
.LBB7_66:
	xorl	%eax, %eax
.LBB7_68:                               # %if.end57.thread.sink.split
	movl	%eax, 848948(%rbx)
.LBB7_69:                               # %if.end57.thread
	movl	$1, 849264(%rbx)
.LBB7_70:                               # %if.end62
	xorl	%eax, %eax
	cmpl	$5, 16(%r15)
	sete	%al
	movl	%eax, 48(%r14)
	movl	20(%r15), %eax
	movl	%eax, 56(%r14)
	movq	$1, 196(%r14)
	cmpl	$0, 32(%r14)
	je	.LBB7_72
# %bb.71:                               # %if.then70
	movq	312(%r14), %rax
	movq	(%rax), %r12
	movl	$0, 24(%r12)
	movl	$0, (%r12)
	movl	$0, 8(%r12)
	movq	16(%r12), %rdi
	movq	24(%r15), %rsi
	incq	%rsi
	movl	4(%r15), %eax
	decl	%eax
	movslq	%eax, %rdx
	callq	memcpy@PLT
	movq	16(%r12), %rdi
	movl	4(%r15), %esi
	decl	%esi
	callq	RBSPtoSODB@PLT
	movl	%eax, 12(%r12)
	movl	%eax, 4(%r12)
.LBB7_72:                               # %if.end88
	movq	%r14, %rdi
	callq	FirstPartOfSliceHeader@PLT
	movq	%r14, %rdi
	callq	UseParameterSet@PLT
	movq	16(%rbx), %rax
	movq	%rax, 24(%r14)
	movq	8(%rbx), %rax
	movq	%rax, 16(%r14)
	movl	16(%rax), %eax
	movl	%eax, 60(%r14)
	movq	16(%rbx), %rcx
	xorl	%eax, %eax
	cmpl	$3, 36(%rcx)
	jne	.LBB7_74
# %bb.73:                               # %land.rhs
	xorl	%eax, %eax
	cmpl	$0, 849280(%rbx)
	sete	%al
.LBB7_74:                               # %land.end
	movl	%eax, 64(%r14)
	movq	%r14, %rdi
	callq	RestOfSliceHeader@PLT
	movl	32(%r14), %eax
	cmpl	$-1, %eax
	je	.LBB7_76
# %bb.75:                               # %land.end
	testl	%eax, %eax
	je	.LBB7_78
	jmp	.LBB7_84
.LBB7_76:                               # %if.then113
	movq	699416(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_79
# %bb.77:                               # %if.else136
	cmpl	$0, 1216(%r14)
	je	.LBB7_81
.LBB7_78:                               # %if.then102
	movl	1196(%r14), %eax
	movl	1208(%r14), %ecx
	movl	%eax, 1176(%r14)
	movl	%ecx, 1180(%r14)
	leaq	1204(%r14), %rax
	jmp	.LBB7_83
.LBB7_79:                               # %if.then116
	leaq	699416(%rbx), %rsi
	movq	%rbx, %rdi
	callq	GetBaseViewId@PLT
	movl	%eax, 1176(%r14)
	cmpl	$0, 1216(%r14)
	je	.LBB7_82
# %bb.80:                               # %if.then124
	movl	1208(%r14), %eax
	movl	%eax, 1180(%r14)
	leaq	1204(%r14), %rax
	jmp	.LBB7_83
.LBB7_81:                               # %if.else151
	movq	4136(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, 1176(%r14)
.LBB7_82:                               # %if.end162.sink.split
	movl	$1, 1180(%r14)
	movq	8(%rsp), %rax                   # 8-byte Reload
.LBB7_83:                               # %if.end162.sink.split
	movl	(%rax), %eax
	movl	%eax, 1184(%r14)
.LBB7_84:                               # %if.end162
	movq	%r14, %rdi
	callq	assign_quant_params@PLT
	cmpl	$0, 220(%r14)
	je	.LBB7_88
# %bb.85:                               # %land.lhs.true164
	cmpl	$0, 851868(%rbx)
	jne	.LBB7_88
# %bb.86:                               # %land.lhs.true167
	cmpl	$0, 851872(%rbx)
	je	.LBB7_88
# %bb.87:                               # %if.then169
	movl	848776(%rbx), %eax
	movq	856456(%rbx), %rcx
	movl	%eax, 248(%rcx)
.LBB7_88:                               # %if.end170
	movq	856456(%rbx), %rdi
	movq	848696(%rbx), %rdx
	movq	%r14, %rsi
	callq	is_new_picture
	testl	%eax, %eax
	je	.LBB7_92
# %bb.89:                               # %if.then174
	cmpl	$0, 848720(%rbx)
	jne	.LBB7_91
# %bb.90:                               # %if.then177
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	init_picture
.LBB7_91:                               # %if.end178
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	CheckZeroByteVCL@PLT
	movl	$2, 4(%rsp)                     # 4-byte Folded Spill
	jmp	.LBB7_93
.LBB7_92:
	movl	$3, 4(%rsp)                     # 4-byte Folded Spill
.LBB7_93:                               # %if.end180
	movq	%r14, %rdi
	callq	setup_slice_methods@PLT
	cmpl	$0, 128(%r14)
	setne	%cl
	movl	188(%r14), %eax
	shll	%cl, %eax
	movl	%eax, 108(%r14)
	movq	8(%rbx), %rax
	cmpl	$0, 12(%rax)
	je	.LBB7_95
# %bb.94:                               # %if.then189
	movl	8(%r12), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	sarl	$3, %edx
	andl	$7, %eax
	cmpl	$1, %eax
	sbbl	$-1, %edx
	movq	312(%r14), %rdi
	addq	$8, %rdi
	movq	16(%r12), %rsi
	movq	%r12, %rcx
	callq	arideco_start_decoding@PLT
.LBB7_95:                               # %if.end200
	movl	$0, 849260(%rbx)
	jmp	.LBB7_61
.Lfunc_end7:
	.size	read_new_slice, .Lfunc_end7-read_new_slice
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI7_0:
	.quad	.LBB7_38
	.quad	.LBB7_16
	.quad	.LBB7_48
	.quad	.LBB7_41
	.quad	.LBB7_38
	.quad	.LBB7_53
	.quad	.LBB7_52
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_3
	.quad	.LBB7_3
	.quad	.LBB7_46
	.quad	.LBB7_56
	.quad	.LBB7_54
	.quad	.LBB7_50
	.quad	.LBB7_56
	.quad	.LBB7_56
	.quad	.LBB7_56
	.quad	.LBB7_56
	.quad	.LBB7_43
	.quad	.LBB7_56
	.quad	.LBB7_56
	.quad	.LBB7_56
	.quad	.LBB7_3
                                        # -- End function
	.text
	.globl	CopySliceInfo                   # -- Begin function CopySliceInfo
	.p2align	4, 0x90
	.type	CopySliceInfo,@function
CopySliceInfo:                          # @CopySliceInfo
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	1228(%rdi), %ecx
	movl	%ecx, 36(%rsi)
	movl	172(%rdi), %ecx
	movl	%ecx, 4(%rsi)
	movl	176(%rdi), %ecx
	movl	%ecx, (%rsi)
	testl	%ecx, %ecx
	je	.LBB8_2
# %bb.1:                                # %if.then
	movzbl	180(%rdi), %ecx
	movb	%cl, 28(%rsi)
.LBB8_2:                                # %if.end
	movl	56(%rdi), %ecx
	movl	%ecx, 8(%rsi)
	movzbl	48(%rdi), %ecx
	movb	%cl, 29(%rsi)
	cmpl	$0, 48(%rdi)
	je	.LBB8_4
# %bb.3:                                # %if.then9
	movl	52(%rdi), %ecx
	movl	%ecx, 32(%rsi)
.LBB8_4:                                # %if.end11
	movq	16(%rax), %rcx
	movl	2072(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB8_5
# %bb.6:                                # %if.end14
	cmpl	$1, %ecx
	jne	.LBB8_8
.LBB8_7:                                # %if.then19
	movl	88(%rdi), %eax
	movl	%eax, 20(%rsi)
	movl	92(%rdi), %eax
	movl	%eax, 24(%rsi)
.LBB8_8:                                # %if.end26
	movl	1176(%rdi), %eax
	movl	%eax, 40(%rsi)
	movl	1180(%rdi), %eax
	movl	%eax, 44(%rsi)
	movl	1184(%rdi), %eax
	movl	%eax, 48(%rsi)
	retq
.LBB8_5:                                # %if.then13
	movl	80(%rdi), %ecx
	movl	%ecx, 12(%rsi)
	movl	84(%rdi), %ecx
	movl	%ecx, 16(%rsi)
	movq	16(%rax), %rax
	movl	2072(%rax), %ecx
	cmpl	$1, %ecx
	je	.LBB8_7
	jmp	.LBB8_8
.Lfunc_end8:
	.size	CopySliceInfo, .Lfunc_end8-CopySliceInfo
	.cfi_endproc
                                        # -- End function
	.globl	exit_picture                    # -- Begin function exit_picture
	.p2align	4, 0x90
	.type	exit_picture,@function
exit_picture:                           # @exit_picture
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
	subq	$1160, %rsp                     # imm = 0x488
	.cfi_def_cfa_offset 1216
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB9_82
# %bb.1:                                # %lor.lhs.false
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	848704(%rdi), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	848716(%rdi), %eax
	cmpl	849012(%rdi), %eax
	je	.LBB9_4
# %bb.2:                                # %land.lhs.true
	cmpl	$3, 849088(%rbx)
	jne	.LBB9_82
# %bb.3:                                # %lor.lhs.false5
	cmpl	$0, 849280(%rbx)
	je	.LBB9_82
.LBB9_4:                                # %if.end
	cmpl	$0, 856824(%rbx)
	movq	%rbx, (%rsp)                    # 8-byte Spill
	je	.LBB9_6
.LBB9_5:                                # %if.else36
	cmpl	$0, 849280(%rbx)
	jne	.LBB9_9
# %bb.10:                               # %if.end41
	movq	(%r14), %rax
	cmpl	$0, 100(%rax)
	movq	%r14, 88(%rsp)                  # 8-byte Spill
	jne	.LBB9_11
.LBB9_45:                               # %if.end44
	cmpl	$0, 848876(%rbx)
	je	.LBB9_47
.LBB9_46:                               # %if.else48
	movl	848712(%rbx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 848712(%rbx)
.LBB9_47:                               # %if.end49
	movq	(%r14), %r13
	cmpl	$0, 44(%r13)
	jne	.LBB9_49
# %bb.48:                               # %lor.lhs.false52
	cmpl	$1, 348(%r13)
	jne	.LBB9_51
.LBB9_49:                               # %if.then54
	movl	856840(%rbx), %r8d
	movl	856844(%rbx), %r9d
	movl	64(%r13), %esi
	movl	68(%r13), %edx
	movl	356(%r13), %ecx
	movq	128(%r13), %rax
	movq	(%rax), %rdi
	callq	pad_buf
	cmpl	$0, 268(%r13)
	je	.LBB9_51
# %bb.50:                               # %if.then.i411
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	856848(%rax), %ebx
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	856852(%rax), %ebp
	movl	72(%r13), %r14d
	movl	76(%r13), %r15d
	movl	360(%r13), %r12d
	movq	136(%r13), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	movl	%r12d, %ecx
	movl	%ebx, %r8d
	movl	%ebp, %r9d
	callq	pad_buf
	movq	136(%r13), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	movl	%r14d, %esi
	movq	88(%rsp), %r14                  # 8-byte Reload
	movl	%r15d, %edx
	movl	%r12d, %ecx
	movl	%ebx, %r8d
	movq	(%rsp), %rbx                    # 8-byte Reload
	movl	%ebp, %r9d
	callq	pad_buf
.LBB9_51:                               # %if.end55
	movq	(%r14), %rsi
	movl	(%rsi), %r15d
	movl	16(%rsi), %eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movl	248(%rsi), %r12d
	movl	44(%rsi), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	296(%rsi), %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	28(%rsi), %eax
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	movl	252(%rsi), %ebp
	movslq	268(%rsi), %r13
	movq	856656(%rbx), %rdi
	callq	store_picture_in_dpb@PLT
	movq	$0, (%r14)
	cmpl	$0, 849028(%rbx)
	je	.LBB9_53
# %bb.52:                               # %if.then66
	movl	$0, 848944(%rbx)
.LBB9_53:                               # %if.end67
	movq	96(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 784(%rax)
	je	.LBB9_55
.LBB9_54:                               # %if.end207
	testl	$-3, %r15d
	movq	(%rsp), %rbx                    # 8-byte Reload
	jne	.LBB9_82
	jmp	.LBB9_70
.LBB9_6:                                # %land.lhs.true20
	movl	856856(%rbx), %eax
	movl	44(%rsi), %ecx
	btl	%ecx, %eax
	jae	.LBB9_5
# %bb.7:                                # %if.then22
	cmpl	$0, 849280(%rbx)
	je	.LBB9_65
# %bb.8:                                # %if.then25
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movl	216(%rax), %ebx
	movl	$0, 216(%rax)
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	change_plane_JV@PLT
	movq	(%r14), %rsi
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	DeblockPicture@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	848736(%rax), %rax
	movq	(%rax), %rax
	movl	$1, 216(%rax)
	movq	(%rsp), %rdi                    # 8-byte Reload
	movl	$1, %esi
	xorl	%edx, %edx
	callq	change_plane_JV@PLT
	movq	(%r14), %rsi
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	DeblockPicture@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	848736(%rax), %rax
	movq	(%rax), %rax
	movl	$2, 216(%rax)
	movq	(%rsp), %rdi                    # 8-byte Reload
	movl	$2, %esi
	xorl	%edx, %edx
	callq	change_plane_JV@PLT
	movq	(%r14), %rsi
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	DeblockPicture@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	848736(%rax), %rax
	movq	(%rax), %rax
	movl	%ebx, 216(%rax)
	movq	(%rsp), %rbx                    # 8-byte Reload
.LBB9_9:                                # %if.then39
	movq	%rbx, %rdi
	callq	make_frame_picture_JV@PLT
	movq	(%r14), %rax
	cmpl	$0, 100(%rax)
	movq	%r14, 88(%rsp)                  # 8-byte Spill
	je	.LBB9_45
.LBB9_11:                               # %if.then43
	movq	856456(%rbx), %r13
	cmpl	$0, 108(%r13)
	jle	.LBB9_44
# %bb.12:                               # %for.body.lr.ph.i
	movq	128(%r13), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	136(%r13), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	849124(%rbx), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	movq	%r13, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB9_14
.LBB9_43:                               # %for.body8.i104.i.epil
                                        #   in Loop: Header=BB9_14 Depth=1
	addq	%rcx, %rcx
	movq	(%rbp), %rdi
	addq	%rcx, %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%r14, %rdx
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%rcx, %r12
	callq	memcpy@PLT
	addq	8(%rbp), %r12
	movq	%r12, %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy@PLT
	.p2align	4, 0x90
.LBB9_13:                               # %for.inc.i
                                        #   in Loop: Header=BB9_14 Depth=1
	addl	$2, %r15d
	movswl	%r15w, %esi
	cmpl	%esi, 108(%r13)
	jle	.LBB9_44
.LBB9_14:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_19 Depth 2
                                        #     Child Loop BB9_23 Depth 2
                                        #     Child Loop BB9_27 Depth 2
                                        #     Child Loop BB9_33 Depth 2
                                        #     Child Loop BB9_37 Depth 2
                                        #     Child Loop BB9_41 Depth 2
	movq	184(%r13), %rax
	movswq	%r15w, %rcx
	cmpb	$0, (%rax,%rcx)
	je	.LBB9_13
# %bb.15:                               # %if.then.i
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movq	112(%rsp), %rdx                 # 8-byte Reload
	leaq	22(%rsp), %rcx
	leaq	20(%rsp), %r8
	callq	get_mb_pos@PLT
	movswq	20(%rsp), %rcx
	movswq	22(%rsp), %rax
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm1, 144(%rsp)
	movq	8(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	leaq	640(%rsp), %rdi
	movups	%xmm1, -464(%rdi)
	movups	%xmm0, -480(%rdi)
	movq	16(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, -448(%rdi)
	movups	%xmm1, -432(%rdi)
	movq	24(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -400(%rdi)
	movups	%xmm0, -416(%rdi)
	movq	32(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -368(%rdi)
	movups	%xmm0, -384(%rdi)
	movq	40(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -336(%rdi)
	movups	%xmm0, -352(%rdi)
	movq	48(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -304(%rdi)
	movups	%xmm0, -320(%rdi)
	movq	56(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -272(%rdi)
	movups	%xmm0, -288(%rdi)
	movq	64(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -240(%rdi)
	movups	%xmm0, -256(%rdi)
	movq	72(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -208(%rdi)
	movups	%xmm0, -224(%rdi)
	movq	80(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -176(%rdi)
	movups	%xmm0, -192(%rdi)
	movq	88(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -144(%rdi)
	movups	%xmm0, -160(%rdi)
	movq	96(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -112(%rdi)
	movups	%xmm0, -128(%rdi)
	movq	104(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -80(%rdi)
	movups	%xmm0, -96(%rdi)
	movq	112(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -48(%rdi)
	movups	%xmm0, -64(%rdi)
	movq	120(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, -16(%rdi)
	movups	%xmm0, -32(%rdi)
	movq	128(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm1, 16(%rdi)
	movups	%xmm0, (%rdi)
	movq	136(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 32(%rdi)
	movups	%xmm1, 48(%rdi)
	movq	144(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 64(%rdi)
	movups	%xmm1, 80(%rdi)
	movq	152(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 96(%rdi)
	movups	%xmm1, 112(%rdi)
	movq	160(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 128(%rdi)
	movups	%xmm1, 144(%rdi)
	movq	168(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 160(%rdi)
	movups	%xmm1, 176(%rdi)
	movq	176(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 192(%rdi)
	movups	%xmm1, 208(%rdi)
	movq	184(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 224(%rdi)
	movups	%xmm1, 240(%rdi)
	movq	192(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 256(%rdi)
	movups	%xmm1, 272(%rdi)
	movq	200(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 288(%rdi)
	movups	%xmm1, 304(%rdi)
	movq	208(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 320(%rdi)
	movups	%xmm1, 336(%rdi)
	movq	216(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 352(%rdi)
	movups	%xmm1, 368(%rdi)
	movq	224(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 384(%rdi)
	movups	%xmm1, 400(%rdi)
	movq	232(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 416(%rdi)
	movups	%xmm1, 432(%rdi)
	movq	240(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 448(%rdi)
	movups	%xmm1, 464(%rdi)
	movq	248(%rsi,%rcx,8), %rdx
	movups	(%rdx,%rax,2), %xmm0
	movups	16(%rdx,%rax,2), %xmm1
	movups	%xmm0, 480(%rdi)
	movups	%xmm1, 496(%rdi)
	movq	(%rsi,%rcx,8), %rdx
	movaps	128(%rsp), %xmm0
	movaps	144(%rsp), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	8(%rsi,%rcx,8), %rdx
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	16(%rsi,%rcx,8), %rdx
	movups	-480(%rdi), %xmm0
	movups	-464(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	24(%rsi,%rcx,8), %rdx
	movups	32(%rdi), %xmm0
	movups	48(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	32(%rsi,%rcx,8), %rdx
	movups	-448(%rdi), %xmm0
	movups	-432(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	40(%rsi,%rcx,8), %rdx
	movups	64(%rdi), %xmm0
	movups	80(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	48(%rsi,%rcx,8), %rdx
	movups	-416(%rdi), %xmm0
	movups	-400(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	56(%rsi,%rcx,8), %rdx
	movups	96(%rdi), %xmm0
	movups	112(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	64(%rsi,%rcx,8), %rdx
	movups	-384(%rdi), %xmm0
	movups	-368(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	72(%rsi,%rcx,8), %rdx
	movups	128(%rdi), %xmm0
	movups	144(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	80(%rsi,%rcx,8), %rdx
	movups	-352(%rdi), %xmm0
	movups	-336(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	88(%rsi,%rcx,8), %rdx
	movups	160(%rdi), %xmm0
	movups	176(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	96(%rsi,%rcx,8), %rdx
	movups	-320(%rdi), %xmm0
	movups	-304(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	104(%rsi,%rcx,8), %rdx
	movups	192(%rdi), %xmm0
	movups	208(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	112(%rsi,%rcx,8), %rdx
	movups	-288(%rdi), %xmm0
	movups	-272(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	120(%rsi,%rcx,8), %rdx
	movups	224(%rdi), %xmm0
	movups	240(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	128(%rsi,%rcx,8), %rdx
	movups	-256(%rdi), %xmm0
	movups	-240(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	136(%rsi,%rcx,8), %rdx
	movups	256(%rdi), %xmm0
	movups	272(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	144(%rsi,%rcx,8), %rdx
	movups	-224(%rdi), %xmm0
	movups	-208(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	152(%rsi,%rcx,8), %rdx
	movups	288(%rdi), %xmm0
	movups	304(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	160(%rsi,%rcx,8), %rdx
	movups	-192(%rdi), %xmm0
	movups	-176(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	168(%rsi,%rcx,8), %rdx
	movups	320(%rdi), %xmm0
	movups	336(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	176(%rsi,%rcx,8), %rdx
	movups	-160(%rdi), %xmm0
	movups	-144(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	184(%rsi,%rcx,8), %rdx
	movups	352(%rdi), %xmm0
	movups	368(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	192(%rsi,%rcx,8), %rdx
	movups	-128(%rdi), %xmm0
	movups	-112(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	200(%rsi,%rcx,8), %rdx
	movups	384(%rdi), %xmm0
	movups	400(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	208(%rsi,%rcx,8), %rdx
	movups	-96(%rdi), %xmm0
	movups	-80(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	216(%rsi,%rcx,8), %rdx
	movups	416(%rdi), %xmm0
	movups	432(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	224(%rsi,%rcx,8), %rdx
	movups	-64(%rdi), %xmm0
	movups	-48(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	232(%rsi,%rcx,8), %rdx
	movups	448(%rdi), %xmm0
	movups	464(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	240(%rsi,%rcx,8), %rdx
	movups	-32(%rdi), %xmm0
	movups	-16(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	movq	248(%rsi,%rcx,8), %rdx
	movups	480(%rdi), %xmm0
	movups	496(%rdi), %xmm1
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm1, 16(%rdx,%rax,2)
	cmpl	$0, 268(%r13)
	je	.LBB9_13
# %bb.16:                               # %if.then12.i
                                        #   in Loop: Header=BB9_14 Depth=1
	movslq	849108(%rbx), %r14
	imull	%r14d, %eax
	shrl	$4, %eax
	movw	%ax, 22(%rsp)
	movslq	849112(%rbx), %rdx
	imull	%edx, %ecx
	shrl	$4, %ecx
	movw	%cx, 20(%rsp)
	testq	%rdx, %rdx
	jle	.LBB9_13
# %bb.17:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	%r15d, 76(%rsp)                 # 4-byte Spill
	movswq	%cx, %r15
	shlq	$3, %r15
	movq	104(%rsp), %rcx                 # 8-byte Reload
	addq	(%rcx), %r15
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	leal	(%rdx,%rdx), %ecx
	addq	%r14, %r14
	cmpl	$2, %ecx
	movl	$1, %esi
	cmovgel	%ecx, %esi
	movswq	%ax, %rdx
	movq	%r15, %rbp
	leaq	128(%rsp), %r12
	cmpl	$4, %ecx
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	jl	.LBB9_21
# %bb.18:                               # %for.body.lr.ph.i.i.new
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movl	%esi, %ebx
	andl	$2147483644, %ebx               # imm = 0x7FFFFFFC
	movq	%rbp, %r15
	.p2align	4, 0x90
.LBB9_19:                               # %for.body.i56.i
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %r14
	leaq	(%rdx,%rdx), %r13
	movq	(%r15), %rsi
	addq	%r13, %rsi
	movq	%r12, %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	memcpy@PLT
	movq	8(%r15), %rsi
	addq	%r13, %rsi
	leaq	32(%r12), %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	memcpy@PLT
	movq	16(%r15), %rsi
	addq	%r13, %rsi
	leaq	64(%r12), %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	memcpy@PLT
	addq	$128, %r12
	addq	24(%r15), %r13
	addq	$32, %r15
	addq	$96, %r14
	movq	%r14, %rdi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addl	$-4, %ebx
	jne	.LBB9_19
# %bb.20:                               #   in Loop: Header=BB9_14 Depth=1
	movq	24(%rsp), %rsi                  # 8-byte Reload
.LBB9_21:                               # %for.body8.i67.i.preheader.unr-lcssa
                                        #   in Loop: Header=BB9_14 Depth=1
	testb	$3, %sil
	je	.LBB9_24
# %bb.22:                               # %for.body.i56.i.epil.preheader
                                        #   in Loop: Header=BB9_14 Depth=1
	andl	$3, %esi
	shll	$3, %esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB9_23:                               # %for.body.i56.i.epil
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%rbx,4), %rdi
	movq	%rsi, %r13
	leaq	(%rdx,%rdx), %rsi
	addq	(%r15,%rbx), %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	%r13, %rsi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	$8, %rbx
	cmpl	%ebx, %esi
	jne	.LBB9_23
.LBB9_24:                               # %for.body8.i67.i.preheader
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %rcx
	shlq	$5, %rcx
	cmpl	$1, %eax
	jne	.LBB9_26
# %bb.25:                               #   in Loop: Header=BB9_14 Depth=1
	addq	%rsp, %rcx
	addq	$128, %rcx
	leaq	128(%rsp), %r14
	movq	56(%rsp), %r13                  # 8-byte Reload
	testb	$1, %al
	movq	(%rsp), %rbx                    # 8-byte Reload
	movl	76(%rsp), %r15d                 # 4-byte Reload
	jne	.LBB9_29
	jmp	.LBB9_30
.LBB9_26:                               # %for.body8.i67.i.preheader.new
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movl	%eax, %r12d
	andl	$2147483646, %r12d              # imm = 0x7FFFFFFE
	leaq	128(%rsp), %r14
	movq	8(%rsp), %r13                   # 8-byte Reload
	.p2align	4, 0x90
.LBB9_27:                               # %for.body8.i67.i
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rsp), %rbx                  # 8-byte Reload
	leaq	(%r14,%rbx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	(%rdx,%rdx), %r15
	movq	(%rbp), %rdi
	addq	%r15, %rdi
	leaq	32(%r14), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	8(%rbp), %rdi
	addq	%r15, %rdi
	addq	%r14, %rbx
	addq	$32, %rbx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	16(%rbp), %rdi
	addq	%r15, %rdi
	addq	$64, %r14
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy@PLT
	addq	24(%rbp), %r15
	addq	$32, %rbp
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addl	$-2, %r12d
	jne	.LBB9_27
# %bb.28:                               # %update_mbaff_macroblock_data.exit80.i.unr-lcssa.loopexit
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	%r14, %rcx
	movq	56(%rsp), %r13                  # 8-byte Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	testb	$1, %al
	movq	(%rsp), %rbx                    # 8-byte Reload
	movl	76(%rsp), %r15d                 # 4-byte Reload
	je	.LBB9_30
.LBB9_29:                               # %for.body8.i67.i.epil
                                        #   in Loop: Header=BB9_14 Depth=1
	addq	%rdx, %rdx
	movq	(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%rbx, %r13
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%r14, %rdx
	callq	memcpy@PLT
	addq	8(%rbp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rbx
	movq	56(%rsp), %r13                  # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB9_30:                               # %update_mbaff_macroblock_data.exit80.i
                                        #   in Loop: Header=BB9_14 Depth=1
	movslq	849112(%rbx), %rcx
	testq	%rcx, %rcx
	jle	.LBB9_13
# %bb.31:                               # %for.body.lr.ph.i84.i
                                        #   in Loop: Header=BB9_14 Depth=1
	movswq	20(%rsp), %r15
	shlq	$3, %r15
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	8(%rax), %r15
	movslq	849108(%rbx), %r14
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	leal	(%rcx,%rcx), %eax
	addq	%r14, %r14
	cmpl	$2, %eax
	movl	$1, %edx
	cmovgel	%eax, %edx
	movswq	22(%rsp), %rcx
	movq	%r15, %rbp
	leaq	128(%rsp), %r12
	cmpl	$4, %eax
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	jl	.LBB9_35
# %bb.32:                               # %for.body.lr.ph.i84.i.new
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, %ebx
	andl	$2147483644, %ebx               # imm = 0x7FFFFFFC
	movq	%rbp, %r15
	.p2align	4, 0x90
.LBB9_33:                               # %for.body.i90.i
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %r14
	leaq	(%rcx,%rcx), %r13
	movq	(%r15), %rsi
	addq	%r13, %rsi
	movq	%r12, %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	memcpy@PLT
	movq	8(%r15), %rsi
	addq	%r13, %rsi
	leaq	32(%r12), %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	memcpy@PLT
	movq	16(%r15), %rsi
	addq	%r13, %rsi
	leaq	64(%r12), %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	memcpy@PLT
	addq	$128, %r12
	addq	24(%r15), %r13
	addq	$32, %r15
	addq	$96, %r14
	movq	%r14, %rdi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addl	$-4, %ebx
	jne	.LBB9_33
# %bb.34:                               #   in Loop: Header=BB9_14 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
.LBB9_35:                               # %for.body8.i104.i.preheader.unr-lcssa
                                        #   in Loop: Header=BB9_14 Depth=1
	testb	$3, %dl
	je	.LBB9_38
# %bb.36:                               # %for.body.i90.i.epil.preheader
                                        #   in Loop: Header=BB9_14 Depth=1
	andl	$3, %edx
	shll	$3, %edx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB9_37:                               # %for.body.i90.i.epil
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%rbx,4), %rdi
	leaq	(%rcx,%rcx), %rsi
	addq	(%r15,%rbx), %rsi
	movq	%rdx, %r13
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	%r13, %rdx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	$8, %rbx
	cmpl	%ebx, %edx
	jne	.LBB9_37
.LBB9_38:                               # %for.body8.i104.i.preheader
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %r8
	shlq	$5, %r8
	cmpl	$1, %eax
	jne	.LBB9_40
# %bb.39:                               #   in Loop: Header=BB9_14 Depth=1
	addq	%rsp, %r8
	addq	$128, %r8
	leaq	128(%rsp), %r14
	movq	56(%rsp), %r13                  # 8-byte Reload
	testb	$1, %al
	movq	(%rsp), %rbx                    # 8-byte Reload
	movl	76(%rsp), %r15d                 # 4-byte Reload
	je	.LBB9_13
	jmp	.LBB9_43
.LBB9_40:                               # %for.body8.i104.i.preheader.new
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movl	%eax, %r12d
	andl	$2147483646, %r12d              # imm = 0x7FFFFFFE
	leaq	128(%rsp), %r14
	movq	8(%rsp), %r13                   # 8-byte Reload
	.p2align	4, 0x90
.LBB9_41:                               # %for.body8.i104.i
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rsp), %rbx                  # 8-byte Reload
	leaq	(%r14,%rbx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	(%rcx,%rcx), %r15
	movq	(%rbp), %rdi
	addq	%r15, %rdi
	leaq	32(%r14), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	8(%rbp), %rdi
	addq	%r15, %rdi
	addq	%r14, %rbx
	addq	$32, %rbx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	16(%rbp), %rdi
	addq	%r15, %rdi
	addq	$64, %r14
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy@PLT
	addq	24(%rbp), %r15
	addq	$32, %rbp
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addl	$-2, %r12d
	jne	.LBB9_41
# %bb.42:                               # %for.inc.i.loopexit.unr-lcssa.loopexit
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	40(%rsp), %r8                   # 8-byte Reload
	addq	%r14, %r8
	movq	56(%rsp), %r13                  # 8-byte Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	testb	$1, %al
	movq	(%rsp), %rbx                    # 8-byte Reload
	movl	76(%rsp), %r15d                 # 4-byte Reload
	je	.LBB9_13
	jmp	.LBB9_43
.LBB9_44:                               # %MbAffPostProc.exit
	movq	88(%rsp), %r14                  # 8-byte Reload
	cmpl	$0, 848876(%rbx)
	jne	.LBB9_46
	jmp	.LBB9_47
.LBB9_55:                               # %if.then69
	cmpl	$1, %r15d
	ja	.LBB9_58
# %bb.56:                               # %if.then73
	cmpl	$2, %r12d
	sete	%al
	testl	%ebp, %ebp
	setne	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB9_61
# %bb.57:                               # %if.then77
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	$5391433, 856688(%rax)          # imm = 0x524449
	jmp	.LBB9_63
.LBB9_58:                               # %if.else127
	cmpl	$2, %r15d
	jne	.LBB9_54
# %bb.59:                               # %if.then129
	cmpl	$2, %r12d
	sete	%al
	testl	%ebp, %ebp
	setne	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB9_66
# %bb.60:                               # %if.then133
	movq	(%rsp), %r15                    # 8-byte Reload
	leaq	856688(%r15), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movl	$8, %edx
	subq	%rax, %rdx
	movl	$.L.str.35, %esi
	movq	%rbx, %rdi
	movq	%r15, %rbx
	jmp	.LBB9_69
.LBB9_61:                               # %if.else78
	cmpl	$2, %r12d
	jne	.LBB9_83
# %bb.62:                               # %if.then80
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	$2115872, 856688(%rax)          # imm = 0x204920
.LBB9_63:                               # %if.end117
	testl	%r15d, %r15d
	jne	.LBB9_82
# %bb.64:                               # %if.then119
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	856688(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movl	$8, %edx
	subq	%rax, %rdx
	movl	$.L.str.34, %esi
	jmp	.LBB9_68
.LBB9_65:                               # %if.else
	movq	%rbx, %rdi
	callq	DeblockPicture@PLT
	movq	(%r14), %rax
	cmpl	$0, 100(%rax)
	movq	%r14, 88(%rsp)                  # 8-byte Spill
	jne	.LBB9_11
	jmp	.LBB9_45
.LBB9_66:                               # %if.else141
	cmpl	$2, %r12d
	movq	(%rsp), %rax                    # 8-byte Reload
	jne	.LBB9_87
# %bb.67:                               # %if.then143
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	856688(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movl	$8, %edx
	subq	%rax, %rdx
	movl	$.L.str.36, %esi
.LBB9_68:                               # %if.then211
	movq	%rbx, %rdi
	movq	(%rsp), %rbx                    # 8-byte Reload
.LBB9_69:                               # %if.then211
	callq	strncat@PLT
.LBB9_70:                               # %if.then211
	leaq	(,%r13,2), %rax
	addq	%r13, %rax
	leaq	.L__const.exit_picture.yuv_types(,%rax,2), %rsi
	leaq	128(%rsp), %r14
	movq	%r14, %rdi
	callq	strcpy@PLT
	movq	96(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 784(%rax)
	je	.LBB9_72
# %bb.71:                               # %if.else244
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	80(%rsp), %r14                  # 8-byte Reload
	movl	(%r14), %edx
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB9_76
.LBB9_72:                               # %if.then218
	cmpl	$-1, 855988(%rbx)
	je	.LBB9_74
# %bb.73:                               # %if.then222
	movq	848704(%rbx), %rax
	movq	stdout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movl	856004(%rbx), %edx
	leaq	856688(%rbx), %rcx
	movss	4(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	8(%rax), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	12(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.43, %esi
	movl	32(%rsp), %r8d                  # 4-byte Reload
	movl	56(%rsp), %r9d                  # 4-byte Reload
	movb	$3, %al
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	56(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	fprintf@PLT
	jmp	.LBB9_75
.LBB9_74:                               # %if.else236
	.cfi_def_cfa_offset 1216
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	856004(%rbx), %edx
	leaq	856688(%rbx), %rcx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.44, %esi
	movl	32(%rsp), %r8d                  # 4-byte Reload
	movl	56(%rsp), %r9d                  # 4-byte Reload
	xorl	%eax, %eax
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	56(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	fprintf@PLT
.LBB9_75:                               # %if.end246
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	80(%rsp), %r14                  # 8-byte Reload
.LBB9_76:                               # %if.end246
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB9_79
# %bb.77:                               # %switch.early.test
	movl	$856000, %eax                   # imm = 0xD0FC0
	cmpl	$4, %r12d
	ja	.LBB9_80
# %bb.78:                               # %switch.early.test
	movl	$21, %ecx
	btl	%r12d, %ecx
	jae	.LBB9_80
.LBB9_79:                               # %if.then258
	movq	848736(%rbx), %rax
	movq	(%rax), %rcx
	movl	$848712, %eax                   # imm = 0xCF348
	cmpl	$0, 1176(%rcx)
	je	.LBB9_81
.LBB9_80:                               # %if.end268.sink.split
	incl	(%rbx,%rax)
.LBB9_81:                               # %if.end268
	incl	(%r14)
	incl	856008(%rbx)
.LBB9_82:                               # %cleanup
	addq	$1160, %rsp                     # imm = 0x488
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
.LBB9_83:                               # %if.else84
	.cfi_def_cfa_offset 1216
	cmpl	$4, %r12d
	je	.LBB9_92
# %bb.84:                               # %if.else84
	cmpl	$3, %r12d
	je	.LBB9_91
# %bb.85:                               # %if.else84
	testl	%r12d, %r12d
	jne	.LBB9_93
# %bb.86:                               # %if.then86
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	$2117664, 856688(%rax)          # imm = 0x205020
	jmp	.LBB9_63
.LBB9_87:                               # %if.else151
	cmpl	$4, %r12d
	je	.LBB9_96
# %bb.88:                               # %if.else151
	cmpl	$3, %r12d
	je	.LBB9_95
# %bb.89:                               # %if.else151
	testl	%r12d, %r12d
	jne	.LBB9_97
# %bb.90:                               # %if.then153
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	856688(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movl	$8, %edx
	subq	%rax, %rdx
	movl	$.L.str.37, %esi
	jmp	.LBB9_68
.LBB9_91:                               # %if.then92
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	$2117715, 856688(%rax)          # imm = 0x205053
	jmp	.LBB9_63
.LBB9_92:                               # %if.then98
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	$2115923, 856688(%rax)          # imm = 0x204953
	jmp	.LBB9_63
.LBB9_93:                               # %if.else102
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB9_99
# %bb.94:                               # %if.then104
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	$2114080, 856688(%rax)          # imm = 0x204220
	jmp	.LBB9_63
.LBB9_95:                               # %if.then163
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	856688(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movl	$8, %edx
	subq	%rax, %rdx
	movl	$.L.str.38, %esi
	jmp	.LBB9_68
.LBB9_96:                               # %if.then173
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	856688(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movl	$8, %edx
	subq	%rax, %rdx
	movl	$.L.str.39, %esi
	jmp	.LBB9_68
.LBB9_97:                               # %if.else181
	leaq	856688(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movl	$8, %edx
	subq	%rax, %rdx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB9_100
# %bb.98:                               # %if.then183
	movl	$.L.str.40, %esi
	jmp	.LBB9_101
.LBB9_99:                               # %if.else108
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	$2122272, 856688(%rax)          # imm = 0x206220
	jmp	.LBB9_63
.LBB9_100:                              # %if.else191
	movl	$.L.str.41, %esi
.LBB9_101:                              # %if.then211
	movq	%rbx, %rdi
	callq	strncat@PLT
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB9_70
.Lfunc_end9:
	.size	exit_picture, .Lfunc_end9-exit_picture
	.cfi_endproc
                                        # -- End function
	.globl	buffer2img                      # -- Begin function buffer2img
	.p2align	4, 0x90
	.type	buffer2img,@function
buffer2img:                             # @buffer2img
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
	movl	%r8d, %r12d
	movl	%ecx, %r13d
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpl	$3, %r8d
	jl	.LBB10_2
# %bb.1:                                # %if.then
	movl	$.L.str, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB10_2:                               # %if.end
	callq	testEndian@PLT
	testl	%eax, %eax
	movl	%ebx, 4(%rsp)                   # 4-byte Spill
	je	.LBB10_31
# %bb.3:                                # %if.then1
	cmpl	$1, %r12d
	je	.LBB10_23
# %bb.4:                                # %if.then1
	cmpl	$2, %r12d
	je	.LBB10_16
# %bb.5:                                # %if.then1
	cmpl	$4, %r12d
	jne	.LBB10_15
# %bb.6:                                # %for.cond39.preheader
	testl	%r13d, %r13d
	setle	%al
	testl	%ebx, %ebx
	setle	%cl
	orb	%al, %cl
	jne	.LBB10_15
# %bb.7:                                # %for.cond43.preheader.us.preheader
	movl	%ebx, %eax
	movl	%r13d, %ecx
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	leaq	(,%rax,4), %rsi
	movl	$4, %edi
	xorl	%r8d, %r8d
	jmp	.LBB10_8
	.p2align	4, 0x90
.LBB10_14:                              # %for.cond43.for.inc71_crit_edge.us
                                        #   in Loop: Header=BB10_8 Depth=1
	incq	%r8
	addq	%rsi, %rdi
	cmpq	%rcx, %r8
	movl	4(%rsp), %ebx                   # 4-byte Reload
	je	.LBB10_15
.LBB10_8:                               # %for.cond43.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_11 Depth 2
	cmpl	$1, %ebx
	jne	.LBB10_10
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB10_12
	.p2align	4, 0x90
.LBB10_10:                              # %for.body46.us.preheader
                                        #   in Loop: Header=BB10_8 Depth=1
	movq	%rdi, %r10
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB10_11:                              # %for.body46.us
                                        #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-4(%r10), %r11d
	andl	$-4, %r11d
	movl	(%r14,%r11), %r11d
	bswapl	%r11d
	movq	(%r15,%r8,8), %rbx
	movw	%r11w, (%rbx,%r9,2)
	movl	%r10d, %r11d
	andl	$-4, %r11d
	movl	(%r14,%r11), %r11d
	bswapl	%r11d
	movq	(%r15,%r8,8), %rbx
	movw	%r11w, 2(%rbx,%r9,2)
	addq	$2, %r9
	addq	$8, %r10
	cmpq	%r9, %rdx
	jne	.LBB10_11
.LBB10_12:                              # %for.cond43.for.inc71_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB10_8 Depth=1
	testb	$1, %al
	je	.LBB10_14
# %bb.13:                               # %for.body46.us.epil
                                        #   in Loop: Header=BB10_8 Depth=1
	movq	%r8, %r10
	imulq	%rax, %r10
	addl	%r9d, %r10d
	shll	$2, %r10d
	movl	(%r14,%r10), %r10d
	bswapl	%r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, (%r11,%r9,2)
	jmp	.LBB10_14
.LBB10_31:                              # %if.else
	cmpl	$1, %r12d
	jne	.LBB10_32
# %bb.42:                               # %for.cond77.preheader
	testl	%r13d, %r13d
	setle	%al
	testl	%ebx, %ebx
	setle	%cl
	orb	%al, %cl
	jne	.LBB10_51
# %bb.43:                               # %for.cond81.preheader.us.preheader
	movl	%r13d, %eax
	movl	%ebx, %ecx
	movl	%ecx, %edx
	andl	$3, %edx
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	xorl	%esi, %esi
	jmp	.LBB10_44
	.p2align	4, 0x90
.LBB10_50:                              # %for.cond81.for.inc93_crit_edge.us
                                        #   in Loop: Header=BB10_44 Depth=1
	incq	%rsi
	cmpq	%rax, %rsi
	je	.LBB10_51
.LBB10_44:                              # %for.cond81.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_45 Depth 2
                                        #     Child Loop BB10_49 Depth 2
	xorl	%edi, %edi
	cmpl	$4, %ebx
	jb	.LBB10_47
	.p2align	4, 0x90
.LBB10_45:                              # %for.body84.us
                                        #   Parent Loop BB10_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rdi), %r8d
	movq	(%r15,%rsi,8), %r9
	movw	%r8w, (%r9,%rdi,2)
	movzbl	1(%r14,%rdi), %r8d
	movq	(%r15,%rsi,8), %r9
	movw	%r8w, 2(%r9,%rdi,2)
	movzbl	2(%r14,%rdi), %r8d
	movq	(%r15,%rsi,8), %r9
	movw	%r8w, 4(%r9,%rdi,2)
	movzbl	3(%r14,%rdi), %r8d
	movq	(%r15,%rsi,8), %r9
	movw	%r8w, 6(%r9,%rdi,2)
	addq	$4, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB10_45
# %bb.46:                               # %for.cond81.for.inc93_crit_edge.us.unr-lcssa.loopexit
                                        #   in Loop: Header=BB10_44 Depth=1
	addq	%rdi, %r14
.LBB10_47:                              # %for.cond81.for.inc93_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB10_44 Depth=1
	testq	%rdx, %rdx
	je	.LBB10_50
# %bb.48:                               # %for.body84.us.epil.preheader
                                        #   in Loop: Header=BB10_44 Depth=1
	movq	%rdx, %r8
	.p2align	4, 0x90
.LBB10_49:                              # %for.body84.us.epil
                                        #   Parent Loop BB10_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14), %r9d
	incq	%r14
	movq	(%r15,%rsi,8), %r10
	movw	%r9w, (%r10,%rdi,2)
	incq	%rdi
	decq	%r8
	jne	.LBB10_49
	jmp	.LBB10_50
.LBB10_15:                              # %sw.default
	movl	$.L.str.1, %edi
	movl	$500, %esi                      # imm = 0x1F4
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
	jmp	error@PLT                       # TAILCALL
.LBB10_32:                              # %for.cond97.preheader
	.cfi_def_cfa_offset 112
	testl	%r13d, %r13d
	jle	.LBB10_51
# %bb.33:                               # %for.body100.lr.ph
	testl	%ebx, %ebx
	jle	.LBB10_51
# %bb.34:                               # %for.body100.us.preheader
	movslq	%r12d, %r12
	movl	%ebx, %eax
	movl	%r13d, %ecx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	andl	$2147483646, %ecx               # imm = 0x7FFFFFFE
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%r12, %rcx
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	imulq	%rax, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	leaq	(%r12,%r12), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	movq	%r14, %r13
	jmp	.LBB10_35
	.p2align	4, 0x90
.LBB10_41:                              # %for.cond102.for.end121_crit_edge.us
                                        #   in Loop: Header=BB10_35 Depth=1
	incq	%rbp
	movq	32(%rsp), %r13                  # 8-byte Reload
	addq	16(%rsp), %r13                  # 8-byte Folded Reload
	cmpq	24(%rsp), %rbp                  # 8-byte Folded Reload
	movl	4(%rsp), %ebx                   # 4-byte Reload
	je	.LBB10_51
.LBB10_35:                              # %for.body100.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_38 Depth 2
	cmpl	$1, %ebx
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	jne	.LBB10_37
# %bb.36:                               #   in Loop: Header=BB10_35 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB10_39
	.p2align	4, 0x90
.LBB10_37:                              # %for.body105.us.preheader
                                        #   in Loop: Header=BB10_35 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB10_38:                              # %for.body105.us
                                        #   Parent Loop BB10_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15,%rbp,8), %rax
	leaq	(%rbx,%rbx), %rdi
	movw	$0, (%rax,%rbx,2)
	addq	(%r15,%rbp,8), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	(%r15,%rbp,8), %rax
	movw	$0, 2(%rax,%rbx,2)
	movq	(%r15,%rbp,8), %rax
	leaq	(%rax,%rbx,2), %rdi
	addq	$2, %rdi
	leaq	(%r12,%r13), %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	addq	$2, %rbx
	addq	40(%rsp), %r13                  # 8-byte Folded Reload
	cmpq	%rbx, 48(%rsp)                  # 8-byte Folded Reload
	jne	.LBB10_38
.LBB10_39:                              # %for.cond102.for.end121_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB10_35 Depth=1
	testb	$1, 8(%rsp)                     # 1-byte Folded Reload
	je	.LBB10_41
# %bb.40:                               # %for.body105.us.epil
                                        #   in Loop: Header=BB10_35 Depth=1
	movq	%rbp, %rsi
	movq	(%r15,%rbp,8), %rax
	leaq	(%rbx,%rbx), %rdi
	movw	$0, (%rax,%rbx,2)
	addq	(%r15,%rbp,8), %rdi
	imulq	8(%rsp), %rsi                   # 8-byte Folded Reload
	addq	%rbx, %rsi
	imulq	%r12, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	jmp	.LBB10_41
.LBB10_16:                              # %for.cond14.preheader
	testl	%r13d, %r13d
	setle	%al
	testl	%ebx, %ebx
	setle	%cl
	orb	%al, %cl
	jne	.LBB10_51
# %bb.17:                               # %for.cond18.preheader.us.preheader
	movl	%ebx, %eax
	movl	%r13d, %ecx
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	leaq	2(%r14), %rsi
	leaq	(%rax,%rax), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB10_18
	.p2align	4, 0x90
.LBB10_22:                              # %for.cond18.for.inc35_crit_edge.us
                                        #   in Loop: Header=BB10_18 Depth=1
	incq	%r8
	addq	%rdi, %rsi
	cmpq	%rcx, %r8
	je	.LBB10_51
.LBB10_18:                              # %for.cond18.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_19 Depth 2
	xorl	%r9d, %r9d
	cmpl	$1, %ebx
	je	.LBB10_20
	.p2align	4, 0x90
.LBB10_19:                              # %for.body21.us
                                        #   Parent Loop BB10_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-2(%rsi,%r9,2), %r10d
	rolw	$8, %r10w
	movq	(%r15,%r8,8), %r11
	movw	%r10w, (%r11,%r9,2)
	movzwl	(%rsi,%r9,2), %r10d
	rolw	$8, %r10w
	movq	(%r15,%r8,8), %r11
	movw	%r10w, 2(%r11,%r9,2)
	addq	$2, %r9
	cmpq	%r9, %rdx
	jne	.LBB10_19
.LBB10_20:                              # %for.cond18.for.inc35_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB10_18 Depth=1
	testb	$1, %al
	je	.LBB10_22
# %bb.21:                               # %for.body21.us.epil
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	%r8, %r10
	imulq	%rax, %r10
	addq	%r9, %r10
	movzwl	(%r14,%r10,2), %r10d
	rolw	$8, %r10w
	movq	(%r15,%r8,8), %r11
	movw	%r10w, (%r11,%r9,2)
	jmp	.LBB10_22
.LBB10_23:                              # %for.cond.preheader
	testl	%r13d, %r13d
	setle	%al
	testl	%ebx, %ebx
	setle	%cl
	orb	%al, %cl
	jne	.LBB10_51
# %bb.24:                               # %for.cond3.preheader.us.preheader
	movl	%ebx, %eax
	movl	%r13d, %ecx
	movl	%eax, %edx
	andl	$3, %edx
	movl	%eax, %esi
	andl	$2147483644, %esi               # imm = 0x7FFFFFFC
	leaq	3(%r14), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB10_25
	.p2align	4, 0x90
.LBB10_30:                              # %for.cond3.for.inc10_crit_edge.us
                                        #   in Loop: Header=BB10_25 Depth=1
	incq	%r8
	addq	%rax, %rdi
	addq	%rax, %r14
	cmpq	%rcx, %r8
	movl	4(%rsp), %ebx                   # 4-byte Reload
	je	.LBB10_51
.LBB10_25:                              # %for.cond3.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_26 Depth 2
                                        #     Child Loop BB10_29 Depth 2
	xorl	%r9d, %r9d
	cmpl	$4, %ebx
	jb	.LBB10_27
	.p2align	4, 0x90
.LBB10_26:                              # %for.body5.us
                                        #   Parent Loop BB10_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%rdi,%r9), %r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, (%r11,%r9,2)
	movzbl	-2(%rdi,%r9), %r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, 2(%r11,%r9,2)
	movzbl	-1(%rdi,%r9), %r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, 4(%r11,%r9,2)
	movzbl	(%rdi,%r9), %r10d
	movq	(%r15,%r8,8), %r11
	movw	%r10w, 6(%r11,%r9,2)
	addq	$4, %r9
	cmpq	%r9, %rsi
	jne	.LBB10_26
.LBB10_27:                              # %for.cond3.for.inc10_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB10_25 Depth=1
	testq	%rdx, %rdx
	je	.LBB10_30
# %bb.28:                               # %for.body5.us.epil.preheader
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	%rdx, %r10
	.p2align	4, 0x90
.LBB10_29:                              # %for.body5.us.epil
                                        #   Parent Loop BB10_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%r9), %r11d
	movq	(%r15,%r8,8), %rbx
	movw	%r11w, (%rbx,%r9,2)
	incq	%r9
	decq	%r10
	jne	.LBB10_29
	jmp	.LBB10_30
.LBB10_51:                              # %if.end126
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
.Lfunc_end10:
	.size	buffer2img, .Lfunc_end10-buffer2img
	.cfi_endproc
                                        # -- End function
	.globl	compute_SSE                     # -- Begin function compute_SSE
	.p2align	4, 0x90
	.type	compute_SSE,@function
compute_SSE:                            # @compute_SSE
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $r9d killed $r9d def $r9
	testl	%r8d, %r8d
	jle	.LBB11_1
# %bb.3:                                # %for.body.lr.ph
	testl	%r9d, %r9d
	jle	.LBB11_1
# %bb.4:                                # %for.body.us.preheader
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
	movslq	%edx, %rbx
	movslq	%ecx, %r13
	movl	%r8d, %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movl	%r9d, %eax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483644, %eax               # imm = 0x7FFFFFFC
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	addl	%eax, %eax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	leal	(%r9,%r9), %r14d
	andl	$-8, %r14d
	leaq	6(,%rbx,2), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	leaq	6(,%r13,2), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r9, -24(%rsp)                  # 8-byte Spill
	movq	%rsi, -32(%rsp)                 # 8-byte Spill
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	movq	%rbx, -48(%rsp)                 # 8-byte Spill
	movq	%r13, -56(%rsp)                 # 8-byte Spill
	jmp	.LBB11_5
	.p2align	4, 0x90
.LBB11_18:                              # %for.cond7.for.inc13_crit_edge.us
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	incq	%rcx
	cmpq	-16(%rsp), %rcx                 # 8-byte Folded Reload
	je	.LBB11_19
.LBB11_5:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_8 Depth 2
                                        #     Child Loop BB11_13 Depth 2
                                        #     Child Loop BB11_17 Depth 2
	movq	(%rdi,%rcx,8), %r12
	leaq	(%r12,%rbx,2), %rbp
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	(%rsi,%rcx,8), %r10
	leaq	(%r10,%r13,2), %r15
	cmpl	$4, %r9d
	jae	.LBB11_7
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB11_10
	.p2align	4, 0x90
.LBB11_7:                               # %vector.ph
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, %r15
	addq	%rcx, %rbp
	addq	-88(%rsp), %r12                 # 8-byte Folded Reload
	addq	-96(%rsp), %r10                 # 8-byte Folded Reload
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB11_8:                               # %vector.body
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-6(%r12,%rcx), %ebx
	movzwl	-4(%r12,%rcx), %r11d
	movzwl	-2(%r12,%rcx), %r13d
	movzwl	(%r12,%rcx), %edi
	movzwl	-6(%r10,%rcx), %r9d
	subl	%r9d, %ebx
	movzwl	-4(%r10,%rcx), %r9d
	subl	%r9d, %r11d
	movzwl	-2(%r10,%rcx), %r9d
	subl	%r9d, %r13d
	movzwl	(%r10,%rcx), %r9d
	subl	%r9d, %edi
	imull	%ebx, %ebx
	imull	%r11d, %r11d
	imull	%r13d, %r13d
	imull	%edi, %edi
	addq	%rbx, %rax
	addq	%r11, %rsi
	addq	%r13, %rdx
	addq	%rdi, %r8
	addq	$8, %rcx
	cmpq	%rcx, %r14
	jne	.LBB11_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB11_5 Depth=1
	addq	%rax, %rsi
	addq	%rsi, %rdx
	addq	%rdx, %r8
	movq	%r8, %rax
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %r12d
	cmpl	-64(%rsp), %ecx                 # 4-byte Folded Reload
	movq	-24(%rsp), %r9                  # 8-byte Reload
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	-48(%rsp), %rbx                 # 8-byte Reload
	movq	-56(%rsp), %r13                 # 8-byte Reload
	je	.LBB11_18
.LBB11_10:                              # %for.body9.us.preheader
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	%r9d, %ecx
	subl	%r12d, %ecx
	andl	$3, %ecx
	je	.LBB11_11
# %bb.12:                               # %for.body9.us.prol.preheader
                                        #   in Loop: Header=BB11_5 Depth=1
	negl	%ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB11_13:                              # %for.body9.us.prol
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp), %r8d
	addq	$2, %rbp
	movzwl	(%r15), %r10d
	addq	$2, %r15
	subl	%r10d, %r8d
	imull	%r8d, %r8d
	addq	%r8, %rax
	decl	%edx
	cmpl	%edx, %ecx
	jne	.LBB11_13
# %bb.14:                               # %for.body9.us.prol.loopexit.loopexit
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	%r12d, %r8d
	subl	%edx, %r8d
	subl	%r9d, %r12d
	cmpl	$-4, %r12d
	ja	.LBB11_18
	jmp	.LBB11_16
	.p2align	4, 0x90
.LBB11_11:                              #   in Loop: Header=BB11_5 Depth=1
	movl	%r12d, %r8d
	subl	%r9d, %r12d
	cmpl	$-4, %r12d
	ja	.LBB11_18
.LBB11_16:                              # %for.body9.us.preheader1
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	%r9d, %ecx
	subl	%r8d, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB11_17:                              # %for.body9.us
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp,%rdx,2), %r10d
	movzwl	(%r15,%rdx,2), %r8d
	subl	%r8d, %r10d
	imull	%r10d, %r10d
	addq	%rax, %r10
	movzwl	2(%rbp,%rdx,2), %eax
	movzwl	2(%r15,%rdx,2), %r8d
	subl	%r8d, %eax
	imull	%eax, %eax
	movzwl	4(%rbp,%rdx,2), %r11d
	movzwl	4(%r15,%rdx,2), %r8d
	subl	%r8d, %r11d
	imull	%r11d, %r11d
	addq	%rax, %r11
	addq	%r10, %r11
	movzwl	6(%rbp,%rdx,2), %eax
	movzwl	6(%r15,%rdx,2), %r8d
	subl	%r8d, %eax
	imull	%eax, %eax
	addq	%r11, %rax
	addq	$4, %rdx
	cmpl	%edx, %ecx
	jne	.LBB11_17
	jmp	.LBB11_18
.LBB11_1:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	xorl	%eax, %eax
	retq
.LBB11_19:
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
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
	retq
.Lfunc_end11:
	.size	compute_SSE, .Lfunc_end11-compute_SSE
	.cfi_endproc
                                        # -- End function
	.globl	calculate_frame_no              # -- Begin function calculate_frame_no
	.p2align	4, 0x90
	.type	calculate_frame_no,@function
calculate_frame_no:                     # @calculate_frame_no
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rcx
	movl	4(%rsi), %eax
	movl	776(%rcx), %esi
	cltd
	idivl	%esi
	movl	%eax, %ecx
	testl	%eax, %eax
	je	.LBB12_2
# %bb.1:                                # %cond.end.if.end_crit_edge
	movl	849220(%rdi), %eax
	jmp	.LBB12_3
.LBB12_2:                               # %if.then
	movl	849232(%rdi), %eax
	imull	848712(%rdi), %eax
	cltd
	idivl	%esi
	movl	%eax, 849220(%rdi)
.LBB12_3:                               # %if.end
	movl	849224(%rdi), %edx
	addl	%ecx, %eax
	cmpl	%eax, %edx
	cmovlel	%eax, %edx
	movl	%edx, 849224(%rdi)
	movl	%eax, 856004(%rdi)
	retq
.Lfunc_end12:
	.size	calculate_frame_no, .Lfunc_end12-calculate_frame_no
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function find_snr
.LCPI13_0:
	.quad	0x4024000000000000              # double 10
	.text
	.globl	find_snr
	.p2align	4, 0x90
	.type	find_snr,@function
find_snr:                               # @find_snr
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
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	(%rdi), %rax
	movq	848704(%rdi), %r15
	movl	849036(%rdi), %r8d
	sarl	$3, %r8d
	movq	16(%rdi), %rcx
	movl	3216(%rcx), %ecx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movaps	.L__const.exit_picture.yuv_types(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movabsq	$14700694778150962, %rcx        # imm = 0x343A343A340032
	movq	%rcx, 192(%rsp)
	movl	849072(%rdi), %ecx
	imull	%ecx, %ecx
	movl	%ecx, 68(%rsp)
	movl	849076(%rdi), %ecx
	imull	%ecx, %ecx
	movl	%ecx, 72(%rsp)
	movl	849080(%rdi), %ecx
	imull	%ecx, %ecx
	movl	%ecx, 76(%rsp)
	movq	856016(%rdi), %rcx
	movq	%rcx, 240(%rsp)
	cmpl	$0, 268(%rsi)
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	je	.LBB13_1
# %bb.2:                                # %cond.true40
	movq	856024(%rdi), %rcx
	movups	(%rcx), %xmm0
	movq	136(%r14), %rcx
	movups	(%rcx), %xmm1
	jmp	.LBB13_3
.LBB13_1:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
.LBB13_3:                               # %cond.end44
	movq	128(%r14), %rcx
	movups	%xmm0, 248(%rsp)
	movq	%rcx, 208(%rsp)
	movups	%xmm1, 216(%rsp)
	movslq	808(%rax), %rcx
	movl	%ecx, 92(%rsp)
	movslq	820(%rax), %rdx
	movl	%edx, 80(%rsp)
	movslq	812(%rax), %rsi
	movl	%esi, 100(%rsp)
	movl	%esi, 96(%rsp)
	movslq	824(%rax), %rax
	movl	%eax, 88(%rsp)
	movl	%eax, 84(%rsp)
	movq	%rdx, %rdi
	imulq	%rcx, %rdi
	imulq	%rax, %rsi
	leaq	(%rdi,%rsi,2), %rax
	movslq	%r8d, %r13
	imulq	%rax, %r13
	movl	%r8d, (%rsp)                    # 4-byte Spill
	imull	%r8d, %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB13_5
# %bb.4:                                # %if.then
	movl	$.L.str.2, %edi
	callq	no_mem_exit@PLT
.LBB13_5:                               # %if.end
	movl	(%r12), %edi
	movq	40(%rsp), %rax                  # 8-byte Reload
	movslq	856004(%rax), %rsi
	imulq	%r13, %rsi
	xorl	%edx, %edx
	callq	lseek@PLT
	cmpq	$-1, %rax
	je	.LBB13_43
# %bb.6:                                # %if.end90
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	jne	.LBB13_8
# %bb.7:                                # %if.then91
	movl	(%r12), %edi
	movabsq	$6148914691236517206, %rcx      # imm = 0x5555555555555556
	movq	%r13, %rax
	imulq	%rcx
	movq	%rdx, %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	movl	$1, %edx
	callq	lseek@PLT
.LBB13_8:                               # %if.end93
	movq	%r13, 104(%rsp)                 # 8-byte Spill
	negq	%r13
	movq	%r13, 112(%rsp)                 # 8-byte Spill
	xorl	%edx, %edx
	movl	(%rsp), %ebp                    # 4-byte Reload
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB13_9:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_18 Depth 2
                                        #       Child Loop BB13_21 Depth 3
                                        #       Child Loop BB13_26 Depth 3
                                        #       Child Loop BB13_30 Depth 3
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	setne	%al
	cmpq	$2, %rdx
	setne	%cl
	orb	%al, %cl
	jne	.LBB13_11
# %bb.10:                               # %if.then103
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	(%r12), %edi
	movq	112(%rsp), %rsi                 # 8-byte Reload
	movq	%rdx, %rbx
	movl	$1, %edx
	callq	lseek@PLT
	movq	%rbx, %rdx
	movl	(%rsp), %ebp                    # 4-byte Reload
.LBB13_11:                              # %if.end105
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	(%r12), %edi
	movl	92(%rsp,%rdx,4), %r15d
	movl	80(%rsp,%rdx,4), %r12d
	movl	%r12d, %eax
	imull	%r15d, %eax
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	imull	%ebp, %eax
	movslq	%eax, %rbx
	movq	56(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rsi
	movq	%rdx, %r14
	movq	%rbx, %rdx
	callq	read@PLT
	cmpl	%eax, %ebx
	jne	.LBB13_12
# %bb.13:                               # %if.end132
                                        #   in Loop: Header=BB13_9 Depth=1
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	240(%rsp,%r14,8), %rdi
	movq	%rdi, 168(%rsp)                 # 8-byte Spill
	movq	%r13, %rsi
	movl	%r15d, %edx
	movl	%r12d, %ecx
	movl	%ebp, %r8d
	callq	buffer2img
	xorps	%xmm0, %xmm0
	testl	%r15d, %r15d
	jle	.LBB13_14
# %bb.15:                               # %if.end132
                                        #   in Loop: Header=BB13_9 Depth=1
	movq	%r15, %rbx
	movq	%r12, %r13
	testl	%r13d, %r13d
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	16(%rsp), %r12                  # 8-byte Reload
	jle	.LBB13_16
# %bb.17:                               # %for.body.us.preheader.i
                                        #   in Loop: Header=BB13_9 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	208(%rsp,%rax,8), %r14
	movl	%ebx, %eax
	andl	$2147483644, %eax               # imm = 0x7FFFFFFC
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	addl	%eax, %eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	leal	(%rbx,%rbx), %esi
	andl	$-8, %esi
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	movq	%rbx, 152(%rsp)                 # 8-byte Spill
	movq	%r13, 144(%rsp)                 # 8-byte Spill
	movq	%r14, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB13_18
	.p2align	4, 0x90
.LBB13_31:                              # %for.cond7.for.inc13_crit_edge.us.i
                                        #   in Loop: Header=BB13_18 Depth=2
	incq	%rbp
	cmpq	%r13, %rbp
	je	.LBB13_32
.LBB13_18:                              # %for.body.us.i
                                        #   Parent Loop BB13_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_21 Depth 3
                                        #       Child Loop BB13_26 Depth 3
                                        #       Child Loop BB13_30 Depth 3
	xorl	%r11d, %r11d
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%rbp,8), %r10
	movq	(%r14,%rbp,8), %r9
	cmpl	$4, %ebx
	jae	.LBB13_20
# %bb.19:                               #   in Loop: Header=BB13_18 Depth=2
	movq	%r9, %r12
	movq	%r10, %r15
	jmp	.LBB13_23
	.p2align	4, 0x90
.LBB13_20:                              # %vector.ph
                                        #   in Loop: Header=BB13_18 Depth=2
	movq	%rbp, 160(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	leaq	(%r9,%rax), %r12
	leaq	(%r10,%rax), %r15
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB13_21:                              # %vector.body
                                        #   Parent Loop BB13_9 Depth=1
                                        #     Parent Loop BB13_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%r10,%rdx), %ecx
	movzwl	2(%r10,%rdx), %r13d
	movzwl	4(%r10,%rdx), %r14d
	movzwl	6(%r10,%rdx), %ebx
	movzwl	(%r9,%rdx), %edi
	subl	%edi, %ecx
	movzwl	2(%r9,%rdx), %edi
	subl	%edi, %r13d
	movzwl	4(%r9,%rdx), %edi
	subl	%edi, %r14d
	movzwl	6(%r9,%rdx), %edi
	subl	%edi, %ebx
	imull	%ecx, %ecx
	imull	%r13d, %r13d
	imull	%r14d, %r14d
	imull	%ebx, %ebx
	addq	%rcx, %r8
	addq	%r13, %rax
	addq	%r14, %rbp
	addq	%rbx, %r11
	addq	$8, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB13_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB13_18 Depth=2
	addq	%r8, %rax
	addq	%rax, %rbp
	addq	%rbp, %r11
	movq	%r11, %r8
	movq	128(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r11d
	movq	152(%rsp), %rbx                 # 8-byte Reload
	cmpl	%ebx, %eax
	movq	144(%rsp), %r13                 # 8-byte Reload
	movq	136(%rsp), %r14                 # 8-byte Reload
	movq	160(%rsp), %rbp                 # 8-byte Reload
	je	.LBB13_31
.LBB13_23:                              # %for.body9.us.i.preheader
                                        #   in Loop: Header=BB13_18 Depth=2
	movl	%ebx, %eax
	subl	%r11d, %eax
	andl	$3, %eax
	je	.LBB13_24
# %bb.25:                               # %for.body9.us.i.prol.preheader
                                        #   in Loop: Header=BB13_18 Depth=2
	negl	%eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB13_26:                              # %for.body9.us.i.prol
                                        #   Parent Loop BB13_9 Depth=1
                                        #     Parent Loop BB13_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%r15), %ecx
	addq	$2, %r15
	movzwl	(%r12), %edi
	addq	$2, %r12
	subl	%edi, %ecx
	imull	%ecx, %ecx
	addq	%rcx, %r8
	decl	%edx
	cmpl	%edx, %eax
	jne	.LBB13_26
# %bb.27:                               # %for.body9.us.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB13_18 Depth=2
	movl	%r11d, %r9d
	subl	%edx, %r9d
	subl	%ebx, %r11d
	cmpl	$-4, %r11d
	ja	.LBB13_31
	jmp	.LBB13_29
	.p2align	4, 0x90
.LBB13_24:                              #   in Loop: Header=BB13_18 Depth=2
	movl	%r11d, %r9d
	subl	%ebx, %r11d
	cmpl	$-4, %r11d
	ja	.LBB13_31
.LBB13_29:                              # %for.body9.us.i.preheader1
                                        #   in Loop: Header=BB13_18 Depth=2
	movl	%ebx, %eax
	subl	%r9d, %eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB13_30:                              # %for.body9.us.i
                                        #   Parent Loop BB13_9 Depth=1
                                        #     Parent Loop BB13_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%r15,%rdx,2), %ecx
	movzwl	(%r12,%rdx,2), %edi
	subl	%edi, %ecx
	imull	%ecx, %ecx
	addq	%r8, %rcx
	movzwl	2(%r15,%rdx,2), %edi
	movzwl	2(%r12,%rdx,2), %r8d
	subl	%r8d, %edi
	imull	%edi, %edi
	movzwl	4(%r15,%rdx,2), %r9d
	movzwl	4(%r12,%rdx,2), %r8d
	subl	%r8d, %r9d
	imull	%r9d, %r9d
	addq	%rdi, %r9
	addq	%rcx, %r9
	movzwl	6(%r15,%rdx,2), %r8d
	movzwl	6(%r12,%rdx,2), %ecx
	subl	%ecx, %r8d
	imull	%r8d, %r8d
	addq	%r9, %r8
	addq	$4, %rdx
	cmpl	%edx, %eax
	jne	.LBB13_30
	jmp	.LBB13_31
	.p2align	4, 0x90
.LBB13_32:                              # %compute_SSE.exit
                                        #   in Loop: Header=BB13_9 Depth=1
	testq	%r8, %r8
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	16(%rsp), %r12                  # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	je	.LBB13_34
# %bb.33:                               # %cond.false.i
                                        #   in Loop: Header=BB13_9 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%r8, %xmm0
	cvtss2sd	%xmm0, %xmm1
	cvtsi2sdl	68(%rsp,%rcx,4), %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	52(%rsp), %xmm0         # 4-byte Folded Reload
	divsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	callq	log10@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	mulsd	.LCPI13_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%r15,%rcx,4)
	movl	(%r15), %eax
	testl	%eax, %eax
	jne	.LBB13_35
	jmp	.LBB13_36
	.p2align	4, 0x90
.LBB13_16:                              #   in Loop: Header=BB13_9 Depth=1
	movq	8(%rsp), %rcx                   # 8-byte Reload
.LBB13_34:                              # %psnr.exit
                                        #   in Loop: Header=BB13_9 Depth=1
	movss	%xmm0, 4(%r15,%rcx,4)
	movl	(%r15), %eax
	testl	%eax, %eax
	je	.LBB13_36
.LBB13_35:                              # %if.else
                                        #   in Loop: Header=BB13_9 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	mulss	28(%r15,%rcx,4), %xmm1
	incl	%eax
	xorps	%xmm2, %xmm2
	cvtsi2ss	%eax, %xmm2
	addss	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
.LBB13_36:                              # %for.inc
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	(%rsp), %ebp                    # 4-byte Reload
	movss	%xmm0, 28(%r15,%rcx,4)
	cmpl	$0, 268(%r14)
	je	.LBB13_38
# %bb.37:                               # %for.inc
                                        #   in Loop: Header=BB13_9 Depth=1
	leaq	1(%rcx), %rdx
	cmpq	$2, %rcx
	jb	.LBB13_9
	jmp	.LBB13_38
	.p2align	4, 0x90
.LBB13_14:                              #   in Loop: Header=BB13_9 Depth=1
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	16(%rsp), %r12                  # 8-byte Reload
	movss	%xmm0, 4(%r15,%rcx,4)
	movl	(%r15), %eax
	testl	%eax, %eax
	jne	.LBB13_35
	jmp	.LBB13_36
.LBB13_12:                              # %if.then122
	movl	$.Lstr.59, %edi
	callq	puts@PLT
	movq	16(%rsp), %r12                  # 8-byte Reload
	movl	(%r12), %edi
	callq	close@PLT
	movl	$-1, (%r12)
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %r15                  # 8-byte Reload
.LBB13_38:                              # %for.end
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	jne	.LBB13_40
# %bb.39:                               # %if.then190
	movl	(%r12), %edi
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rax
	movabsq	$6148914691236517206, %rcx      # imm = 0x5555555555555556
	imulq	%rcx
	movq	%rdx, %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	movl	$1, %edx
	callq	lseek@PLT
.LBB13_40:                              # %if.end194
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	cmpl	$0, 320(%r14)
	je	.LBB13_42
# %bb.41:                               # %if.then196
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	856004(%rax), %edx
	movl	16(%r14), %ecx
	movl	28(%r14), %r8d
	movl	296(%r14), %r9d
	movss	4(%r15), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	8(%r15), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	12(%r15), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movslq	268(%r14), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	176(%rsp,%rax,2), %r10
	movl	$.L.str.5, %esi
	movb	$3, %al
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	fprintf@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB13_42:                              # %cleanup
	addq	$264, %rsp                      # imm = 0x108
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
.LBB13_43:                              # %if.then87
	.cfi_def_cfa_offset 320
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	856004(%rax), %edx
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	%rbx, %rdi
	addq	$264, %rsp                      # imm = 0x108
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end13:
	.size	find_snr, .Lfunc_end13-find_snr
	.cfi_endproc
                                        # -- End function
	.globl	is_new_picture                  # -- Begin function is_new_picture
	.p2align	4, 0x90
	.type	is_new_picture,@function
is_new_picture:                         # @is_new_picture
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%dil
	movl	36(%rdx), %eax
	xorl	1228(%rsi), %eax
	movl	(%rdx), %r8d
	movl	4(%rdx), %ecx
	xorl	172(%rsi), %ecx
	orl	%eax, %ecx
	movl	176(%rsi), %eax
	movl	%r8d, %r9d
	xorl	%eax, %r9d
	orl	%ecx, %r9d
	setne	%cl
	orb	%dil, %cl
	testl	%eax, %eax
	sete	%dil
	testl	%r8d, %r8d
	sete	%r8b
	orb	%dil, %r8b
	jne	.LBB14_2
# %bb.1:                                # %if.then
	movzbl	28(%rdx), %edi
	cmpb	180(%rsi), %dil
	setne	%dil
	orb	%dil, %cl
.LBB14_2:                               # %if.end
	movzbl	%cl, %r8d
	movl	8(%rdx), %edi
	movl	56(%rsi), %ecx
	xorl	%r9d, %r9d
	cmpl	%ecx, %edi
	je	.LBB14_6
# %bb.3:                                # %land.rhs
	testl	%edi, %edi
	je	.LBB14_4
# %bb.5:                                # %lor.rhs
	xorl	%r9d, %r9d
	testl	%ecx, %ecx
	sete	%r9b
	jmp	.LBB14_6
.LBB14_4:
	movl	$1, %r9d
.LBB14_6:                               # %land.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rsi), %rdi
	movzbl	29(%rdx), %r10d
	testl	%r10d, %r10d
	sete	%r11b
	movl	48(%rsi), %ebx
	xorl	%ecx, %ecx
	cmpl	%r10d, %ebx
	setne	%cl
	orl	%r9d, %ecx
	orl	%r8d, %ecx
	testl	%ebx, %ebx
	sete	%r8b
	orb	%r11b, %r8b
	jne	.LBB14_8
# %bb.7:                                # %if.then42
	movl	32(%rdx), %r8d
	xorl	%r9d, %r9d
	cmpl	52(%rsi), %r8d
	setne	%r9b
	orl	%r9d, %ecx
.LBB14_8:                               # %if.end47
	movq	16(%rdi), %r8
	movl	2072(%r8), %r9d
	cmpl	$1, %r9d
	je	.LBB14_13
# %bb.9:                                # %if.end47
	testl	%r9d, %r9d
	jne	.LBB14_18
# %bb.10:                               # %if.then50
	movl	12(%rdx), %r8d
	xorl	%r9d, %r9d
	cmpl	80(%rsi), %r8d
	setne	%r9b
	orl	%r9d, %ecx
	testl	%eax, %eax
	jne	.LBB14_18
# %bb.11:                               # %if.then50
	movq	8(%rdi), %rax
	cmpl	$1, 2040(%rax)
	jne	.LBB14_18
# %bb.12:
	movl	$84, %eax
	movl	$16, %edi
	jmp	.LBB14_17
.LBB14_13:                              # %if.then69
	cmpl	$0, 2080(%r8)
	jne	.LBB14_18
# %bb.14:                               # %if.then72
	movl	20(%rdx), %r8d
	xorl	%r9d, %r9d
	cmpl	88(%rsi), %r8d
	setne	%r9b
	orl	%r9d, %ecx
	testl	%eax, %eax
	jne	.LBB14_18
# %bb.15:                               # %if.then72
	movq	8(%rdi), %rax
	cmpl	$1, 2040(%rax)
	jne	.LBB14_18
# %bb.16:
	movl	$92, %eax
	movl	$24, %edi
.LBB14_17:                              # %if.end95.sink.split
	movl	(%rdx,%rdi), %edi
	xorl	%r8d, %r8d
	cmpl	(%rsi,%rax), %edi
	setne	%r8b
	orl	%r8d, %ecx
.LBB14_18:                              # %if.end95
	movl	1176(%rsi), %eax
	movl	1180(%rsi), %edi
	xorl	%r8d, %r8d
	cmpl	40(%rdx), %eax
	setne	%r8b
	xorl	%r9d, %r9d
	cmpl	44(%rdx), %edi
	setne	%r9b
	orl	%r8d, %r9d
	movl	1184(%rsi), %esi
	xorl	%eax, %eax
	cmpl	48(%rdx), %esi
	setne	%al
	orl	%r9d, %eax
	orl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	is_new_picture, .Lfunc_end14-is_new_picture
	.cfi_endproc
                                        # -- End function
	.globl	pad_buf                         # -- Begin function pad_buf
	.p2align	4, 0x90
	.type	pad_buf,@function
pad_buf:                                # @pad_buf
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
                                        # kill: def $r8d killed $r8d def $r8
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movslq	%r8d, %rax
	leaq	(%rax,%rax), %r14
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB15_15
# %bb.1:                                # %for.body.lr.ph
	movl	%r8d, %eax
	negl	%eax
	movzwl	(%rdi), %edx
	movslq	%eax, %r12
	movl	%r8d, %eax
	cmpl	$31, %r8d
	jbe	.LBB15_2
# %bb.4:                                # %vector.ph
	movl	%eax, %ebx
	andl	$2147483616, %ebx               # imm = 0x7FFFFFE0
	addq	%rbx, %r12
	movd	%edx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	leal	(%rax,%rax), %r15d
	andl	$-64, %r15d
	movq	%rdi, %r11
	subq	%r14, %r11
	addq	$48, %r11
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB15_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -48(%r11,%r10)
	movdqu	%xmm0, -32(%r11,%r10)
	movdqu	%xmm0, -16(%r11,%r10)
	movdqu	%xmm0, (%r11,%r10)
	addq	$64, %r10
	cmpq	%r10, %r15
	jne	.LBB15_5
# %bb.6:                                # %middle.block
	cmpl	%eax, %ebx
	je	.LBB15_7
.LBB15_2:                               # %for.body.preheader
	incq	%r12
	movq	%r12, %r10
	.p2align	4, 0x90
.LBB15_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	%dx, -2(%rdi,%r12,2)
	incq	%r10
	testl	%r12d, %r12d
	movq	%r10, %r12
	jne	.LBB15_3
.LBB15_7:                               # %for.cond1.preheader
	testl	%r8d, %r8d
	jle	.LBB15_15
# %bb.8:                                # %for.body3.lr.ph
	movslq	%esi, %rbx
	movzwl	-2(%rdi,%rbx,2), %edx
	cmpl	$31, %r8d
	ja	.LBB15_12
# %bb.9:
	xorl	%r12d, %r12d
	jmp	.LBB15_10
.LBB15_12:                              # %vector.ph188
	movl	%eax, %r12d
	andl	$2147483616, %r12d              # imm = 0x7FFFFFE0
	movd	%edx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	leal	(%rax,%rax), %r15d
	andl	$-64, %r15d
	leaq	(%rdi,%rbx,2), %r11
	addq	$48, %r11
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB15_13:                              # %vector.body192
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -48(%r11,%r10)
	movdqu	%xmm0, -32(%r11,%r10)
	movdqu	%xmm0, -16(%r11,%r10)
	movdqu	%xmm0, (%r11,%r10)
	addq	$64, %r10
	cmpq	%r10, %r15
	jne	.LBB15_13
# %bb.14:                               # %middle.block185
	cmpl	%eax, %r12d
	je	.LBB15_15
.LBB15_10:                              # %for.body3.preheader
	leaq	(%rdi,%rbx,2), %r10
	.p2align	4, 0x90
.LBB15_11:                              # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	movw	%dx, (%r10,%r12,2)
	incq	%r12
	cmpq	%r12, %rax
	jne	.LBB15_11
.LBB15_15:                              # %for.end11
	movl	%esi, 52(%rsp)                  # 4-byte Spill
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	movq	%rdi, %rax
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	subq	%r14, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movl	%r9d, 20(%rsp)                  # 4-byte Spill
	testl	%r9d, %r9d
	jle	.LBB15_22
# %bb.16:                               # %for.body15.lr.ph
	movl	20(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, %eax
	negl	%eax
	movq	(%rsp), %rcx                    # 8-byte Reload
	leaq	(%rcx,%rcx), %rdx
	movslq	%eax, %r13
	testb	$1, %bpl
	jne	.LBB15_18
# %bb.17:
	movq	%rdx, %r15
	cmpl	$1, %ebp
	jne	.LBB15_20
	jmp	.LBB15_22
.LBB15_18:                              # %for.body15.prol
	movq	%r13, %rax
	imulq	%rcx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
	leaq	(%rsi,%rax,2), %rdi
	movq	%rdx, %r15
	callq	memcpy@PLT
	incq	%r13
	cmpl	$1, %ebp
	je	.LBB15_22
.LBB15_20:                              # %for.body15.preheader
	leaq	2(%r13), %r12
	leaq	1(%r13), %rcx
	movq	(%rsp), %rax                    # 8-byte Reload
	imulq	%rax, %rcx
	addq	%rcx, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	(,%rax,4), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	imulq	%rax, %r13
	addq	%r13, %r13
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%r12, %rbp
	movq	8(%rsp), %rbx                   # 8-byte Reload
	.p2align	4, 0x90
.LBB15_21:                              # %for.body15
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r14,%r13), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	$2, %rbp
	addq	32(%rsp), %r14                  # 8-byte Folded Reload
	testl	%r12d, %r12d
	movq	%rbp, %r12
	jne	.LBB15_21
.LBB15_22:                              # %for.cond22.preheader
	cmpl	$2, 24(%rsp)                    # 4-byte Folded Reload
	movq	64(%rsp), %r12                  # 8-byte Reload
	movq	72(%rsp), %rbx                  # 8-byte Reload
	jl	.LBB15_37
# %bb.23:                               # %for.body25.lr.ph
	testl	%r12d, %r12d
	jle	.LBB15_37
# %bb.24:                               # %for.body25.us.preheader
	movl	52(%rsp), %eax                  # 4-byte Reload
	addl	%r12d, %eax
	cltq
	leal	1(%r12), %ecx
	movl	24(%rsp), %edx                  # 4-byte Reload
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movl	%r12d, %esi
	movl	%esi, %edi
	andl	$2147483616, %edi               # imm = 0x7FFFFFE0
	leaq	1(%rdi), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	leal	(%r12,%r12), %r9d
	andl	$-64, %r9d
	movq	(%rsp), %r8                     # 8-byte Reload
	leaq	(%r8,%r8), %r10
	movq	%r10, %r11
	movq	56(%rsp), %rdx                  # 8-byte Reload
	subq	%rdx, %r11
	leaq	(%rbx,%r11), %r13
	addq	$48, %r13
	addq	%rbx, %r11
	movq	%rax, %rbp
	addq	%rax, %rax
	leaq	(%rax,%r8,2), %rax
	subq	%rdx, %rax
	leaq	(%rax,%rbx), %r14
	addq	$48, %r14
	leaq	(%rax,%rbx), %r8
	addq	$-2, %r8
	movl	$1, %edx
	jmp	.LBB15_25
	.p2align	4, 0x90
.LBB15_36:                              # %for.cond44.for.inc54_crit_edge.us
                                        #   in Loop: Header=BB15_25 Depth=1
	incq	%rdx
	addq	%r10, %r13
	addq	%r10, %r11
	addq	%r10, %r14
	addq	%r10, %r8
	cmpq	40(%rsp), %rdx                  # 8-byte Folded Reload
	je	.LBB15_37
.LBB15_25:                              # %for.body25.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_28 Depth 2
                                        #     Child Loop BB15_30 Depth 2
                                        #     Child Loop BB15_34 Depth 2
                                        #     Child Loop BB15_32 Depth 2
	movq	%rdx, %rax
	imulq	(%rsp), %rax                    # 8-byte Folded Reload
	movq	8(%rsp), %r15                   # 8-byte Reload
	leaq	(%r15,%rax,2), %rax
	movq	80(%rsp), %r15                  # 8-byte Reload
	movzwl	(%rax,%r15,2), %r15d
	cmpl	$31, %r12d
	ja	.LBB15_27
# %bb.26:                               #   in Loop: Header=BB15_25 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB15_30
	.p2align	4, 0x90
.LBB15_27:                              # %vector.ph216
                                        #   in Loop: Header=BB15_25 Depth=1
	movd	%r15d, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB15_28:                              # %vector.body220
                                        #   Parent Loop BB15_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -48(%r13,%r12)
	movdqu	%xmm0, -32(%r13,%r12)
	movdqu	%xmm0, -16(%r13,%r12)
	movdqu	%xmm0, (%r13,%r12)
	addq	$64, %r12
	cmpq	%r12, %r9
	jne	.LBB15_28
# %bb.29:                               # %middle.block213
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	%rdi, %r12
	cmpl	%esi, %edi
	je	.LBB15_31
	.p2align	4, 0x90
.LBB15_30:                              # %for.body32.us
                                        #   Parent Loop BB15_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	%r15w, (%r11,%r12,2)
	incq	%r12
	cmpq	%r12, %rsi
	jne	.LBB15_30
.LBB15_31:                              # %for.cond29.for.end39_crit_edge.us
                                        #   in Loop: Header=BB15_25 Depth=1
	movzwl	-2(%rax,%rbp,2), %eax
	movl	$1, %r15d
	movq	64(%rsp), %r12                  # 8-byte Reload
	cmpl	$31, %r12d
	jbe	.LBB15_32
# %bb.33:                               # %vector.ph201
                                        #   in Loop: Header=BB15_25 Depth=1
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB15_34:                              # %vector.body206
                                        #   Parent Loop BB15_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -48(%r14,%r15)
	movdqu	%xmm0, -32(%r14,%r15)
	movdqu	%xmm0, -16(%r14,%r15)
	movdqu	%xmm0, (%r14,%r15)
	addq	$64, %r15
	cmpq	%r15, %r9
	jne	.LBB15_34
# %bb.35:                               # %middle.block198
                                        #   in Loop: Header=BB15_25 Depth=1
	movq	32(%rsp), %r15                  # 8-byte Reload
	cmpl	%esi, %edi
	je	.LBB15_36
	.p2align	4, 0x90
.LBB15_32:                              # %for.body48.us
                                        #   Parent Loop BB15_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	%ax, (%r8,%r15,2)
	incq	%r15
	cmpq	%r15, %rcx
	jne	.LBB15_32
	jmp	.LBB15_36
.LBB15_37:                              # %for.end56
	movl	20(%rsp), %r8d                  # 4-byte Reload
	testl	%r8d, %r8d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jle	.LBB15_40
# %bb.38:                               # %for.body65.lr.ph
	movq	24(%rsp), %rdx                  # 8-byte Reload
	leal	-1(%rdx), %eax
	movq	(%rsp), %rsi                    # 8-byte Reload
	movl	%esi, %ecx
	imull	%eax, %ecx
	movslq	%ecx, %rax
	leaq	(%rdi,%rax,2), %r15
	addl	%edx, %r8d
	leaq	(%rsi,%rsi), %r12
	movslq	%edx, %r14
	movslq	%r8d, %r13
	imulq	%r14, %rsi
	addq	%rsi, %rsi
	subq	56(%rsp), %rsi                  # 8-byte Folded Reload
	addq	%rsi, %rbx
	.p2align	4, 0x90
.LBB15_39:                              # %for.body65
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	incq	%r14
	addq	%r12, %rbx
	cmpq	%r13, %r14
	jl	.LBB15_39
.LBB15_40:                              # %for.end73
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
.Lfunc_end15:
	.size	pad_buf, .Lfunc_end15-pad_buf
	.cfi_endproc
                                        # -- End function
	.globl	pad_dec_picture                 # -- Begin function pad_dec_picture
	.p2align	4, 0x90
	.type	pad_dec_picture,@function
pad_dec_picture:                        # @pad_dec_picture
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	856840(%rdi), %r8d
	movl	856844(%rdi), %r9d
	movl	64(%rsi), %esi
	movl	68(%rbx), %edx
	movl	356(%rbx), %ecx
	movq	128(%rbx), %rax
	movq	(%rax), %rdi
	callq	pad_buf
	cmpl	$0, 268(%rbx)
	je	.LBB16_1
# %bb.2:                                # %if.then
	movl	856848(%r14), %ebp
	movl	856852(%r14), %r14d
	movl	72(%rbx), %r15d
	movl	76(%rbx), %r12d
	movl	360(%rbx), %r13d
	movq	136(%rbx), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	movl	%r14d, %r9d
	callq	pad_buf
	movq	136(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	movl	%r14d, %r9d
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
	jmp	pad_buf                         # TAILCALL
.LBB16_1:                               # %if.end
	.cfi_def_cfa_offset 64
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
	.size	pad_dec_picture, .Lfunc_end16-pad_dec_picture
	.cfi_endproc
                                        # -- End function
	.globl	frame_postprocessing            # -- Begin function frame_postprocessing
	.p2align	4, 0x90
	.type	frame_postprocessing,@function
frame_postprocessing:                   # @frame_postprocessing
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end17:
	.size	frame_postprocessing, .Lfunc_end17-frame_postprocessing
	.cfi_endproc
                                        # -- End function
	.globl	field_postprocessing            # -- Begin function field_postprocessing
	.p2align	4, 0x90
	.type	field_postprocessing,@function
field_postprocessing:                   # @field_postprocessing
	.cfi_startproc
# %bb.0:                                # %entry
	movl	848712(%rdi), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 848712(%rdi)
	retq
.Lfunc_end18:
	.size	field_postprocessing, .Lfunc_end18-field_postprocessing
	.cfi_endproc
                                        # -- End function
	.globl	ercWriteMBMODEandMV             # -- Begin function ercWriteMBMODEandMV
	.p2align	4, 0x90
	.type	ercWriteMBMODEandMV,@function
ercWriteMBMODEandMV:                    # @ercWriteMBMODEandMV
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
	movq	8(%rdi), %r8
	movl	24(%rdi), %ecx
	movq	856456(%r8), %rsi
	movl	64(%rsi), %r9d
	sarl	$4, %r9d
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	shll	$2, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	856496(%r8), %rcx
	cmpl	$1, 848776(%r8)
	jne	.LBB19_1
# %bb.51:                               # %for.cond203.preheader
	movb	$2, %r8b
	cmpw	$10, 152(%rdi)
	je	.LBB19_53
# %bb.52:                               # %cond.false222
	cmpb	$11, 364(%rdi)
	sete	%r8b
	addb	$5, %r8b
.LBB19_53:                              # %cond.end230
	shll	$2, %edx
	shll	$2, %eax
	movb	%r8b, (%rcx)
	cmpw	$10, 152(%rdi)
	je	.LBB19_55
# %bb.54:                               # %lor.lhs.false238
	cmpb	$11, 364(%rdi)
	jne	.LBB19_56
.LBB19_55:                              # %if.then245
	movq	$0, 12(%rcx)
	xorl	%r8d, %r8d
	movl	%r8d, 20(%rcx)
	movb	$2, %r9b
	cmpw	$10, 152(%rdi)
	je	.LBB19_59
.LBB19_58:                              # %cond.false222.1
	cmpb	$11, 365(%rdi)
	sete	%r9b
	addb	$5, %r9b
.LBB19_59:                              # %cond.end230.1
	movl	%edx, %r8d
	orl	$2, %r8d
	movb	%r9b, 24(%rcx)
	cmpw	$10, 152(%rdi)
	je	.LBB19_62
# %bb.60:                               # %lor.lhs.false238.1
	cmpb	$11, 365(%rdi)
	jne	.LBB19_61
.LBB19_62:                              # %if.then245.1
	movq	$0, 36(%rcx)
	xorl	%r9d, %r9d
	movl	%r9d, 44(%rcx)
	movb	$2, %r10b
	cmpw	$10, 152(%rdi)
	je	.LBB19_65
.LBB19_64:                              # %cond.false222.2
	cmpb	$11, 366(%rdi)
	sete	%r10b
	addb	$5, %r10b
.LBB19_65:                              # %cond.end230.2
	movl	%eax, %r9d
	orl	$2, %r9d
	movb	%r10b, 48(%rcx)
	cmpw	$10, 152(%rdi)
	je	.LBB19_68
# %bb.66:                               # %lor.lhs.false238.2
	cmpb	$11, 366(%rdi)
	jne	.LBB19_67
.LBB19_68:                              # %if.then245.2
	movq	$0, 60(%rcx)
	xorl	%r10d, %r10d
	movl	%r10d, 68(%rcx)
	movb	$2, %r10b
	cmpw	$10, 152(%rdi)
	je	.LBB19_71
.LBB19_70:                              # %cond.false222.3
	cmpb	$11, 367(%rdi)
	sete	%r10b
	addb	$5, %r10b
.LBB19_71:                              # %cond.end230.3
	movb	%r10b, 72(%rcx)
	cmpw	$10, 152(%rdi)
	je	.LBB19_74
# %bb.72:                               # %lor.lhs.false238.3
	cmpb	$11, 367(%rdi)
	je	.LBB19_74
# %bb.73:                               # %if.else252.3
	movq	%rsi, %r12
	movq	152(%rsi), %rsi
	movslq	%r9d, %r9
	movq	(%rsi,%r9,8), %rbx
	movslq	%r8d, %r8
	shlq	$5, %r8
	leaq	(%rbx,%r8), %r14
	movzbl	24(%rbx,%r8), %r10d
	shrl	$7, %r10d
	movl	%r10d, %r11d
	shll	$2, %r11d
	movswl	16(%r11,%r14), %ebp
	orl	$3, %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rbx
	movswl	16(%r11,%rbx), %ebx
	addl	%ebp, %ebx
	orl	$3, %eax
	movslq	%eax, %r14
	movq	(%rsi,%r14,8), %rax
	leaq	(%rax,%r8), %rsi
	movswl	16(%r11,%rsi), %esi
	addl	%ebx, %esi
	addq	%rdx, %rax
	movswl	16(%r11,%rax), %eax
	leal	(%rax,%rsi), %ebx
	addl	$2, %ebx
	addl	%esi, %eax
	addl	$5, %eax
	testl	%ebx, %ebx
	cmovnsl	%ebx, %eax
	sarl	$2, %eax
	movl	%eax, 84(%rcx)
	movq	152(%r12), %rsi
	movq	(%rsi,%r9,8), %rbx
	leaq	(%rbx,%r8), %r15
	movswl	18(%r11,%r15), %ebp
	addq	%rdx, %rbx
	movswl	18(%r11,%rbx), %ebx
	addl	%ebp, %ebx
	movq	(%rsi,%r14,8), %rsi
	leaq	(%rsi,%r8), %r14
	movswl	18(%r11,%r14), %r14d
	addl	%ebx, %r14d
	addq	%rsi, %rdx
	movswl	18(%r11,%rdx), %edx
	leal	(%rdx,%r14), %esi
	addl	$2, %esi
	addl	%r14d, %edx
	addl	$5, %edx
	testl	%esi, %esi
	cmovnsl	%esi, %edx
	sarl	$2, %edx
	movl	%edx, 88(%rcx)
	movl	%eax, %esi
	negl	%esi
	cmovsl	%eax, %esi
	movl	%edx, %eax
	negl	%eax
	cmovsl	%edx, %eax
	movq	(%rdi), %rdx
	addl	13504(%rdx), %esi
	addl	%eax, %esi
	movl	%esi, 13504(%rdx)
	movq	152(%r12), %rax
	addq	(%rax,%r9,8), %r8
	movsbl	24(%r10,%r8), %eax
	jmp	.LBB19_75
.LBB19_1:                               # %for.cond.preheader
	movb	$2, %r8b
	cmpw	$10, 152(%rdi)
	je	.LBB19_6
# %bb.2:                                # %cond.false
	movzbl	364(%rdi), %r9d
	testl	%r9d, %r9d
	je	.LBB19_5
# %bb.3:                                # %cond.false
	movb	$6, %r8b
	cmpl	$11, %r9d
	je	.LBB19_6
# %bb.4:                                # %cond.false22
	cmpb	$1, %r9b
	setne	%r8b
	shlb	$2, %r8b
	incb	%r8b
	jmp	.LBB19_6
.LBB19_56:                              # %if.else252
	movq	152(%rsi), %r14
	movslq	%eax, %r8
	movq	(%r14,%r8,8), %r15
	movslq	%edx, %rbx
	movq	%rbx, %r9
	shlq	$5, %r9
	leaq	(%r15,%r9), %r12
	movzbl	24(%r15,%r9), %r10d
	shrl	$7, %r10d
	movl	%r10d, %r11d
	shll	$2, %r11d
	movswl	16(%r11,%r12), %ebp
	orl	$1, %ebx
	movslq	%ebx, %rbx
	shlq	$5, %rbx
	addq	%rbx, %r15
	movswl	16(%r11,%r15), %r15d
	addl	%ebp, %r15d
	movl	%r8d, %ebp
	orl	$1, %ebp
	movslq	%ebp, %r12
	movq	(%r14,%r12,8), %r14
	leaq	(%r14,%r9), %r13
	movswl	16(%r11,%r13), %r13d
	addl	%r15d, %r13d
	addq	%rbx, %r14
	movswl	16(%r11,%r14), %r14d
	leal	(%r14,%r13), %r15d
	addl	$2, %r15d
	leal	(%r14,%r13), %ebp
	addl	$5, %ebp
	testl	%r15d, %r15d
	cmovnsl	%r15d, %ebp
	sarl	$2, %ebp
	movl	%ebp, 12(%rcx)
	movq	152(%rsi), %r14
	movq	(%r14,%r8,8), %r15
	leaq	(%r15,%r9), %r13
	movswl	18(%r11,%r13), %r13d
	addq	%rbx, %r15
	movswl	18(%r11,%r15), %r15d
	addl	%r13d, %r15d
	movq	(%r14,%r12,8), %r14
	leaq	(%r14,%r9), %r12
	movswl	18(%r11,%r12), %r12d
	addl	%r15d, %r12d
	addq	%r14, %rbx
	movswl	18(%r11,%rbx), %r11d
	leal	(%r11,%r12), %ebx
	addl	$2, %ebx
	addl	%r12d, %r11d
	addl	$5, %r11d
	testl	%ebx, %ebx
	cmovnsl	%ebx, %r11d
	sarl	$2, %r11d
	movl	%r11d, 16(%rcx)
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	movl	%r11d, %ebp
	negl	%ebp
	cmovsl	%r11d, %ebp
	movq	(%rdi), %r11
	addl	13504(%r11), %ebx
	addl	%ebp, %ebx
	movl	%ebx, 13504(%r11)
	movq	152(%rsi), %r11
	addq	(%r11,%r8,8), %r9
	movsbl	24(%r10,%r9), %r8d
	movl	%r8d, 20(%rcx)
	movb	$2, %r9b
	cmpw	$10, 152(%rdi)
	jne	.LBB19_58
	jmp	.LBB19_59
.LBB19_61:                              # %if.else252.1
	movq	152(%rsi), %r15
	movslq	%eax, %r9
	movq	(%r15,%r9,8), %r12
	movq	%r9, -16(%rsp)                  # 8-byte Spill
	movslq	%r8d, %r10
	shlq	$5, %r10
	leaq	(%r12,%r10), %r14
	movzbl	24(%r12,%r10), %r11d
	shrl	$7, %r11d
	movl	%r11d, %ebx
	shll	$2, %ebx
	movswl	16(%rbx,%r14), %ebp
	movl	%edx, %r14d
	orl	$3, %r14d
	movslq	%r14d, %r14
	shlq	$5, %r14
	addq	%r14, %r12
	movswl	16(%rbx,%r12), %r12d
	addl	%ebp, %r12d
	movl	%eax, %ebp
	orl	$1, %ebp
	movslq	%ebp, %r13
	movq	(%r15,%r13,8), %r15
	leaq	(%r15,%r10), %rbp
	movswl	16(%rbx,%rbp), %ebp
	addl	%r12d, %ebp
	addq	%r14, %r15
	movswl	16(%rbx,%r15), %r15d
	leal	(%r15,%rbp), %r12d
	addl	$2, %r12d
	addl	%r15d, %ebp
	addl	$5, %ebp
	testl	%r12d, %r12d
	cmovnsl	%r12d, %ebp
	sarl	$2, %ebp
	movl	%ebp, 36(%rcx)
	movq	152(%rsi), %r15
	movq	(%r15,%r9,8), %r12
	leaq	(%r12,%r10), %r9
	movswl	18(%rbx,%r9), %r9d
	addq	%r14, %r12
	movswl	18(%rbx,%r12), %r12d
	addl	%r9d, %r12d
	movq	(%r15,%r13,8), %r9
	leaq	(%r9,%r10), %r15
	movswl	18(%rbx,%r15), %r15d
	addl	%r12d, %r15d
	addq	%r9, %r14
	movswl	18(%rbx,%r14), %r9d
	leal	(%r9,%r15), %ebx
	addl	$2, %ebx
	addl	%r15d, %r9d
	addl	$5, %r9d
	testl	%ebx, %ebx
	cmovnsl	%ebx, %r9d
	sarl	$2, %r9d
	movl	%r9d, 40(%rcx)
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	movl	%r9d, %ebp
	negl	%ebp
	cmovsl	%r9d, %ebp
	movq	(%rdi), %r9
	addl	13504(%r9), %ebx
	addl	%ebp, %ebx
	movl	%ebx, 13504(%r9)
	movq	152(%rsi), %r9
	movq	-16(%rsp), %rbx                 # 8-byte Reload
	addq	(%r9,%rbx,8), %r10
	movsbl	24(%r11,%r10), %r9d
	movl	%r9d, 44(%rcx)
	movb	$2, %r10b
	cmpw	$10, 152(%rdi)
	jne	.LBB19_64
	jmp	.LBB19_65
.LBB19_67:                              # %if.else252.2
	movq	152(%rsi), %r12
	movslq	%r9d, %r10
	movq	(%r12,%r10,8), %r13
	movq	%r10, -8(%rsp)                  # 8-byte Spill
	movslq	%edx, %r11
	shlq	$5, %r11
	leaq	(%r11,%r13), %r15
	movzbl	24(%r13,%r11), %ebx
	shrl	$7, %ebx
	movl	%ebx, %r14d
	shll	$2, %r14d
	movswl	16(%r14,%r15), %ebp
	movl	%edx, %r15d
	orl	$1, %r15d
	movslq	%r15d, %r15
	shlq	$5, %r15
	addq	%r15, %r13
	movswl	16(%r14,%r13), %r13d
	addl	%ebp, %r13d
	movl	%eax, %ebp
	orl	$3, %ebp
	movl	%eax, -16(%rsp)                 # 4-byte Spill
	movq	%rsi, %rax
	movslq	%ebp, %rsi
	movq	(%r12,%rsi,8), %r12
	leaq	(%r12,%r11), %rbp
	movswl	16(%r14,%rbp), %ebp
	addl	%r13d, %ebp
	addq	%r15, %r12
	movswl	16(%r14,%r12), %r12d
	leal	(%r12,%rbp), %r13d
	addl	$2, %r13d
	addl	%r12d, %ebp
	addl	$5, %ebp
	testl	%r13d, %r13d
	cmovnsl	%r13d, %ebp
	sarl	$2, %ebp
	movl	%ebp, 60(%rcx)
	movq	152(%rax), %r12
	movq	(%r12,%r10,8), %r13
	leaq	(%r11,%r13), %r10
	movswl	18(%r14,%r10), %r10d
	addq	%r15, %r13
	movswl	18(%r14,%r13), %r13d
	addl	%r10d, %r13d
	movq	(%r12,%rsi,8), %rsi
	leaq	(%rsi,%r11), %r10
	movswl	18(%r14,%r10), %r10d
	addl	%r13d, %r10d
	addq	%rsi, %r15
	movswl	18(%r14,%r15), %esi
	leal	(%rsi,%r10), %r14d
	addl	$2, %r14d
	addl	%r10d, %esi
	addl	$5, %esi
	testl	%r14d, %r14d
	cmovnsl	%r14d, %esi
	sarl	$2, %esi
	movl	%esi, 64(%rcx)
	movl	%ebp, %r10d
	negl	%r10d
	cmovsl	%ebp, %r10d
	movl	%esi, %ebp
	negl	%ebp
	cmovsl	%esi, %ebp
	movq	(%rdi), %rsi
	addl	13504(%rsi), %r10d
	addl	%ebp, %r10d
	movl	%r10d, 13504(%rsi)
	movq	152(%rax), %rsi
	movq	-8(%rsp), %r10                  # 8-byte Reload
	addq	(%rsi,%r10,8), %r11
	movq	%rax, %rsi
	movl	-16(%rsp), %eax                 # 4-byte Reload
	movsbl	24(%rbx,%r11), %r10d
	movl	%r10d, 68(%rcx)
	movb	$2, %r10b
	cmpw	$10, 152(%rdi)
	jne	.LBB19_70
	jmp	.LBB19_71
.LBB19_5:                               # %cond.end32.fold.split
	xorl	%r8d, %r8d
.LBB19_6:                               # %cond.end32
	shll	$2, %edx
	shll	$2, %eax
	movb	%r8b, (%rcx)
	movzbl	364(%rdi), %r11d
	cmpl	$11, %r11d
	je	.LBB19_8
# %bb.7:                                # %cond.end32
	testl	%r11d, %r11d
	jne	.LBB19_9
.LBB19_8:                               # %if.then47
	movq	$0, 12(%rcx)
	xorl	%r8d, %r8d
	movl	%r8d, 20(%rcx)
	movb	$2, %r8b
	cmpw	$10, 152(%rdi)
	jne	.LBB19_14
	jmp	.LBB19_19
.LBB19_9:                               # %if.else
	addb	$-5, %r11b
	movslq	%edx, %r8
	shlq	$5, %r8
	movq	152(%rsi), %rbx
	movslq	%eax, %r9
	movq	(%rbx,%r9,8), %r14
	movswl	16(%r14,%r8), %r10d
	cmpb	$2, %r11b
	ja	.LBB19_11
# %bb.10:                               # %if.then70
	movl	%edx, %r11d
	orl	$1, %r11d
	movslq	%r11d, %r11
	shlq	$5, %r11
	movswl	16(%r14,%r11), %ebp
	movl	%r9d, %r14d
	orl	$1, %r14d
	movslq	%r14d, %r14
	movq	(%rbx,%r14,8), %rbx
	movswl	16(%rbx,%r8), %r15d
	movswl	16(%rbx,%r11), %ebx
	addl	%ebp, %r10d
	addl	%r15d, %r10d
	leal	(%rbx,%r10), %ebp
	addl	$2, %ebp
	addl	%ebx, %r10d
	addl	$5, %r10d
	testl	%ebp, %ebp
	cmovnsl	%ebp, %r10d
	sarl	$2, %r10d
	movl	%r10d, 12(%rcx)
	movq	152(%rsi), %rbx
	movq	(%rbx,%r9,8), %r15
	movswl	18(%r15,%r8), %ebp
	movswl	18(%r15,%r11), %r15d
	addl	%ebp, %r15d
	movq	(%rbx,%r14,8), %rbx
	movswl	18(%rbx,%r8), %r14d
	addl	%r15d, %r14d
	movswl	18(%rbx,%r11), %r11d
	leal	(%r11,%r14), %ebx
	addl	$2, %ebx
	addl	%r14d, %r11d
	addl	$5, %r11d
	testl	%ebx, %ebx
	cmovnsl	%ebx, %r11d
	sarl	$2, %r11d
	jmp	.LBB19_12
.LBB19_11:                              # %if.else162
	movl	%r10d, 12(%rcx)
	movq	152(%rsi), %r11
	movq	(%r11,%r9,8), %r11
	movswl	18(%r11,%r8), %r11d
.LBB19_12:                              # %if.end
	movl	%r11d, 16(%rcx)
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movl	%r11d, %r10d
	negl	%r10d
	cmovsl	%r11d, %r10d
	addl	%ebx, %r10d
	movq	(%rdi), %r11
	addl	%r10d, 13504(%r11)
	movq	152(%rsi), %r10
	movq	(%r10,%r9,8), %r9
	movsbl	24(%r9,%r8), %r8d
	movl	%r8d, 20(%rcx)
	movb	$2, %r8b
	cmpw	$10, 152(%rdi)
	je	.LBB19_19
.LBB19_14:                              # %cond.false.1
	movzbl	365(%rdi), %r8d
	cmpl	$11, %r8d
	je	.LBB19_15
# %bb.16:                               # %cond.false.1
	testl	%r8d, %r8d
	jne	.LBB19_18
# %bb.17:                               # %cond.end32.fold.split.1
	xorl	%r8d, %r8d
	movb	%r8b, 24(%rcx)
	movzbl	365(%rdi), %r11d
	cmpl	$11, %r11d
	jne	.LBB19_20
	jmp	.LBB19_21
.LBB19_15:
	movb	$6, %r8b
.LBB19_19:                              # %cond.end32.1
	movb	%r8b, 24(%rcx)
	movzbl	365(%rdi), %r11d
	cmpl	$11, %r11d
	je	.LBB19_21
.LBB19_20:                              # %cond.end32.1
	testl	%r11d, %r11d
	jne	.LBB19_22
.LBB19_21:                              # %if.then47.1
	movq	$0, 36(%rcx)
	xorl	%r8d, %r8d
	movl	%r8d, 44(%rcx)
	movb	$2, %r8b
	cmpw	$10, 152(%rdi)
	jne	.LBB19_27
	jmp	.LBB19_32
.LBB19_22:                              # %if.else.1
	movl	%edx, %r8d
	orl	$2, %r8d
	addb	$-5, %r11b
	movslq	%r8d, %r8
	shlq	$5, %r8
	movq	152(%rsi), %rbx
	movslq	%eax, %r9
	movq	(%rbx,%r9,8), %r14
	movswl	16(%r14,%r8), %r10d
	cmpb	$3, %r11b
	jae	.LBB19_23
# %bb.24:                               # %if.then70.1
	movl	%edx, %r11d
	orl	$3, %r11d
	movslq	%r11d, %r11
	shlq	$5, %r11
	movswl	16(%r14,%r11), %ebp
	movl	%eax, %r14d
	orl	$1, %r14d
	movslq	%r14d, %r14
	movq	(%rbx,%r14,8), %rbx
	movswl	16(%rbx,%r8), %r15d
	movswl	16(%rbx,%r11), %ebx
	addl	%ebp, %r10d
	addl	%r15d, %r10d
	leal	(%rbx,%r10), %ebp
	addl	$2, %ebp
	addl	%ebx, %r10d
	addl	$5, %r10d
	testl	%ebp, %ebp
	cmovnsl	%ebp, %r10d
	sarl	$2, %r10d
	movl	%r10d, 36(%rcx)
	movq	152(%rsi), %rbx
	movq	(%rbx,%r9,8), %r15
	movswl	18(%r15,%r8), %ebp
	movswl	18(%r15,%r11), %r15d
	addl	%ebp, %r15d
	movq	(%rbx,%r14,8), %rbx
	movswl	18(%rbx,%r8), %r14d
	addl	%r15d, %r14d
	movswl	18(%rbx,%r11), %r11d
	leal	(%r11,%r14), %ebx
	addl	$2, %ebx
	addl	%r14d, %r11d
	addl	$5, %r11d
	testl	%ebx, %ebx
	cmovnsl	%ebx, %r11d
	sarl	$2, %r11d
	jmp	.LBB19_25
.LBB19_18:                              # %cond.false22.1
	cmpb	$1, %r8b
	setne	%r8b
	shlb	$2, %r8b
	incb	%r8b
	movb	%r8b, 24(%rcx)
	movzbl	365(%rdi), %r11d
	cmpl	$11, %r11d
	jne	.LBB19_20
	jmp	.LBB19_21
.LBB19_23:                              # %if.else162.1
	movl	%r10d, 36(%rcx)
	movq	152(%rsi), %r11
	movq	(%r11,%r9,8), %r11
	movswl	18(%r11,%r8), %r11d
.LBB19_25:                              # %if.end.1
	movl	%r11d, 40(%rcx)
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movl	%r11d, %r10d
	negl	%r10d
	cmovsl	%r11d, %r10d
	addl	%ebx, %r10d
	movq	(%rdi), %r11
	addl	%r10d, 13504(%r11)
	movq	152(%rsi), %r10
	movq	(%r10,%r9,8), %r9
	movsbl	24(%r9,%r8), %r8d
	movl	%r8d, 44(%rcx)
	movb	$2, %r8b
	cmpw	$10, 152(%rdi)
	je	.LBB19_32
.LBB19_27:                              # %cond.false.2
	movzbl	366(%rdi), %r8d
	cmpl	$11, %r8d
	je	.LBB19_28
# %bb.29:                               # %cond.false.2
	testl	%r8d, %r8d
	jne	.LBB19_31
# %bb.30:                               # %cond.end32.fold.split.2
	xorl	%r8d, %r8d
	movb	%r8b, 48(%rcx)
	movzbl	366(%rdi), %r11d
	cmpl	$11, %r11d
	jne	.LBB19_33
	jmp	.LBB19_34
.LBB19_28:
	movb	$6, %r8b
.LBB19_32:                              # %cond.end32.2
	movb	%r8b, 48(%rcx)
	movzbl	366(%rdi), %r11d
	cmpl	$11, %r11d
	je	.LBB19_34
.LBB19_33:                              # %cond.end32.2
	testl	%r11d, %r11d
	jne	.LBB19_35
.LBB19_34:                              # %if.then47.2
	movq	$0, 60(%rcx)
	xorl	%r8d, %r8d
	movl	%r8d, 68(%rcx)
	movb	$2, %r8b
	cmpw	$10, 152(%rdi)
	jne	.LBB19_40
	jmp	.LBB19_45
.LBB19_35:                              # %if.else.2
	movl	%eax, %r9d
	orl	$2, %r9d
	addb	$-5, %r11b
	movslq	%edx, %r8
	shlq	$5, %r8
	movq	152(%rsi), %rbx
	movslq	%r9d, %r9
	movq	(%rbx,%r9,8), %r14
	movswl	16(%r14,%r8), %r10d
	cmpb	$3, %r11b
	jae	.LBB19_36
# %bb.37:                               # %if.then70.2
	movl	%edx, %r11d
	orl	$1, %r11d
	movslq	%r11d, %r11
	shlq	$5, %r11
	movswl	16(%r14,%r11), %ebp
	movl	%eax, %r14d
	orl	$3, %r14d
	movslq	%r14d, %r14
	movq	(%rbx,%r14,8), %rbx
	movswl	16(%rbx,%r8), %r15d
	movswl	16(%rbx,%r11), %ebx
	addl	%ebp, %r10d
	addl	%r15d, %r10d
	leal	(%rbx,%r10), %ebp
	addl	$2, %ebp
	addl	%ebx, %r10d
	addl	$5, %r10d
	testl	%ebp, %ebp
	cmovnsl	%ebp, %r10d
	sarl	$2, %r10d
	movl	%r10d, 60(%rcx)
	movq	152(%rsi), %rbx
	movq	(%rbx,%r9,8), %r15
	movswl	18(%r15,%r8), %ebp
	movswl	18(%r15,%r11), %r15d
	addl	%ebp, %r15d
	movq	(%rbx,%r14,8), %rbx
	movswl	18(%rbx,%r8), %r14d
	addl	%r15d, %r14d
	movswl	18(%rbx,%r11), %r11d
	leal	(%r11,%r14), %ebx
	addl	$2, %ebx
	addl	%r14d, %r11d
	addl	$5, %r11d
	testl	%ebx, %ebx
	cmovnsl	%ebx, %r11d
	sarl	$2, %r11d
	jmp	.LBB19_38
.LBB19_31:                              # %cond.false22.2
	cmpb	$1, %r8b
	setne	%r8b
	shlb	$2, %r8b
	incb	%r8b
	movb	%r8b, 48(%rcx)
	movzbl	366(%rdi), %r11d
	cmpl	$11, %r11d
	jne	.LBB19_33
	jmp	.LBB19_34
.LBB19_36:                              # %if.else162.2
	movl	%r10d, 60(%rcx)
	movq	152(%rsi), %r11
	movq	(%r11,%r9,8), %r11
	movswl	18(%r11,%r8), %r11d
.LBB19_38:                              # %if.end.2
	movl	%r11d, 64(%rcx)
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movl	%r11d, %r10d
	negl	%r10d
	cmovsl	%r11d, %r10d
	addl	%ebx, %r10d
	movq	(%rdi), %r11
	addl	%r10d, 13504(%r11)
	movq	152(%rsi), %r10
	movq	(%r10,%r9,8), %r9
	movsbl	24(%r9,%r8), %r8d
	movl	%r8d, 68(%rcx)
	movb	$2, %r8b
	cmpw	$10, 152(%rdi)
	je	.LBB19_45
.LBB19_40:                              # %cond.false.3
	movzbl	367(%rdi), %r8d
	cmpl	$11, %r8d
	je	.LBB19_41
# %bb.42:                               # %cond.false.3
	testl	%r8d, %r8d
	jne	.LBB19_44
# %bb.43:                               # %cond.end32.fold.split.3
	xorl	%r8d, %r8d
	movb	%r8b, 72(%rcx)
	movzbl	367(%rdi), %r11d
	cmpl	$11, %r11d
	jne	.LBB19_46
	jmp	.LBB19_74
.LBB19_41:
	movb	$6, %r8b
.LBB19_45:                              # %cond.end32.3
	movb	%r8b, 72(%rcx)
	movzbl	367(%rdi), %r11d
	cmpl	$11, %r11d
	je	.LBB19_74
.LBB19_46:                              # %cond.end32.3
	testl	%r11d, %r11d
	jne	.LBB19_47
.LBB19_74:                              # %if.then245.3
	movq	$0, 84(%rcx)
	xorl	%eax, %eax
.LBB19_75:                              # %if.end391.sink.split
	movl	%eax, 92(%rcx)
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
.LBB19_47:                              # %if.else.3
	.cfi_def_cfa_offset 56
	movl	%edx, %r8d
	orl	$2, %r8d
	movl	%eax, %r9d
	orl	$2, %r9d
	addb	$-5, %r11b
	movslq	%r8d, %r8
	shlq	$5, %r8
	movq	152(%rsi), %rbx
	movslq	%r9d, %r9
	movq	(%rbx,%r9,8), %r14
	movswl	16(%r14,%r8), %r10d
	cmpb	$3, %r11b
	jae	.LBB19_48
# %bb.49:                               # %if.then70.3
	orl	$3, %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	movswl	16(%r14,%rdx), %r11d
	orl	$3, %eax
	cltq
	movq	(%rbx,%rax,8), %rbx
	movswl	16(%rbx,%r8), %ebp
	movswl	16(%rbx,%rdx), %ebx
	addl	%r11d, %r10d
	addl	%ebp, %r10d
	leal	(%rbx,%r10), %r11d
	addl	$2, %r11d
	addl	%ebx, %r10d
	addl	$5, %r10d
	testl	%r11d, %r11d
	cmovnsl	%r11d, %r10d
	sarl	$2, %r10d
	movl	%r10d, 84(%rcx)
	movq	152(%rsi), %r11
	movq	(%r11,%r9,8), %rbx
	movswl	18(%rbx,%r8), %ebp
	movswl	18(%rbx,%rdx), %ebx
	addl	%ebp, %ebx
	movq	(%r11,%rax,8), %rax
	movswl	18(%rax,%r8), %r11d
	addl	%ebx, %r11d
	movswl	18(%rax,%rdx), %eax
	leal	(%rax,%r11), %edx
	addl	$2, %edx
	addl	%r11d, %eax
	addl	$5, %eax
	testl	%edx, %edx
	cmovnsl	%edx, %eax
	sarl	$2, %eax
	jmp	.LBB19_50
.LBB19_44:                              # %cond.false22.3
	cmpb	$1, %r8b
	setne	%r8b
	shlb	$2, %r8b
	incb	%r8b
	movb	%r8b, 72(%rcx)
	movzbl	367(%rdi), %r11d
	cmpl	$11, %r11d
	jne	.LBB19_46
	jmp	.LBB19_74
.LBB19_48:                              # %if.else162.3
	movl	%r10d, 84(%rcx)
	movq	152(%rsi), %rax
	movq	(%rax,%r9,8), %rax
	movswl	18(%rax,%r8), %eax
.LBB19_50:                              # %if.end.3
	movl	%eax, 88(%rcx)
	movl	%r10d, %edx
	negl	%edx
	cmovsl	%r10d, %edx
	movl	%eax, %r10d
	negl	%r10d
	cmovsl	%eax, %r10d
	addl	%edx, %r10d
	movq	(%rdi), %rax
	addl	%r10d, 13504(%rax)
	movq	152(%rsi), %rax
	movq	(%rax,%r9,8), %rax
	movsbl	24(%rax,%r8), %eax
	jmp	.LBB19_75
.Lfunc_end19:
	.size	ercWriteMBMODEandMV, .Lfunc_end19-ercWriteMBMODEandMV
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init_old_slice
.LCPI20_0:
	.long	4294967295                      # 0xffffffff
	.long	2147483647                      # 0x7fffffff
	.long	2147483647                      # 0x7fffffff
	.long	2147483647                      # 0x7fffffff
	.text
	.globl	init_old_slice
	.p2align	4, 0x90
	.type	init_old_slice,@function
init_old_slice:                         # @init_old_slice
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$9223372032559808512, %rax      # imm = 0x7FFFFFFF00000000
	movq	%rax, (%rdi)
	movl	$2147483647, 36(%rdi)           # imm = 0x7FFFFFFF
	movl	$2147483647, 8(%rdi)            # imm = 0x7FFFFFFF
	movb	$0, 29(%rdi)
	movaps	.LCPI20_0(%rip), %xmm0          # xmm0 = [4294967295,2147483647,2147483647,2147483647]
	movups	%xmm0, 12(%rdi)
	retq
.Lfunc_end20:
	.size	init_old_slice, .Lfunc_end20-init_old_slice
	.cfi_endproc
                                        # -- End function
	.globl	copy_dec_picture_JV             # -- Begin function copy_dec_picture_JV
	.p2align	4, 0x90
	.type	copy_dec_picture_JV,@function
copy_dec_picture_JV:                    # @copy_dec_picture_JV
	.cfi_startproc
# %bb.0:                                # %entry
	movl	8(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	12(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	16(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	296(%rdx), %eax
	movl	%eax, 296(%rsi)
	movl	308(%rdx), %eax
	movl	%eax, 308(%rsi)
	movl	300(%rdx), %eax
	movl	%eax, 300(%rsi)
	movl	304(%rdx), %eax
	movl	%eax, 304(%rsi)
	movl	4(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	248(%rdx), %eax
	movl	%eax, 248(%rsi)
	movl	44(%rdx), %eax
	movl	%eax, 44(%rsi)
	movl	252(%rdx), %eax
	movl	%eax, 252(%rsi)
	movl	256(%rdx), %eax
	movl	%eax, 256(%rsi)
	movl	260(%rdx), %eax
	movl	%eax, 260(%rsi)
	movl	264(%rdx), %eax
	movl	%eax, 264(%rsi)
	movq	312(%rdx), %rax
	movq	%rax, 312(%rsi)
	movl	100(%rdx), %eax
	movl	%eax, 100(%rsi)
	movl	104(%rdx), %eax
	movl	%eax, 104(%rsi)
	movl	28(%rdx), %eax
	movl	%eax, 28(%rsi)
	movl	20(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	24(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	96(%rdx), %eax
	movl	%eax, 96(%rsi)
	movl	268(%rdx), %eax
	movl	%eax, 268(%rsi)
	movl	272(%rdx), %eax
	movl	%eax, 272(%rsi)
	movl	276(%rdx), %eax
	movl	%eax, 276(%rsi)
	movl	280(%rdx), %eax
	movl	%eax, 280(%rsi)
	movl	284(%rdx), %eax
	movl	%eax, 284(%rsi)
	movl	288(%rdx), %eax
	movl	%eax, 288(%rsi)
	movl	292(%rdx), %eax
	movl	%eax, 292(%rsi)
	movl	324(%rdx), %eax
	movl	%eax, 324(%rsi)
	movl	328(%rdx), %eax
	movl	%eax, 328(%rsi)
	movl	332(%rdx), %eax
	movl	%eax, 332(%rsi)
	cmpq	$0, 336(%rdx)
	je	.LBB21_4
# %bb.1:                                # %if.then
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
	movq	856728(%rdi), %rax
	movzbl	8(%rax), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movslq	%eax, %r15
	leaq	(,%r15,4), %rdi
	callq	malloc@PLT
	movq	%rax, 336(%r14)
	testq	%rax, %rax
	jne	.LBB21_3
# %bb.2:                                # %if.then42
	movl	$.L.str.46, %edi
	callq	no_mem_exit@PLT
	movq	336(%r14), %rax
.LBB21_3:                               # %if.end
	movq	336(%rbx), %rsi
	addq	%r15, %r15
	movq	%rax, %rdi
	movq	%r15, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	memcpy@PLT                      # TAILCALL
.LBB21_4:                               # %if.end47
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	retq
.Lfunc_end21:
	.size	copy_dec_picture_JV, .Lfunc_end21-copy_dec_picture_JV
	.cfi_endproc
                                        # -- End function
	.globl	GetVOIdx                        # -- Begin function GetVOIdx
	.p2align	4, 0x90
	.type	GetVOIdx,@function
GetVOIdx:                               # @GetVOIdx
	.cfi_startproc
# %bb.0:                                # %entry
	movq	699416(%rdi), %rdx
	movl	$-1, %eax
	testq	%rdx, %rdx
	je	.LBB22_5
# %bb.1:                                # %if.then
	movl	4132(%rdx), %ecx
	testl	%ecx, %ecx
	js	.LBB22_7
# %bb.2:                                # %for.body.preheader
	movq	4136(%rdx), %rdx
	.p2align	4, 0x90
.LBB22_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edi
	cmpl	%esi, (%rdx,%rdi,4)
	je	.LBB22_7
# %bb.4:                                # %for.inc
                                        #   in Loop: Header=BB22_3 Depth=1
	leal	-1(%rcx), %edi
	testl	%ecx, %ecx
	movl	%edi, %ecx
	jg	.LBB22_3
.LBB22_5:                               # %if.end5
	retq
.LBB22_7:
	movl	%ecx, %eax
	retq
.Lfunc_end22:
	.size	GetVOIdx, .Lfunc_end22-GetVOIdx
	.cfi_endproc
                                        # -- End function
	.globl	get_maxViewIdx                  # -- Begin function get_maxViewIdx
	.p2align	4, 0x90
	.type	get_maxViewIdx,@function
get_maxViewIdx:                         # @get_maxViewIdx
	.cfi_startproc
# %bb.0:                                # %entry
	movq	699416(%rdi), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB23_6
# %bb.1:                                # %if.then.i
	movl	4132(%rdi), %r10d
	testl	%r10d, %r10d
	js	.LBB23_6
# %bb.2:                                # %for.body.i.preheader
	movq	4136(%rdi), %r9
	.p2align	4, 0x90
.LBB23_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, %r8d
	cmpl	%esi, (%r9,%r8,4)
	je	.LBB23_5
# %bb.4:                                # %for.inc.i
                                        #   in Loop: Header=BB23_3 Depth=1
	leal	-1(%r8), %r10d
	testl	%r8d, %r8d
	jg	.LBB23_3
.LBB23_6:                               # %if.end17
	retq
.LBB23_5:                               # %if.then
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	xorl	%edx, %edx
	testl	%ecx, %ecx
	setne	%dl
	shll	$4, %edx
	shll	$5, %eax
	orl	%edx, %eax
	movq	4144(%rax,%rdi), %rax
	movl	(%rax,%r8,4), %eax
	retq
.Lfunc_end23:
	.size	get_maxViewIdx, .Lfunc_end23-get_maxViewIdx
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Source picture has higher bit depth than imgpel data type. \nPlease recompile with larger data type for imgpel."
	.size	.L.str, 111

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture"
	.size	.L.str.1, 80

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"find_snr: buf"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Warning: Could not seek to frame number %d in reference file. Shown PSNR might be wrong.\n"
	.size	.L.str.3, 90

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%04d(P)  %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\n"
	.size	.L.str.5, 48

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture', invalid bitstream"
	.size	.L.str.7, 98

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture', invalid bitstream"
	.size	.L.str.9, 98

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"svc_extension_flag"
	.size	.L.str.10, 19

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"NALU: DP_A slice_id"
	.size	.L.str.12, 20

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"received data partition with CABAC, this is not allowed"
	.size	.L.str.13, 56

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"NALU: DP_B slice_id"
	.size	.L.str.14, 20

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"NALU: DP_B redudant_pic_cnt"
	.size	.L.str.16, 28

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"NALU: DP_C slice_id"
	.size	.L.str.17, 20

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"NALU:SLICE_C redudand_pic_cnt"
	.size	.L.str.19, 30

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"read_new_slice: Found NALU_TYPE_FILL, len %d\n"
	.size	.L.str.22, 46

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Found SVC extension NALU (%d). Ignoring.\n"
	.size	.L.str.25, 42

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Found NALU type %d, len %d undefined, ignore NALU, moving on\n"
	.size	.L.str.26, 62

	.type	.L__const.exit_picture.yuv_types,@object # @__const.exit_picture.yuv_types
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const.exit_picture.yuv_types:
	.asciz	"4:0:0"
	.asciz	"4:2:0"
	.asciz	"4:2:2"
	.asciz	"4:4:4"
	.size	.L__const.exit_picture.yuv_types, 24

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	")       "
	.size	.L.str.34, 9

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"|IDR)"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"| I )"
	.size	.L.str.36, 6

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"| P )"
	.size	.L.str.37, 6

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"|SP )"
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"|SI )"
	.size	.L.str.39, 6

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"| B )"
	.size	.L.str.40, 6

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"| b )"
	.size	.L.str.41, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"%05d(%s%5d %5d %5d %8.4f %8.4f %8.4f  %s %7d\n"
	.size	.L.str.43, 46

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"%05d(%s%5d %5d %5d                             %s %7d\n"
	.size	.L.str.44, 55

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Completed Decoding frame %05d.\r"
	.size	.L.str.45, 32

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"copy_dec_picture_JV: tone_mapping_lut"
	.size	.L.str.46, 38

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"An unintentional loss of pictures occurs! Exit\n"
	.size	.L.str.47, 48

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"p_Vid->structure not initialized"
	.size	.L.str.48, 33

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"init_picture: tone_mapping_lut"
	.size	.L.str.49, 31

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Maximum number of supported slices exceeded. \nPlease recompile with increased value for MAX_NUM_SLICES"
	.size	.L.str.50, 103

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture'"
	.size	.Lstr, 79

	.type	.Lstr.51,@object                # @str.51
.Lstr.51:
	.asciz	"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture'"
	.size	.Lstr.51, 79

	.type	.Lstr.52,@object                # @str.52
.Lstr.52:
	.asciz	"Found Subsequence SPS NALU. Ignoring."
	.size	.Lstr.52, 38

	.type	.Lstr.53,@object                # @str.53
.Lstr.53:
	.asciz	"Skipping these filling bits, proceeding w/ next NALU"
	.size	.Lstr.53, 53

	.type	.Lstr.54,@object                # @str.54
.Lstr.54:
	.asciz	"found data partition C without matching DP A, discarding"
	.size	.Lstr.54, 57

	.type	.Lstr.55,@object                # @str.55
.Lstr.55:
	.asciz	"found data partition B without matching DP A, discarding"
	.size	.Lstr.55, 57

	.type	.Lstr.56,@object                # @str.56
.Lstr.56:
	.asciz	"Waning: got a data partition B which does not match DP_A (DP loss!)"
	.size	.Lstr.56, 68

	.type	.Lstr.57,@object                # @str.57
.Lstr.57:
	.asciz	"Warning: got a data partition C which does not match DP_A(DP loss!)"
	.size	.Lstr.57, 68

	.type	.Lstr.58,@object                # @str.58
.Lstr.58:
	.asciz	"Warning: Decoding does not start with an IDR picture."
	.size	.Lstr.58, 54

	.type	.Lstr.59,@object                # @str.59
.Lstr.59:
	.asciz	"Warning: could not read from reconstructed file"
	.size	.Lstr.59, 48

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
