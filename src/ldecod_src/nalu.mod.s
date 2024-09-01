	.text
	.file	"nalu.c"
	.globl	initBitsFile                    # -- Begin function initBitsFile
	.p2align	4, 0x90
	.type	initBitsFile,@function
initBitsFile:                           # @initBitsFile
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$1, %esi
	je	.LBB0_5
# %bb.1:                                # %entry
	testl	%esi, %esi
	jne	.LBB0_8
# %bb.2:                                # %sw.bb
	movl	$1, %edi
	movl	$24, %esi
	callq	calloc@PLT
	movq	%rax, 856616(%rbx)
	testq	%rax, %rax
	jne	.LBB0_4
# %bb.3:                                # %if.then
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
	movq	856616(%rbx), %rax
.LBB0_4:                                # %if.end
	movq	OpenAnnexBFile@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	856616(%rbx), %rax
	movq	CloseAnnexBFile@GOTPCREL(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	856616(%rbx), %rax
	movq	GetAnnexbNALU@GOTPCREL(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	malloc_annex_b@PLT              # TAILCALL
.LBB0_5:                                # %sw.bb4
	.cfi_def_cfa_offset 16
	movl	$1, %edi
	movl	$24, %esi
	callq	calloc@PLT
	movq	%rax, 856616(%rbx)
	testq	%rax, %rax
	jne	.LBB0_7
# %bb.6:                                # %if.then8
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
	movq	856616(%rbx), %rax
.LBB0_7:                                # %if.end9
	movq	OpenRTPFile@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	856616(%rbx), %rax
	movq	CloseRTPFile@GOTPCREL(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	856616(%rbx), %rax
	movq	GetRTPNALU@GOTPCREL(%rip), %rcx
	movq	%rcx, 16(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_8:                                # %sw.default
	.cfi_def_cfa_offset 16
	movl	$.L.str.1, %edi
	movl	$255, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	error@PLT                       # TAILCALL
.Lfunc_end0:
	.size	initBitsFile, .Lfunc_end0-initBitsFile
	.cfi_endproc
                                        # -- End function
	.globl	read_next_nalu                  # -- Begin function read_next_nalu
	.p2align	4, 0x90
	.type	read_next_nalu,@function
read_next_nalu:                         # @read_next_nalu
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %r15
	movq	856616(%rdi), %rax
	callq	*16(%rax)
	testl	%eax, %eax
	js	.LBB1_1
# %bb.15:                               # %if.end
	jne	.LBB1_2
# %bb.16:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:                                # %if.end.thread
	.cfi_def_cfa_offset 32
	cmpl	$0, 768(%r15)
	movl	$.L.str.3, %eax
	movl	$.L.str.4, %ecx
	cmoveq	%rax, %rcx
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$601, %esi                      # imm = 0x259
	callq	error@PLT
.LBB1_2:                                # %if.end6
	movl	16(%rbx), %ecx
	leal	-1(%rcx), %eax
	cmpl	$5, %eax
	jb	.LBB1_10
# %bb.3:                                # %if.end.i
	leal	-9(%rcx), %eax
	cmpl	$18, %ecx
	ja	.LBB1_7
# %bb.4:                                # %if.end.i
	movl	$517056, %edx                   # imm = 0x7E3C0
	btl	%ecx, %edx
	jae	.LBB1_7
# %bb.5:                                # %if.then26.i
	cmpl	$0, 855992(%r14)
	je	.LBB1_7
# %bb.6:                                # %if.then27.i
	movq	$0, 855992(%r14)
.LBB1_7:                                # %if.end30.i
	cmpl	$-2, %eax
	setb	%al
	movl	855996(%r14), %ecx
	leal	1(%rcx), %edx
	movl	%edx, 855996(%r14)
	testl	%ecx, %ecx
	setne	%cl
	testb	%cl, %al
	jne	.LBB1_10
# %bb.8:                                # %land.lhs.true37.i
	cmpl	$3, (%rbx)
	jne	.LBB1_10
# %bb.9:                                # %if.then39.i
	movl	$.Lstr, %edi
	callq	puts@PLT
.LBB1_10:                               # %CheckZeroByteNonVCL.exit
	movq	24(%rbx), %rdi
	movl	4(%rbx), %esi
	movl	$1, %edx
	callq	EBSPtoRBSP@PLT
	movl	%eax, 4(%rbx)
	testl	%eax, %eax
	jns	.LBB1_12
# %bb.11:                               # %if.then9
	movl	$.L.str.5, %edi
	movl	$602, %esi                      # imm = 0x25A
	callq	error@PLT
.LBB1_12:                               # %if.end10
	cmpl	$0, 12(%rbx)
	je	.LBB1_14
# %bb.13:                               # %if.then11
	movl	$.L.str.6, %edi
	movl	$603, %esi                      # imm = 0x25B
	callq	error@PLT
.LBB1_14:                               # %if.end12
	movl	4(%rbx), %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	read_next_nalu, .Lfunc_end1-read_next_nalu
	.cfi_endproc
                                        # -- End function
	.globl	CheckZeroByteNonVCL             # -- Begin function CheckZeroByteNonVCL
	.p2align	4, 0x90
	.type	CheckZeroByteNonVCL,@function
CheckZeroByteNonVCL:                    # @CheckZeroByteNonVCL
	.cfi_startproc
# %bb.0:                                # %entry
	movl	16(%rsi), %ecx
	leal	-1(%rcx), %eax
	cmpl	$5, %eax
	jb	.LBB2_7
# %bb.1:                                # %if.end
	leal	-9(%rcx), %eax
	cmpl	$18, %ecx
	ja	.LBB2_5
# %bb.2:                                # %if.end
	movl	$517056, %edx                   # imm = 0x7E3C0
	btl	%ecx, %edx
	jae	.LBB2_5
# %bb.3:                                # %if.then26
	cmpl	$0, 855992(%rdi)
	je	.LBB2_5
# %bb.4:                                # %if.then27
	movq	$0, 855992(%rdi)
.LBB2_5:                                # %if.end30
	cmpl	$-2, %eax
	setb	%al
	movl	855996(%rdi), %ecx
	leal	1(%rcx), %edx
	movl	%edx, 855996(%rdi)
	testl	%ecx, %ecx
	setne	%cl
	testb	%cl, %al
	jne	.LBB2_7
# %bb.6:                                # %land.lhs.true37
	cmpl	$3, (%rsi)
	jne	.LBB2_7
# %bb.8:                                # %if.then39
	movl	$.Lstr, %edi
	jmp	puts@PLT                        # TAILCALL
.LBB2_7:                                # %cleanup
	retq
.Lfunc_end2:
	.size	CheckZeroByteNonVCL, .Lfunc_end2-CheckZeroByteNonVCL
	.cfi_endproc
                                        # -- End function
	.globl	CheckZeroByteVCL                # -- Begin function CheckZeroByteVCL
	.p2align	4, 0x90
	.type	CheckZeroByteVCL,@function
CheckZeroByteVCL:                       # @CheckZeroByteVCL
	.cfi_startproc
# %bb.0:                                # %entry
	movl	16(%rsi), %eax
	decl	%eax
	cmpl	$4, %eax
	ja	.LBB3_5
# %bb.1:                                # %if.end
	cmpl	$0, 855992(%rdi)
	je	.LBB3_3
# %bb.2:                                # %if.end4.thread
	movabsq	$4294967297, %rax               # imm = 0x100000001
	movq	%rax, 855992(%rdi)
.LBB3_4:                                # %land.lhs.true12
	cmpl	$3, (%rsi)
	jne	.LBB3_5
# %bb.6:                                # %if.then14
	movl	$.Lstr.17, %edi
	jmp	puts@PLT                        # TAILCALL
.LBB3_3:                                # %if.end4
	movl	855996(%rdi), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 855996(%rdi)
	movl	$1, 855992(%rdi)
	testl	%eax, %eax
	je	.LBB3_4
.LBB3_5:                                # %cleanup
	retq
.Lfunc_end3:
	.size	CheckZeroByteVCL, .Lfunc_end3-CheckZeroByteVCL
	.cfi_endproc
                                        # -- End function
	.globl	nal_unit_header_mvc_extension   # -- Begin function nal_unit_header_mvc_extension
	.p2align	4, 0x90
	.type	nal_unit_header_mvc_extension,@function
nal_unit_header_mvc_extension:          # @nal_unit_header_mvc_extension
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$.L.str.9, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, (%rbx)
	movl	$.L.str.10, %esi
	movl	$6, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 4(%rbx)
	movl	$.L.str.11, %esi
	movl	$10, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 8(%rbx)
	movl	$.L.str.12, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 12(%rbx)
	movl	$.L.str.13, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 16(%rbx)
	movl	$.L.str.14, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 20(%rbx)
	movl	$.L.str.15, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 24(%rbx)
	cmpl	$1, %eax
	jne	.LBB4_2
# %bb.1:                                # %if.end
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB4_2:                                # %if.then
	.cfi_def_cfa_offset 32
	movl	$.Lstr.18, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	puts@PLT                        # TAILCALL
.Lfunc_end4:
	.size	nal_unit_header_mvc_extension, .Lfunc_end4-nal_unit_header_mvc_extension
	.cfi_endproc
                                        # -- End function
	.globl	nal_unit_header_svc_extension   # -- Begin function nal_unit_header_svc_extension
	.p2align	4, 0x90
	.type	nal_unit_header_svc_extension,@function
nal_unit_header_svc_extension:          # @nal_unit_header_svc_extension
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end5:
	.size	nal_unit_header_svc_extension, .Lfunc_end5-nal_unit_header_svc_extension
	.cfi_endproc
                                        # -- End function
	.globl	prefix_nal_unit_svc             # -- Begin function prefix_nal_unit_svc
	.p2align	4, 0x90
	.type	prefix_nal_unit_svc,@function
prefix_nal_unit_svc:                    # @prefix_nal_unit_svc
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end6:
	.size	prefix_nal_unit_svc, .Lfunc_end6-prefix_nal_unit_svc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"initBitsFile : p_Vid->bitsfile"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"initBitsFile: Unknown bitstream file mode"
	.size	.L.str.1, 42

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Error while getting the NALU in file format %s, exit\n"
	.size	.L.str.2, 54

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Annex B"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"RTP"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Invalid startcode emulation prevention found."
	.size	.L.str.5, 46

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Found NALU with forbidden_bit set, bit error?"
	.size	.L.str.6, 46

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"non_idr_flag"
	.size	.L.str.9, 13

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"priority_id"
	.size	.L.str.10, 12

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"view_id"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"temporal_id"
	.size	.L.str.12, 12

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"anchor_pic_flag"
	.size	.L.str.13, 16

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"inter_view_flag"
	.size	.L.str.14, 16

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"reserved_one_bit"
	.size	.L.str.15, 17

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Warning: zero_byte shall exist"
	.size	.Lstr, 31

	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	"warning: zero_byte shall exist"
	.size	.Lstr.17, 31

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	"Nalu Header MVC Extension: reserved_one_bit is not 1!"
	.size	.Lstr.18, 54

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
