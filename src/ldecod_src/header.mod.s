	.text
	.file	"header.c"
	.globl	CeilLog2                        # -- Begin function CeilLog2
	.p2align	4, 0x90
	.type	CeilLog2,@function
CeilLog2:                               # @CeilLog2
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edi killed $edi def $rdi
	leal	-1(%rdi), %ecx
	bsrl	%ecx, %eax
	xorl	$-32, %eax
	addl	$33, %eax
	testl	%ecx, %ecx
	cmovel	%ecx, %eax
	retq
.Lfunc_end0:
	.size	CeilLog2, .Lfunc_end0-CeilLog2
	.cfi_endproc
                                        # -- End function
	.globl	CeilLog2_sf                     # -- Begin function CeilLog2_sf
	.p2align	4, 0x90
	.type	CeilLog2_sf,@function
CeilLog2_sf:                            # @CeilLog2_sf
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edi killed $edi def $rdi
	leal	-1(%rdi), %ecx
	bsrl	%ecx, %eax
	xorl	$-32, %eax
	addl	$33, %eax
	testl	%ecx, %ecx
	cmovel	%ecx, %eax
	retq
.Lfunc_end1:
	.size	CeilLog2_sf, .Lfunc_end1-CeilLog2_sf
	.cfi_endproc
                                        # -- End function
	.globl	FirstPartOfSliceHeader          # -- Begin function FirstPartOfSliceHeader
	.p2align	4, 0x90
	.type	FirstPartOfSliceHeader,@function
FirstPartOfSliceHeader:                 # @FirstPartOfSliceHeader
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
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movq	312(%rdi), %rax
	movq	(%rax), %r14
	movl	8(%r14), %eax
	movq	p_Dec@GOTPCREL(%rip), %r15
	movq	(%r15), %rcx
	movl	%eax, 24(%rcx)
	movl	$.L.str, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 188(%rbx)
	movl	$.L.str.1, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	-5(%rax), %ecx
	cmpl	$5, %eax
	cmovll	%eax, %ecx
	movl	%ecx, 164(%rbx)
	movl	%ecx, 848776(%r12)
	movl	$.L.str.2, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 1228(%rbx)
	cmpl	$0, 849280(%r12)
	je	.LBB2_1
# %bb.2:                                # %if.then8
	movl	$.L.str.3, %esi
	movl	$2, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	jmp	.LBB2_3
.LBB2_1:
	xorl	%eax, %eax
.LBB2_3:                                # %if.end11
	movl	%eax, 216(%rbx)
	movq	(%r15), %rax
	movl	24(%rax), %eax
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
.Lfunc_end2:
	.size	FirstPartOfSliceHeader, .Lfunc_end2-FirstPartOfSliceHeader
	.cfi_endproc
                                        # -- End function
	.globl	RestOfSliceHeader               # -- Begin function RestOfSliceHeader
	.p2align	4, 0x90
	.type	RestOfSliceHeader,@function
RestOfSliceHeader:                      # @RestOfSliceHeader
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
	movq	%rdi, %r14
	movq	(%rdi), %r15
	movq	8(%rdi), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%r15), %r12
	movq	312(%rdi), %rax
	movq	(%rax), %rbx
	movl	2068(%r12), %edi
	addl	$4, %edi
	movl	$.L.str.4, %esi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	%eax, 172(%r14)
	cmpl	$0, 48(%r14)
	je	.LBB3_2
# %bb.1:                                # %if.then
	movl	%eax, 848944(%r15)
	movl	$0, 849228(%r15)
.LBB3_2:                                # %if.end
	cmpl	$0, 3136(%r12)
	je	.LBB3_4
# %bb.3:                                # %if.then9
	movl	$0, 848876(%r15)
	movl	$0, 176(%r14)
	movl	848876(%r15), %eax
	movl	%eax, 184(%r14)
	cmpl	$0, 3140(%r12)
	jne	.LBB3_9
	jmp	.LBB3_8
.LBB3_4:                                # %if.else
	movl	$.L.str.5, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, 176(%r14)
	testl	%eax, %eax
	je	.LBB3_6
# %bb.5:                                # %if.then14
	movl	$.L.str.6, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movb	%al, 180(%r14)
	cmpb	$1, %al
	movl	$2, %eax
	sbbl	$0, %eax
	movl	%eax, 848876(%r15)
	movl	848876(%r15), %eax
	movl	%eax, 184(%r14)
	cmpl	$0, 3140(%r12)
	je	.LBB3_8
.LBB3_9:                                # %land.rhs
	cmpl	$0, 176(%r14)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 128(%r14)
	cmpl	$0, 48(%r14)
	je	.LBB3_12
.LBB3_11:                               # %if.then47
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, 52(%r14)
.LBB3_12:                               # %if.end49
	movl	2072(%r12), %eax
	testl	%eax, %eax
	je	.LBB3_13
# %bb.17:                               # %if.end64
	cmpl	$1, %eax
	je	.LBB3_18
.LBB3_24:                               # %if.end94
	movq	8(%r15), %rax
	cmpl	$0, 2208(%rax)
	je	.LBB3_26
.LBB3_25:                               # %if.then97
	movl	$.L.str.12, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, 220(%r14)
.LBB3_26:                               # %if.end99
	cmpl	$1, 164(%r14)
	jne	.LBB3_28
# %bb.27:                               # %if.then102
	movl	$.L.str.13, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, 132(%r14)
.LBB3_28:                               # %if.end104
	movq	8(%r15), %rax
	movl	2168(%rax), %eax
	incl	%eax
	movl	%eax, 136(%r14)
	movq	8(%r15), %rax
	movl	2172(%rax), %eax
	incl	%eax
	movl	%eax, 140(%r14)
	movl	848776(%r15), %eax
	cmpl	$3, %eax
	ja	.LBB3_33
# %bb.29:                               # %if.end104
	cmpl	$2, %eax
	je	.LBB3_33
# %bb.30:                               # %if.then121
	movl	$.L.str.14, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB3_33
# %bb.31:                               # %if.then124
	movl	$.L.str.15, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	incl	%eax
	movl	%eax, 136(%r14)
	cmpl	$1, 848776(%r15)
	jne	.LBB3_33
# %bb.32:                               # %if.then132
	movl	$.L.str.16, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	incl	%eax
	movl	%eax, 140(%r14)
.LBB3_33:                               # %if.end139
	movq	%r12, 32(%rsp)                  # 8-byte Spill
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	cmpl	$1, 164(%r14)
	je	.LBB3_35
# %bb.34:                               # %if.then143
	movl	$0, 140(%r14)
.LBB3_35:                               # %if.end146
	movl	32(%r14), %ebx
	movq	(%r14), %r13
	movq	312(%r14), %rax
	movq	(%rax), %r12
	movq	%r14, %rdi
	callq	alloc_ref_pic_list_reordering_buffer@PLT
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movl	848776(%r13), %eax
	cmpl	$1, %ebx
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	ja	.LBB3_53
# %bb.36:                               # %if.then153
	movslq	%eax, %rcx
	imulq	$1717986919, %rcx, %rcx         # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	cmpl	$2, %eax
	je	.LBB3_45
# %bb.37:                               # %if.then153
	cmpl	$4, %eax
	je	.LBB3_45
# %bb.38:                               # %if.then.i
	movl	$.L.str.66, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	%eax, 1104(%r14)
	testl	%eax, %eax
	je	.LBB3_45
# %bb.39:                               # %do.body.preheader.i
	leaq	1160(%r14), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	1144(%r14), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	1128(%r14), %r13
	xorl	%ebx, %ebx
	jmp	.LBB3_40
	.p2align	4, 0x90
.LBB3_43:                               # %if.end37.sink.split.i
                                        #   in Loop: Header=BB3_40 Depth=1
	movq	%r12, %rsi
	callq	ue_v@PLT
	movq	(%r15), %rcx
	movl	%eax, (%rcx,%rbx)
.LBB3_44:                               # %if.end37.i
                                        #   in Loop: Header=BB3_40 Depth=1
	addq	$4, %rbx
	cmpl	$3, %ebp
	je	.LBB3_45
.LBB3_40:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.67, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movl	%eax, %ebp
	movq	1112(%r14), %rax
	movl	%ebp, (%rax,%rbx)
	movl	$.L.str.60, %edi
	movq	%r13, %r15
	cmpl	$2, %ebp
	jb	.LBB3_43
# %bb.41:                               # %if.else.i
                                        #   in Loop: Header=BB3_40 Depth=1
	movl	$.L.str.61, %edi
	movq	(%rsp), %r15                    # 8-byte Reload
	je	.LBB3_43
# %bb.42:                               # %if.else27.i
                                        #   in Loop: Header=BB3_40 Depth=1
	movl	%ebp, %eax
	andl	$-2, %eax
	movl	$.L.str.68, %edi
	movq	24(%rsp), %r15                  # 8-byte Reload
	cmpl	$4, %eax
	je	.LBB3_43
	jmp	.LBB3_44
.LBB3_53:                               # %if.else154
	cmpl	$2, %eax
	je	.LBB3_68
# %bb.54:                               # %if.else154
	cmpl	$4, %eax
	je	.LBB3_68
# %bb.55:                               # %if.then.i579
	movl	$.L.str.58, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	%eax, 1104(%r14)
	testl	%eax, %eax
	je	.LBB3_61
# %bb.56:                               # %do.body.preheader.i583
	leaq	1144(%r14), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	1128(%r14), %rbx
	xorl	%r13d, %r13d
	jmp	.LBB3_57
	.p2align	4, 0x90
.LBB3_59:                               # %if.end26.sink.split.i
                                        #   in Loop: Header=BB3_57 Depth=1
	movq	%r12, %rsi
	callq	ue_v@PLT
	movq	(%r15), %rcx
	movl	%eax, (%rcx,%r13)
.LBB3_60:                               # %if.end26.i
                                        #   in Loop: Header=BB3_57 Depth=1
	addq	$4, %r13
	cmpl	$3, %ebp
	je	.LBB3_61
.LBB3_57:                               # %do.body.i587
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.59, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movl	%eax, %ebp
	movq	1112(%r14), %rax
	movl	%ebp, (%rax,%r13)
	movl	$.L.str.60, %edi
	movq	%rbx, %r15
	cmpl	$2, %ebp
	jb	.LBB3_59
# %bb.58:                               # %if.else.i590
                                        #   in Loop: Header=BB3_57 Depth=1
	movl	$.L.str.61, %edi
	movq	(%rsp), %r15                    # 8-byte Reload
	je	.LBB3_59
	jmp	.LBB3_60
.LBB3_45:                               # %if.end40.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	movslq	848776(%rax), %rax
	imulq	$1717986919, %rax, %rcx         # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$33, %rcx
	addl	%edx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	cmpl	$1, %eax
	jne	.LBB3_68
# %bb.46:                               # %if.then44.i
	movl	$.L.str.62, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	%eax, 1108(%r14)
	testl	%eax, %eax
	je	.LBB3_68
# %bb.47:                               # %do.body50.preheader.i
	leaq	1168(%r14), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	1152(%r14), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	1136(%r14), %r13
	xorl	%ebx, %ebx
	jmp	.LBB3_48
	.p2align	4, 0x90
.LBB3_51:                               # %if.end85.sink.split.i
                                        #   in Loop: Header=BB3_48 Depth=1
	movq	%r12, %rsi
	callq	ue_v@PLT
	movq	(%r15), %rcx
	movl	%eax, (%rcx,%rbx)
.LBB3_52:                               # %if.end85.i
                                        #   in Loop: Header=BB3_48 Depth=1
	addq	$4, %rbx
	cmpl	$3, %ebp
	je	.LBB3_68
.LBB3_48:                               # %do.body50.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.69, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movl	%eax, %ebp
	movq	1120(%r14), %rax
	movl	%ebp, (%rax,%rbx)
	movl	$.L.str.64, %edi
	movq	%r13, %r15
	cmpl	$2, %ebp
	jb	.LBB3_51
# %bb.49:                               # %if.else65.i
                                        #   in Loop: Header=BB3_48 Depth=1
	movl	$.L.str.65, %edi
	movq	(%rsp), %r15                    # 8-byte Reload
	je	.LBB3_51
# %bb.50:                               # %if.else73.i
                                        #   in Loop: Header=BB3_48 Depth=1
	movl	%ebp, %eax
	andl	$-2, %eax
	movl	$.L.str.70, %edi
	movq	24(%rsp), %r15                  # 8-byte Reload
	cmpl	$4, %eax
	je	.LBB3_51
	jmp	.LBB3_52
.LBB3_13:                               # %if.then52
	movl	2076(%r12), %edi
	addl	$4, %edi
	movl	$.L.str.8, %esi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	%eax, 80(%r14)
	movq	8(%r15), %rcx
	xorl	%eax, %eax
	cmpl	$1, 2040(%rcx)
	jne	.LBB3_16
# %bb.14:                               # %land.lhs.true
	cmpl	$0, 176(%r14)
	jne	.LBB3_16
# %bb.15:                               # %if.then59
	movl	$.L.str.9, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
.LBB3_16:                               # %if.end64thread-pre-split
	movl	%eax, 84(%r14)
	movl	2072(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB3_24
.LBB3_18:                               # %if.then68
	cmpl	$0, 2080(%r12)
	je	.LBB3_19
# %bb.22:                               # %if.else88
	movl	$0, 88(%r14)
	xorl	%eax, %eax
	jmp	.LBB3_23
.LBB3_19:                               # %if.then70
	movl	$.L.str.10, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	movl	%eax, 88(%r14)
	movq	8(%r15), %rcx
	xorl	%eax, %eax
	cmpl	$1, 2040(%rcx)
	jne	.LBB3_23
# %bb.20:                               # %land.lhs.true77
	cmpl	$0, 176(%r14)
	jne	.LBB3_23
# %bb.21:                               # %if.then80
	movl	$.L.str.11, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
.LBB3_23:                               # %if.end94.sink.split
	movl	%eax, 92(%r14)
	movq	8(%r15), %rax
	cmpl	$0, 2208(%rax)
	jne	.LBB3_25
	jmp	.LBB3_26
.LBB3_61:                               # %if.end29.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	$1, 848776(%rax)
	jne	.LBB3_68
# %bb.62:                               # %if.then32.i
	movl	$.L.str.62, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	%eax, 1108(%r14)
	testl	%eax, %eax
	je	.LBB3_68
# %bb.63:                               # %do.body38.preheader.i
	leaq	1152(%r14), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	1136(%r14), %rbx
	xorl	%r13d, %r13d
	jmp	.LBB3_64
	.p2align	4, 0x90
.LBB3_66:                               # %if.end62.sink.split.i
                                        #   in Loop: Header=BB3_64 Depth=1
	movq	%r12, %rsi
	callq	ue_v@PLT
	movq	(%r15), %rcx
	movl	%eax, (%rcx,%r13)
.LBB3_67:                               # %if.end62.i
                                        #   in Loop: Header=BB3_64 Depth=1
	addq	$4, %r13
	cmpl	$3, %ebp
	je	.LBB3_68
.LBB3_64:                               # %do.body38.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.63, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movl	%eax, %ebp
	movq	1120(%r14), %rax
	movl	%ebp, (%rax,%r13)
	movl	$.L.str.64, %edi
	movq	%rbx, %r15
	cmpl	$2, %ebp
	jb	.LBB3_66
# %bb.65:                               # %if.else53.i
                                        #   in Loop: Header=BB3_64 Depth=1
	movl	$.L.str.65, %edi
	movq	(%rsp), %r15                    # 8-byte Reload
	je	.LBB3_66
	jmp	.LBB3_67
.LBB3_68:                               # %if.end68.i
	cmpl	$0, 220(%r14)
	je	.LBB3_71
# %bb.69:                               # %land.lhs.true70.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	$2, 848776(%rax)
	je	.LBB3_71
# %bb.70:                               # %if.end155.sink.split
	movq	1128(%r14), %rax
	movl	(%rax), %eax
	incl	%eax
	movl	%eax, 232(%r14)
.LBB3_71:                               # %if.end155
	movl	164(%r14), %eax
	cmpl	$3, %eax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	je	.LBB3_75
# %bb.72:                               # %if.end155
	cmpl	$1, %eax
	je	.LBB3_76
# %bb.73:                               # %if.end155
	testl	%eax, %eax
	jne	.LBB3_74
.LBB3_75:                               # %cond.true
	movq	8(%rdx), %rcx
	movl	2176(%rcx), %ecx
	movw	%cx, 13272(%r14)
	cmpl	$1, %eax
	je	.LBB3_80
.LBB3_79:
	xorl	%eax, %eax
	jmp	.LBB3_81
.LBB3_76:                               # %land.rhs167
	movq	8(%rdx), %rcx
	cmpl	$1, 2180(%rcx)
	sete	%cl
	jmp	.LBB3_77
.LBB3_74:
	xorl	%ecx, %ecx
.LBB3_77:                               # %land.end171
	movzbl	%cl, %ecx
	movw	%cx, 13272(%r14)
	cmpl	$1, %eax
	jne	.LBB3_79
.LBB3_80:                               # %land.rhs179
	movq	8(%rdx), %rax
	cmpl	$0, 2180(%rax)
	setne	%al
.LBB3_81:                               # %land.end184
	movzbl	%al, %eax
	movw	%ax, 13274(%r14)
	movq	8(%rdx), %rax
	cmpl	$0, 2176(%rax)
	je	.LBB3_84
# %bb.82:                               # %land.lhs.true191
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	848776(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB3_86
# %bb.83:                               # %land.lhs.true191
	cmpl	$3, %ecx
	je	.LBB3_86
.LBB3_84:                               # %lor.lhs.false199
	cmpl	$1, 2180(%rax)
	jne	.LBB3_112
# %bb.85:                               # %land.lhs.true204
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$1, 848776(%rax)
	jne	.LBB3_112
.LBB3_86:                               # %if.then208
	movq	(%r14), %rbp
	movq	312(%r14), %rax
	movq	16(%rbp), %r13
	movq	(%rax), %r12
	movl	$.L.str.71, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movzwl	%ax, %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
	movl	$1, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	xorl	%r15d, %r15d
	cmpl	$1, %eax
	cmovbl	%r15d, %edx
	movw	%ax, 13276(%r14)
	movw	%dx, 13304(%r14)
	cmpl	$0, 36(%r13)
	je	.LBB3_88
# %bb.87:                               # %if.then.i598
	movl	$.L.str.72, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movzwl	%ax, %eax
	leal	-1(%rax), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	cmpl	$1, %eax
	movw	%ax, 13278(%r14)
	cmovbl	%r15d, %ebx
	movw	%bx, 13306(%r14)
.LBB3_88:                               # %if.end.i
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_89:                               # %for.cond1.preheader.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	13276(%r14), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movq	13280(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movl	%edx, (%rcx)
	movq	13280(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movl	%edx, (%rcx)
	movzbl	13278(%r14), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movq	13280(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movl	%edx, 4(%rcx)
	movq	13280(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movl	%edx, 4(%rcx)
	movzbl	13278(%r14), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movq	13280(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movl	%edx, 8(%rcx)
	movq	13280(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rcx
	movl	%edx, 8(%rcx)
	incq	%rax
	cmpq	$32, %rax
	jne	.LBB3_89
# %bb.90:                               # %for.cond.preheader.i
	cmpl	$0, 136(%r14)
	jle	.LBB3_100
# %bb.91:                               # %for.body.lr.ph.i
	xorl	%r15d, %r15d
	jmp	.LBB3_92
	.p2align	4, 0x90
.LBB3_98:                               # %for.body77.us.preheader.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movzbl	13278(%r14), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movq	13280(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 4(%rcx)
	movq	13288(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movl	$0, 4(%rax)
	movzbl	13278(%r14), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movq	13280(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 8(%rcx)
	movq	13288(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movl	$0, 8(%rax)
.LBB3_99:                               # %for.inc127.i
                                        #   in Loop: Header=BB3_92 Depth=1
	incq	%r15
	movslq	136(%r14), %rax
	cmpq	%rax, %r15
	jge	.LBB3_100
.LBB3_92:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.73, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB3_94
# %bb.93:                               # %if.then31.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movl	$.L.str.74, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13280(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, (%rcx)
	movl	$.L.str.75, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13288(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, (%rcx)
	movq	13288(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movzbl	849040(%rbp), %ecx
	addb	$-8, %cl
	shll	%cl, (%rax)
	cmpl	$0, 36(%r13)
	jne	.LBB3_96
	jmp	.LBB3_99
	.p2align	4, 0x90
.LBB3_94:                               # %if.else.i604
                                        #   in Loop: Header=BB3_92 Depth=1
	movzbl	13276(%r14), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movq	13280(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, (%rcx)
	movq	13288(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movl	$0, (%rax)
	cmpl	$0, 36(%r13)
	je	.LBB3_99
.LBB3_96:                               # %if.then72.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movl	$.L.str.76, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB3_98
# %bb.97:                               # %for.body77.preheader.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movl	$.L.str.77, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13280(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 4(%rcx)
	movl	$.L.str.78, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13288(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 4(%rcx)
	movq	13288(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movzbl	849042(%rbp), %ecx
	addb	$-8, %cl
	shll	%cl, 4(%rax)
	movl	$.L.str.77, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13280(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 8(%rcx)
	movl	$.L.str.78, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13288(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 8(%rcx)
	movq	13288(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movzbl	849042(%rbp), %ecx
	addb	$-8, %cl
	shll	%cl, 8(%rax)
	jmp	.LBB3_99
.LBB3_100:                              # %for.end129.i
	cmpl	$1, 848776(%rbp)
	jne	.LBB3_112
# %bb.101:                              # %land.lhs.true.i
	movq	8(%rbp), %rax
	cmpl	$1, 2180(%rax)
	jne	.LBB3_112
# %bb.102:                              # %for.cond135.preheader.i
	cmpl	$0, 140(%r14)
	jle	.LBB3_112
# %bb.103:                              # %for.body140.lr.ph.i
	xorl	%r15d, %r15d
	jmp	.LBB3_104
	.p2align	4, 0x90
.LBB3_110:                              # %for.body193.us.preheader.i
                                        #   in Loop: Header=BB3_104 Depth=1
	movzbl	13278(%r14), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movq	13280(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 4(%rcx)
	movq	13288(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movl	$0, 4(%rax)
	movzbl	13278(%r14), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movq	13280(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 8(%rcx)
	movq	13288(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movl	$0, 8(%rax)
.LBB3_111:                              # %for.inc247.i
                                        #   in Loop: Header=BB3_104 Depth=1
	incq	%r15
	movslq	140(%r14), %rax
	cmpq	%rax, %r15
	jge	.LBB3_112
.LBB3_104:                              # %for.body140.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.79, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB3_106
# %bb.105:                              # %if.then143.i
                                        #   in Loop: Header=BB3_104 Depth=1
	movl	$.L.str.80, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13280(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, (%rcx)
	movl	$.L.str.81, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13288(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, (%rcx)
	movq	13288(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movzbl	849040(%rbp), %ecx
	addb	$-8, %cl
	shll	%cl, (%rax)
	cmpl	$0, 36(%r13)
	jne	.LBB3_108
	jmp	.LBB3_111
	.p2align	4, 0x90
.LBB3_106:                              # %if.else170.i
                                        #   in Loop: Header=BB3_104 Depth=1
	movzbl	13276(%r14), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movq	13280(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, (%rcx)
	movq	13288(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movl	$0, (%rax)
	cmpl	$0, 36(%r13)
	je	.LBB3_111
.LBB3_108:                              # %if.then188.i
                                        #   in Loop: Header=BB3_104 Depth=1
	movl	$.L.str.82, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB3_110
# %bb.109:                              # %for.body193.preheader.i
                                        #   in Loop: Header=BB3_104 Depth=1
	movl	$.L.str.83, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13280(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 4(%rcx)
	movl	$.L.str.84, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13288(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 4(%rcx)
	movq	13288(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movzbl	849042(%rbp), %ecx
	addb	$-8, %cl
	shll	%cl, 4(%rax)
	movl	$.L.str.83, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13280(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 8(%rcx)
	movl	$.L.str.84, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	movq	13288(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movl	%eax, 8(%rcx)
	movq	13288(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rax
	movzbl	849042(%rbp), %ecx
	addb	$-8, %cl
	shll	%cl, 8(%rax)
	jmp	.LBB3_111
.LBB3_112:                              # %if.end209
	cmpl	$0, 56(%r14)
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	48(%rsp), %r12                  # 8-byte Reload
	je	.LBB3_114
# %bb.113:                              # %if.then211
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	dec_ref_pic_marking
.LBB3_114:                              # %if.end212
	movq	8(%r15), %rax
	xorl	%ebx, %ebx
	cmpl	$0, 12(%rax)
	movl	$0, %eax
	je	.LBB3_118
# %bb.115:                              # %land.lhs.true215
	movl	848776(%r15), %ecx
	cmpl	$2, %ecx
	je	.LBB3_118
# %bb.116:                              # %land.lhs.true215
	cmpl	$4, %ecx
	je	.LBB3_118
# %bb.117:                              # %if.then223
	movl	$.L.str.17, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
.LBB3_118:                              # %if.end227
	movl	%eax, 168(%r14)
	movl	$.L.str.18, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, 152(%r14)
	movq	8(%r15), %rcx
	movl	2184(%rcx), %ecx
	addl	%ecx, %eax
	addl	$26, %eax
	movl	%eax, 148(%r14)
	subl	849052(%r15), %ebx
	cmpl	%ebx, %eax
	setge	%cl
	cmpl	$52, %eax
	setl	%al
	testb	%al, %cl
	jne	.LBB3_120
# %bb.119:                              # %if.then239
	movl	$.L.str.19, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB3_120:                              # %if.end240
	movl	848776(%r15), %eax
	leal	-3(%rax), %ecx
	cmpl	$1, %ecx
	ja	.LBB3_125
# %bb.121:                              # %if.then248
	cmpl	$3, %eax
	jne	.LBB3_123
# %bb.122:                              # %if.then252
	movl	$.L.str.20, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	%eax, 224(%r14)
.LBB3_123:                              # %if.end254
	movl	$.L.str.21, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, 160(%r14)
	movq	8(%r15), %rcx
	movl	2188(%rcx), %ecx
	addl	%ecx, %eax
	addl	$26, %eax
	movl	%eax, 156(%r14)
	cmpl	$52, %eax
	jb	.LBB3_125
# %bb.124:                              # %if.then266
	movl	$.L.str.22, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB3_125:                              # %if.end268
	movq	16(%r15), %rax
	movl	4(%rax), %ecx
	cmpl	$110, %ecx
	jb	.LBB3_127
# %bb.126:                              # %land.lhs.true272
	cmpl	$0, 20(%rax)
	jne	.LBB3_128
	jmp	.LBB3_129
.LBB3_127:                              # %lor.lhs.false275
	cmpl	$44, %ecx
	jne	.LBB3_129
.LBB3_128:                              # %land.lhs.true294
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpl	$1, 788(%rax)
	jne	.LBB3_134
.LBB3_129:                              # %if.then297
	movq	8(%r15), %rax
	cmpl	$0, 2200(%rax)
	je	.LBB3_133
# %bb.130:                              # %if.then300
	movl	$.L.str.23, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movw	%ax, 1220(%r14)
	cmpw	$1, %ax
	jne	.LBB3_131
# %bb.132:                              # %if.else313
	movl	$0, 1222(%r14)
	movq	8(%r15), %rcx
	cmpl	$0, 2044(%rcx)
	jne	.LBB3_139
	jmp	.LBB3_141
.LBB3_134:                              # %if.else322
	movq	8(%r15), %rax
	cmpl	$0, 2200(%rax)
	je	.LBB3_137
# %bb.135:                              # %if.then326
	movl	$.L.str.23, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movw	%ax, 1220(%r14)
	cmpw	$1, %ax
	je	.LBB3_137
# %bb.136:                              # %if.then334
	movl	$.L.str.24, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	addl	%eax, %eax
	movw	%ax, 1222(%r14)
	movl	$.L.str.25, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
.LBB3_137:                              # %if.end344
	movl	$1, 1220(%r14)
	movw	$0, 1224(%r14)
	movq	8(%r15), %rcx
	cmpl	$0, 2044(%rcx)
	jne	.LBB3_139
	jmp	.LBB3_141
.LBB3_133:                              # %if.else317
	movw	$0, 1224(%r14)
	movl	$0, 1220(%r14)
	movq	8(%r15), %rcx
	cmpl	$0, 2044(%rcx)
	jne	.LBB3_139
	jmp	.LBB3_141
.LBB3_131:                              # %if.then307
	movl	$.L.str.24, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	addl	%eax, %eax
	movw	%ax, 1222(%r14)
	movl	$.L.str.25, %edi
	movq	%r12, %rsi
	callq	se_v@PLT
	addl	%eax, %eax
	movw	%ax, 1224(%r14)
	movq	8(%r15), %rcx
	cmpl	$0, 2044(%rcx)
	je	.LBB3_141
.LBB3_139:                              # %land.lhs.true352
	movl	2048(%rcx), %eax
	addl	$-3, %eax
	cmpl	$2, %eax
	ja	.LBB3_141
# %bb.140:                              # %if.then361
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movl	3128(%rdx), %eax
	movl	3132(%rdx), %edx
	incl	%edx
	incl	%eax
	imull	%edx, %eax
	movl	2152(%rcx), %ecx
	incl	%ecx
	xorl	%edx, %edx
	divl	%ecx
	cmpl	$1, %edx
	sbbl	$-1, %eax
	bsrl	%eax, %edi
	xorl	$-32, %edi
	addl	$33, %edi
	testl	%eax, %eax
	cmovel	%eax, %edi
	movl	$.L.str.26, %esi
	movq	%r12, %rdx
	callq	u_v@PLT
	movl	%eax, 228(%r14)
.LBB3_141:                              # %if.end382
	movl	848996(%r15), %esi
	movl	849004(%r15), %ecx
	movl	176(%r14), %edi
	incl	%edi
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, 849008(%r15)
	imull	%esi, %eax
	movl	%eax, 849012(%r15)
	imull	%ecx, %esi
	movl	%esi, 849016(%r15)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
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
.LBB3_6:                                # %if.else20
	.cfi_def_cfa_offset 112
	movl	$0, 848876(%r15)
	movb	$0, 180(%r14)
	movl	848876(%r15), %eax
	movl	%eax, 184(%r14)
	cmpl	$0, 3140(%r12)
	jne	.LBB3_9
.LBB3_8:
	xorl	%eax, %eax
	movzbl	%al, %eax
	movl	%eax, 128(%r14)
	cmpl	$0, 48(%r14)
	jne	.LBB3_11
	jmp	.LBB3_12
.Lfunc_end3:
	.size	RestOfSliceHeader, .Lfunc_end3-RestOfSliceHeader
	.cfi_endproc
                                        # -- End function
	.globl	dec_ref_pic_marking             # -- Begin function dec_ref_pic_marking
	.p2align	4, 0x90
	.type	dec_ref_pic_marking,@function
dec_ref_pic_marking:                    # @dec_ref_pic_marking
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	248(%rdx), %r12
	movq	248(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_3
	.p2align	4, 0x90
.LBB4_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rax
	movq	%rax, (%r12)
	callq	free@PLT
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	jne	.LBB4_1
.LBB4_3:                                # %while.end
	cmpl	$0, 48(%r14)
	je	.LBB4_5
# %bb.4:                                # %if.then
	movl	$.L.str.27, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, 236(%r14)
	movl	%eax, 849024(%r15)
	movl	$.L.str.28, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, 240(%r14)
.LBB4_17:                               # %if.end47
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
.LBB4_5:                                # %if.else
	.cfi_def_cfa_offset 48
	movl	$.L.str.29, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, 244(%r14)
	testl	%eax, %eax
	jne	.LBB4_6
	jmp	.LBB4_17
	.p2align	4, 0x90
.LBB4_16:                               # %do.cond
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%r14, (%rax)
	testl	%r15d, %r15d
	je	.LBB4_17
.LBB4_6:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc@PLT
	movq	%rax, %r14
	movq	$0, 24(%rax)
	movl	$.L.str.30, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, %r15d
	movl	%eax, (%r14)
	leal	-1(%r15), %eax
	cmpl	$5, %eax
	ja	.LBB4_13
# %bb.7:                                # %do.body
                                        #   in Loop: Header=BB4_6 Depth=1
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_8:                                # %if.then15
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$.L.str.31, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, 4(%r14)
	cmpl	$3, %r15d
	je	.LBB4_11
# %bb.9:                                # %if.then15
                                        #   in Loop: Header=BB4_6 Depth=1
	cmpl	$2, %r15d
	jne	.LBB4_13
.LBB4_10:                               # %if.then18
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$.L.str.32, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, 8(%r14)
	movq	(%r12), %rcx
	movq	%r12, %rax
	testq	%rcx, %rcx
	jne	.LBB4_14
	jmp	.LBB4_16
	.p2align	4, 0x90
.LBB4_11:                               # %if.then24
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$.L.str.33, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, 12(%r14)
.LBB4_13:                               # %if.end30
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r12), %rcx
	movq	%r12, %rax
	testq	%rcx, %rcx
	je	.LBB4_16
	.p2align	4, 0x90
.LBB4_14:                               # %while.cond37
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB4_14
# %bb.15:                               # %while.end42
                                        #   in Loop: Header=BB4_6 Depth=1
	addq	$24, %rax
	jmp	.LBB4_16
.LBB4_12:                               # %if.then28
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$.L.str.34, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, 16(%r14)
	movq	(%r12), %rcx
	movq	%r12, %rax
	testq	%rcx, %rcx
	jne	.LBB4_14
	jmp	.LBB4_16
.Lfunc_end4:
	.size	dec_ref_pic_marking, .Lfunc_end4-dec_ref_pic_marking
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI4_0:
	.quad	.LBB4_8
	.quad	.LBB4_10
	.quad	.LBB4_8
	.quad	.LBB4_12
	.quad	.LBB4_13
	.quad	.LBB4_11
                                        # -- End function
	.text
	.globl	decode_poc                      # -- Begin function decode_poc
	.p2align	4, 0x90
	.type	decode_poc,@function
decode_poc:                             # @decode_poc
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
	movq	16(%rdi), %rbx
	movzbl	2076(%rbx), %ecx
	addb	$4, %cl
	movl	$1, %eax
	shll	%cl, %eax
	movl	2072(%rbx), %ecx
	cmpl	$2, %ecx
	je	.LBB5_15
# %bb.1:                                # %entry
	cmpl	$1, %ecx
	je	.LBB5_9
# %bb.2:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB5_63
# %bb.3:                                # %sw.bb
	cmpl	$0, 48(%rsi)
	je	.LBB5_25
# %bb.4:                                # %if.then
	movl	$0, 848952(%rdi)
.LBB5_5:                                # %if.end12.thread
	movl	$0, 848956(%rdi)
	movl	80(%rsi), %ecx
	xorl	%edx, %edx
.LBB5_6:                                # %if.else20
	movl	%ecx, %r8d
	subl	%edx, %r8d
	jbe	.LBB5_18
# %bb.7:                                # %land.lhs.true24
	movl	%eax, %edx
	shrl	%edx
	cmpl	%edx, %r8d
	jbe	.LBB5_18
# %bb.8:                                # %if.then30
	movl	848952(%rdi), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 96(%rsi)
	cmpl	$0, 176(%rsi)
	jne	.LBB5_19
.LBB5_58:                               # %if.then40
	addl	%ecx, %eax
	movl	%eax, 68(%rsi)
	movl	84(%rsi), %ecx
	leal	(%rcx,%rax), %edx
	movl	%edx, 72(%rsi)
	testl	%ecx, %ecx
	cmovlel	%edx, %eax
	jmp	.LBB5_59
.LBB5_9:                                # %sw.bb86
	cmpl	$0, 48(%rsi)
	je	.LBB5_21
# %bb.10:                               # %if.then89
	movl	$0, 848976(%rdi)
	cmpl	$0, 172(%rsi)
	je	.LBB5_12
# %bb.11:                               # %if.then92
	movq	%rdi, %r14
	movl	$.L.str.35, %edi
	movq	%rsi, %r15
	movl	$-1020, %esi                    # imm = 0xFC04
	callq	error@PLT
	movq	%r15, %rsi
	movq	%r14, %rdi
.LBB5_12:                               # %if.end112
	cmpl	$0, 2092(%rbx)
	je	.LBB5_34
.LBB5_13:                               # %if.end120
	movl	172(%rsi), %eax
	cmpl	$0, 56(%rsi)
	leaq	100(%rsi), %r10
	setne	%cl
	addl	848976(%rdi), %eax
	leaq	56(%rsi), %r8
	movl	%eax, 100(%rsi)
	sete	%dl
	orb	%cl, %dl
	jne	.LBB5_35
# %bb.14:                               # %if.then127
	decl	%eax
	movl	%eax, (%r10)
	jmp	.LBB5_35
.LBB5_15:                               # %sw.bb228
	cmpl	$0, 48(%rsi)
	je	.LBB5_23
# %bb.16:                               # %if.then231
	movl	$0, 848976(%rdi)
	movq	$0, 68(%rsi)
	movl	$0, 76(%rsi)
	movl	$0, 104(%rsi)
	cmpl	$0, 172(%rsi)
	je	.LBB5_28
# %bb.17:                               # %if.then239
	movq	%rdi, %rbx
	movl	$.L.str.35, %edi
	movq	%rsi, %r14
	movl	$-1020, %esi                    # imm = 0xFC04
	callq	error@PLT
	movq	%rbx, %rdi
	movl	172(%r14), %eax
	jmp	.LBB5_78
.LBB5_18:                               # %if.else34
	movl	848952(%rdi), %eax
	movl	%eax, 96(%rsi)
	cmpl	$0, 176(%rsi)
	je	.LBB5_58
.LBB5_19:                               # %if.else52
	addl	%ecx, %eax
	cmpb	$0, 180(%rsi)
	je	.LBB5_29
# %bb.20:                               # %if.else61
	movl	%eax, 72(%rsi)
	jmp	.LBB5_59
.LBB5_21:                               # %if.else94
	cmpl	$0, 849028(%rdi)
	je	.LBB5_30
# %bb.22:                               # %if.end99.thread
	movl	$0, 848988(%rdi)
	movl	$0, 848972(%rdi)
	jmp	.LBB5_32
.LBB5_23:                               # %if.else241
	cmpl	$0, 849028(%rdi)
	je	.LBB5_47
# %bb.24:                               # %if.end247.thread
	movl	$0, 848972(%rdi)
	movl	$0, 848988(%rdi)
	jmp	.LBB5_49
.LBB5_25:                               # %if.else
	cmpl	$0, 849028(%rdi)
	je	.LBB5_54
# %bb.26:                               # %if.then3
	cmpl	$0, 849032(%rdi)
	movl	$0, 848952(%rdi)
	jne	.LBB5_5
# %bb.27:                               # %if.else8
	movl	68(%rsi), %edx
	movl	%edx, 848956(%rdi)
	jmp	.LBB5_55
.LBB5_28:
	xorl	%eax, %eax
	jmp	.LBB5_78
.LBB5_29:                               # %if.then55
	movl	%eax, 68(%rsi)
.LBB5_59:                               # %if.end68
	movl	%eax, 104(%rsi)
	movl	%eax, 76(%rsi)
	movl	%eax, 848984(%rdi)
	movl	172(%rsi), %eax
	cmpl	848972(%rdi), %eax
	je	.LBB5_61
# %bb.60:                               # %if.then75
	movl	%eax, 848972(%rdi)
.LBB5_61:                               # %if.end78
	cmpl	$0, 56(%rsi)
	je	.LBB5_63
# %bb.62:                               # %if.then80
	movl	80(%rsi), %eax
	movl	%eax, 848956(%rdi)
	movl	96(%rsi), %eax
	movl	%eax, 848952(%rdi)
.LBB5_63:                               # %sw.epilog
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_30:                               # %if.end99
	.cfi_def_cfa_offset 32
	movl	172(%rsi), %eax
	cmpl	848972(%rdi), %eax
	jae	.LBB5_32
# %bb.31:                               # %if.then104
	movl	848992(%rdi), %eax
	addl	848988(%rdi), %eax
	jmp	.LBB5_33
.LBB5_32:                               # %if.else108
	movl	848988(%rdi), %eax
.LBB5_33:                               # %if.end112
	movl	%eax, 848976(%rdi)
	cmpl	$0, 2092(%rbx)
	jne	.LBB5_13
.LBB5_34:                               # %if.end120.thread
	leaq	100(%rsi), %r10
	movl	$0, 100(%rsi)
	leaq	56(%rsi), %r8
.LBB5_35:                               # %if.end129
	movl	$0, 848980(%rdi)
	movl	2092(%rbx), %ecx
	xorl	%r9d, %r9d
	testl	%ecx, %ecx
	je	.LBB5_43
# %bb.36:                               # %for.cond.preheader
	jle	.LBB5_39
# %bb.37:                               # %for.body.lr.ph
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_38:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	2096(%rbx,%rax,4), %r9d
	movl	%r9d, 848980(%rdi)
	incq	%rax
	movslq	2092(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB5_38
.LBB5_39:                               # %if.end138
	movl	(%r10), %eax
	testl	%eax, %eax
	je	.LBB5_44
.LBB5_40:                               # %if.then141
	decl	%eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ecx
	movl	%eax, 848964(%rdi)
	movl	(%r10), %eax
	decl	%eax
	xorl	%edx, %edx
	divl	2092(%rbx)
	movl	%edx, 848968(%rdi)
	imull	%ecx, %r9d
	movl	%r9d, 848960(%rdi)
	testl	%edx, %edx
	js	.LBB5_69
# %bb.41:                               # %for.body155.lr.ph
	leaq	848960(%rdi), %rax
	leaq	2096(%rbx), %rcx
	movl	%edx, %r10d
	cmpl	$15, %edx
	jb	.LBB5_42
# %bb.45:                               # %vector.memcheck
	leaq	848964(%rdi), %rdx
	leaq	(%rbx,%r10,4), %r11
	addq	$2100, %r11                     # imm = 0x834
	cmpq	%r11, %rax
	setb	%r11b
	cmpq	%rdx, %rcx
	setb	%dl
	testb	%dl, %r11b
	je	.LBB5_64
.LBB5_42:
	xorl	%edx, %edx
.LBB5_67:                               # %for.body155.preheader
	decq	%rdx
	.p2align	4, 0x90
.LBB5_68:                               # %for.body155
                                        # =>This Inner Loop Header: Depth=1
	addl	4(%rcx,%rdx,4), %r9d
	movl	%r9d, (%rax)
	incq	%rdx
	cmpq	%r10, %rdx
	jb	.LBB5_68
	jmp	.LBB5_69
.LBB5_43:
	xorl	%ecx, %ecx
	movl	(%r10), %eax
	testl	%eax, %eax
	jne	.LBB5_40
.LBB5_44:                               # %if.else164
	movl	$0, 848960(%rdi)
	xorl	%r9d, %r9d
.LBB5_69:                               # %if.end166
	cmpl	$0, (%r8)
	je	.LBB5_73
# %bb.70:                               # %if.end172
	cmpl	$0, 176(%rsi)
	je	.LBB5_74
.LBB5_71:                               # %if.else199
	cmpb	$0, 180(%rsi)
	je	.LBB5_75
# %bb.72:                               # %if.else211
	addl	2088(%rbx), %r9d
	addl	88(%rsi), %r9d
	movl	%r9d, 72(%rsi)
	jmp	.LBB5_76
.LBB5_73:                               # %if.then169
	addl	2084(%rbx), %r9d
	movl	%r9d, 848960(%rdi)
	cmpl	$0, 176(%rsi)
	jne	.LBB5_71
.LBB5_74:                               # %if.then176
	addl	88(%rsi), %r9d
	movl	%r9d, 68(%rsi)
	movl	2088(%rbx), %eax
	addl	%r9d, %eax
	addl	92(%rsi), %eax
	movl	%eax, 72(%rsi)
	cmpl	%eax, %r9d
	cmovll	%r9d, %eax
	jmp	.LBB5_77
.LBB5_75:                               # %if.then204
	addl	88(%rsi), %r9d
	movl	%r9d, 68(%rsi)
.LBB5_76:                               # %if.end221
	movl	%r9d, %eax
.LBB5_77:                               # %if.end221
	movl	%eax, 104(%rsi)
	movl	%eax, 76(%rsi)
	movl	172(%rsi), %eax
.LBB5_78:                               # %if.end300
	movl	%eax, 848972(%rdi)
	movl	848976(%rdi), %eax
	movl	%eax, 848988(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_47:                               # %if.end247
	.cfi_def_cfa_offset 32
	movl	172(%rsi), %eax
	cmpl	848972(%rdi), %eax
	jae	.LBB5_49
# %bb.48:                               # %if.then252
	movl	848992(%rdi), %ecx
	addl	848988(%rdi), %ecx
	jmp	.LBB5_50
.LBB5_49:                               # %if.else257
	movl	848988(%rdi), %ecx
.LBB5_50:                               # %if.end260
	movl	%ecx, 848976(%rdi)
	movl	56(%rsi), %edx
	movl	172(%rsi), %eax
	addl	%eax, %ecx
	movl	%ecx, 100(%rsi)
	addl	%ecx, %ecx
	cmpl	$1, %edx
	sbbl	$0, %ecx
	movl	%ecx, 104(%rsi)
	cmpl	$0, 176(%rsi)
	je	.LBB5_53
# %bb.51:                               # %if.else285
	cmpb	$0, 180(%rsi)
	movl	%ecx, 76(%rsi)
	je	.LBB5_79
# %bb.52:                               # %if.else294
	movl	%ecx, 72(%rsi)
	jmp	.LBB5_78
.LBB5_53:                               # %if.then280
	movl	%ecx, 76(%rsi)
	movl	%ecx, 72(%rsi)
	movl	%ecx, 68(%rsi)
	jmp	.LBB5_78
.LBB5_54:                               # %if.else.if.end12_crit_edge
	movl	848956(%rdi), %edx
.LBB5_55:                               # %if.end12
	movl	80(%rsi), %ecx
	movl	%edx, %r8d
	subl	%ecx, %r8d
	jbe	.LBB5_6
# %bb.56:                               # %land.lhs.true
	movl	%eax, %r9d
	shrl	%r9d
	cmpl	%r9d, %r8d
	jb	.LBB5_6
# %bb.57:                               # %if.then17
	addl	848952(%rdi), %eax
	movl	%eax, 96(%rsi)
	cmpl	$0, 176(%rsi)
	jne	.LBB5_19
	jmp	.LBB5_58
.LBB5_64:                               # %vector.ph
	leaq	1(%r10), %r11
	movl	%r11d, %edx
	andl	$-16, %edx
	movd	%r9d, %xmm1
	pxor	%xmm0, %xmm0
	xorl	%r9d, %r9d
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB5_65:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	2096(%rbx,%r9,4), %xmm4
	paddd	%xmm4, %xmm1
	movdqu	2112(%rbx,%r9,4), %xmm4
	paddd	%xmm4, %xmm0
	movdqu	2128(%rbx,%r9,4), %xmm4
	paddd	%xmm4, %xmm3
	movdqu	2144(%rbx,%r9,4), %xmm4
	paddd	%xmm4, %xmm2
	addq	$16, %r9
	cmpq	%r9, %rdx
	jne	.LBB5_65
# %bb.66:                               # %middle.block
	paddd	%xmm1, %xmm0
	paddd	%xmm0, %xmm3
	paddd	%xmm3, %xmm2
	pshufd	$238, %xmm2, %xmm0              # xmm0 = xmm2[2,3,2,3]
	paddd	%xmm2, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %r9d
	movd	%xmm1, (%rax)
	cmpq	%rdx, %r11
	je	.LBB5_69
	jmp	.LBB5_67
.LBB5_79:                               # %if.then290
	movl	%ecx, 68(%rsi)
	jmp	.LBB5_78
.Lfunc_end5:
	.size	decode_poc, .Lfunc_end5-decode_poc
	.cfi_endproc
                                        # -- End function
	.globl	dumppoc                         # -- Begin function dumppoc
	.p2align	4, 0x90
	.type	dumppoc,@function
dumppoc:                                # @dumppoc
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
	movq	16(%rdi), %r14
	movl	$.Lstr, %edi
	callq	puts@PLT
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movl	68(%rax), %esi
	movl	$.L.str.37, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movl	72(%rax), %esi
	movl	$.L.str.38, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movl	172(%rax), %esi
	movl	$.L.str.39, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movl	176(%rax), %esi
	movl	$.L.str.40, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movzbl	180(%rax), %esi
	movl	$.L.str.41, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.85, %edi
	callq	puts@PLT
	movl	2068(%r14), %esi
	movl	$.L.str.43, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	2076(%r14), %esi
	movl	$.L.str.44, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	2072(%r14), %esi
	movl	$.L.str.45, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	2092(%r14), %esi
	movl	$.L.str.46, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	2080(%r14), %esi
	movl	$.L.str.47, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	2084(%r14), %esi
	movl	$.L.str.48, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	2088(%r14), %esi
	movl	$.L.str.49, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	2096(%r14), %esi
	movl	$.L.str.50, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	2100(%r14), %esi
	movl	$.L.str.51, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.86, %edi
	callq	puts@PLT
	movq	8(%rbx), %rax
	movl	2040(%rax), %esi
	movl	$.L.str.53, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movl	88(%rax), %esi
	movl	$.L.str.54, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movl	92(%rax), %esi
	movl	$.L.str.55, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	848736(%rbx), %rax
	movq	(%rax), %rax
	movl	48(%rax), %esi
	movl	$.L.str.56, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	848992(%rbx), %esi
	movl	$.L.str.57, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	dumppoc, .Lfunc_end6-dumppoc
	.cfi_endproc
                                        # -- End function
	.globl	picture_order                   # -- Begin function picture_order
	.p2align	4, 0x90
	.type	picture_order,@function
picture_order:                          # @picture_order
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 176(%rdi)
	je	.LBB7_1
# %bb.2:                                # %if.else
	xorl	%eax, %eax
	cmpb	$0, 180(%rdi)
	setne	%al
	leaq	68(,%rax,4), %rax
	movl	(%rdi,%rax), %eax
	retq
.LBB7_1:
	movl	$76, %eax
	movl	(%rdi,%rax), %eax
	retq
.Lfunc_end7:
	.size	picture_order, .Lfunc_end7-picture_order
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SH: first_mb_in_slice"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SH: slice_type"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SH: pic_parameter_set_id"
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SH: colour_plane_id"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SH: frame_num"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"SH: field_pic_flag"
	.size	.L.str.5, 19

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"SH: bottom_field_flag"
	.size	.L.str.6, 22

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SH: idr_pic_id"
	.size	.L.str.7, 15

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"SH: pic_order_cnt_lsb"
	.size	.L.str.8, 22

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"SH: delta_pic_order_cnt_bottom"
	.size	.L.str.9, 31

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"SH: delta_pic_order_cnt[0]"
	.size	.L.str.10, 27

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SH: delta_pic_order_cnt[1]"
	.size	.L.str.11, 27

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SH: redundant_pic_cnt"
	.size	.L.str.12, 22

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SH: direct_spatial_mv_pred_flag"
	.size	.L.str.13, 32

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SH: num_ref_idx_override_flag"
	.size	.L.str.14, 30

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SH: num_ref_idx_l0_active_minus1"
	.size	.L.str.15, 33

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SH: num_ref_idx_l1_active_minus1"
	.size	.L.str.16, 33

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"SH: cabac_init_idc"
	.size	.L.str.17, 19

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"SH: slice_qp_delta"
	.size	.L.str.18, 19

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"slice_qp_delta makes slice_qp_y out of range"
	.size	.L.str.19, 45

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"SH: sp_for_switch_flag"
	.size	.L.str.20, 23

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"SH: slice_qs_delta"
	.size	.L.str.21, 19

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"slice_qs_delta makes slice_qs_y out of range"
	.size	.L.str.22, 45

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SH: disable_deblocking_filter_idc"
	.size	.L.str.23, 34

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SH: slice_alpha_c0_offset_div2"
	.size	.L.str.24, 31

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"SH: slice_beta_offset_div2"
	.size	.L.str.25, 27

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"SH: slice_group_change_cycle"
	.size	.L.str.26, 29

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"SH: no_output_of_prior_pics_flag"
	.size	.L.str.27, 33

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"SH: long_term_reference_flag"
	.size	.L.str.28, 29

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SH: adaptive_ref_pic_buffering_flag"
	.size	.L.str.29, 36

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SH: memory_management_control_operation"
	.size	.L.str.30, 40

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SH: difference_of_pic_nums_minus1"
	.size	.L.str.31, 34

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"SH: long_term_pic_num"
	.size	.L.str.32, 22

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"SH: long_term_frame_idx"
	.size	.L.str.33, 24

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"SH: max_long_term_pic_idx_plus1"
	.size	.L.str.34, 32

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"frame_num not equal to zero in IDR picture"
	.size	.L.str.35, 43

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"toppoc                                %d\n"
	.size	.L.str.37, 42

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"bottompoc                             %d\n"
	.size	.L.str.38, 42

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"frame_num                             %d\n"
	.size	.L.str.39, 42

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"field_pic_flag                        %d\n"
	.size	.L.str.40, 42

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"bottom_field_flag                     %d\n"
	.size	.L.str.41, 42

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"log2_max_frame_num_minus4             %d\n"
	.size	.L.str.43, 42

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"log2_max_pic_order_cnt_lsb_minus4     %d\n"
	.size	.L.str.44, 42

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"pic_order_cnt_type                    %d\n"
	.size	.L.str.45, 42

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"num_ref_frames_in_pic_order_cnt_cycle %d\n"
	.size	.L.str.46, 42

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"delta_pic_order_always_zero_flag      %d\n"
	.size	.L.str.47, 42

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"offset_for_non_ref_pic                %d\n"
	.size	.L.str.48, 42

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"offset_for_top_to_bottom_field        %d\n"
	.size	.L.str.49, 42

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"offset_for_ref_frame[0]               %d\n"
	.size	.L.str.50, 42

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"offset_for_ref_frame[1]               %d\n"
	.size	.L.str.51, 42

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"bottom_field_pic_order_in_frame_present_flag                %d\n"
	.size	.L.str.53, 64

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"delta_pic_order_cnt[0]                %d\n"
	.size	.L.str.54, 42

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"delta_pic_order_cnt[1]                %d\n"
	.size	.L.str.55, 42

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"idr_flag                              %d\n"
	.size	.L.str.56, 42

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"MaxFrameNum                           %d\n"
	.size	.L.str.57, 42

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"SH: ref_pic_list_reordering_flag_l0"
	.size	.L.str.58, 36

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"SH: reordering_of_pic_nums_idc_l0"
	.size	.L.str.59, 34

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"SH: abs_diff_pic_num_minus1_l0"
	.size	.L.str.60, 31

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"SH: long_term_pic_idx_l0"
	.size	.L.str.61, 25

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"SH: ref_pic_list_reordering_flag_l1"
	.size	.L.str.62, 36

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"SH: reordering_of_pic_nums_idc_l1"
	.size	.L.str.63, 34

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"SH: abs_diff_pic_num_minus1_l1"
	.size	.L.str.64, 31

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"SH: long_term_pic_idx_l1"
	.size	.L.str.65, 25

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"SH: ref_pic_list_modification_flag_l0"
	.size	.L.str.66, 38

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"SH: modification_of_pic_nums_idc_l0"
	.size	.L.str.67, 36

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"SH: abs_diff_view_idx_minus1_l0"
	.size	.L.str.68, 32

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"SH: modification_of_pic_nums_idc_l1"
	.size	.L.str.69, 36

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"SH: abs_diff_view_idx_minus1_l1"
	.size	.L.str.70, 32

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"SH: luma_log2_weight_denom"
	.size	.L.str.71, 27

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"SH: chroma_log2_weight_denom"
	.size	.L.str.72, 29

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"SH: luma_weight_flag_l0"
	.size	.L.str.73, 24

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"SH: luma_weight_l0"
	.size	.L.str.74, 19

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"SH: luma_offset_l0"
	.size	.L.str.75, 19

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"SH: chroma_weight_flag_l0"
	.size	.L.str.76, 26

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"SH: chroma_weight_l0"
	.size	.L.str.77, 21

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"SH: chroma_offset_l0"
	.size	.L.str.78, 21

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"SH: luma_weight_flag_l1"
	.size	.L.str.79, 24

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"SH: luma_weight_l1"
	.size	.L.str.80, 19

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"SH: luma_offset_l1"
	.size	.L.str.81, 19

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"SH: chroma_weight_flag_l1"
	.size	.L.str.82, 26

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"SH: chroma_weight_l1"
	.size	.L.str.83, 21

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"SH: chroma_offset_l1"
	.size	.L.str.84, 21

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\nPOC locals..."
	.size	.Lstr, 15

	.type	.Lstr.85,@object                # @str.85
.Lstr.85:
	.asciz	"POC SPS"
	.size	.Lstr.85, 8

	.type	.Lstr.86,@object                # @str.86
.Lstr.86:
	.asciz	"POC in SLice Header"
	.size	.Lstr.86, 20

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
