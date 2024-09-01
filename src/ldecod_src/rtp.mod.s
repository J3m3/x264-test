	.text
	.file	"rtp.c"
	.globl	OpenRTPFile                     # -- Begin function OpenRTPFile
	.p2align	4, 0x90
	.type	OpenRTPFile,@function
OpenRTPFile:                            # @OpenRTPFile
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
	movq	%rsi, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
	movl	%eax, 856648(%r14)
	cmpl	$-1, %eax
	je	.LBB0_2
# %bb.1:                                # %if.end
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:                                # %if.then
	.cfi_def_cfa_offset 32
	movq	errortext@GOTPCREL(%rip), %r14
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str, %edx
	movq	%r14, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r14, %rdi
	movl	$500, %esi                      # imm = 0x1F4
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	error@PLT                       # TAILCALL
.Lfunc_end0:
	.size	OpenRTPFile, .Lfunc_end0-OpenRTPFile
	.cfi_endproc
                                        # -- End function
	.globl	CloseRTPFile                    # -- Begin function CloseRTPFile
	.p2align	4, 0x90
	.type	CloseRTPFile,@function
CloseRTPFile:                           # @CloseRTPFile
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	856648(%rdi), %edi
	cmpl	$-1, %edi
	je	.LBB1_2
# %bb.1:                                # %if.then
	callq	close@PLT
	movl	$-1, 856648(%rbx)
.LBB1_2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	CloseRTPFile, .Lfunc_end1-CloseRTPFile
	.cfi_endproc
                                        # -- End function
	.globl	GetRTPNALU                      # -- Begin function GetRTPNALU
	.p2align	4, 0x90
	.type	GetRTPNALU,@function
GetRTPNALU:                             # @GetRTPNALU
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
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$72, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB2_2
# %bb.1:                                # %if.then
	movl	$.L.str.1, %edi
	callq	no_mem_exit@PLT
.LBB2_2:                                # %if.end
	movl	$65508, %edi                    # imm = 0xFFE4
	callq	malloc@PLT
	movq	%rax, 56(%rbx)
	testq	%rax, %rax
	jne	.LBB2_4
# %bb.3:                                # %if.then3
	movl	$.L.str.2, %edi
	callq	no_mem_exit@PLT
.LBB2_4:                                # %if.end4
	movl	$65508, %edi                    # imm = 0xFFE4
	callq	malloc@PLT
	movq	%rax, 40(%rbx)
	testq	%rax, %rax
	jne	.LBB2_6
# %bb.5:                                # %if.then7
	movl	$.L.str.3, %edi
	callq	no_mem_exit@PLT
.LBB2_6:                                # %if.end8
	movl	856648(%r15), %esi
	movq	%rbx, %rdi
	callq	RTPReadPacket
	movl	$1, 12(%r14)
	movl	$0, 4(%r14)
	testl	%eax, %eax
	jle	.LBB2_13
# %bb.7:                                # %if.then11
	cmpb	$1, GetRTPNALU.first_call(%rip)
	jne	.LBB2_9
# %bb.8:                                # %if.then11.if.end14_crit_edge
	movzwl	24(%rbx), %eax
	movzwl	GetRTPNALU.old_seq(%rip), %ecx
	jmp	.LBB2_10
.LBB2_13:                               # %if.else.critedge
	movq	40(%rbx), %rdi
	movl	%eax, %ebp
	callq	free@PLT
	movq	56(%rbx), %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	%ebp, %eax
	jmp	.LBB2_14
.LBB2_9:                                # %if.then12
	movb	$1, GetRTPNALU.first_call(%rip)
	movl	24(%rbx), %eax
	movl	%eax, %ecx
	decl	%ecx
.LBB2_10:                               # %if.end14
	notl	%ecx
	addl	%eax, %ecx
	movw	%cx, 32(%r14)
	movw	%ax, GetRTPNALU.old_seq(%rip)
	movl	48(%rbx), %edx
	movl	%edx, 4(%r14)
	movq	24(%r14), %rdi
	movq	40(%rbx), %r15
	movq	%r15, %rsi
	callq	memcpy@PLT
	movq	24(%r14), %rax
	movzbl	(%rax), %ecx
	shrl	$7, %ecx
	movl	%ecx, 12(%r14)
	movzbl	(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movl	%ecx, 20(%r14)
	movzbl	(%rax), %eax
	andl	$31, %eax
	movl	%eax, 16(%r14)
	cmpw	$0, 32(%r14)
	je	.LBB2_12
# %bb.11:                               # %if.then39
	movl	$.Lstr, %edi
	callq	puts@PLT
.LBB2_12:                               # %if.then47
	movq	%r15, %rdi
	callq	free@PLT
	movq	56(%rbx), %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	4(%r14), %eax
.LBB2_14:                               # %cleanup
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
.Lfunc_end2:
	.size	GetRTPNALU, .Lfunc_end2-GetRTPNALU
	.cfi_endproc
                                        # -- End function
	.globl	RTPReadPacket                   # -- Begin function RTPReadPacket
	.p2align	4, 0x90
	.type	RTPReadPacket,@function
RTPReadPacket:                          # @RTPReadPacket
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	xorl	%r12d, %r12d
	movl	%esi, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	lseek@PLT
	movq	%rax, %r15
	leaq	64(%r14), %rbx
	movl	$4, %edx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	read@PLT
	cmpq	$4, %rax
	jne	.LBB3_4
# %bb.1:                                # %if.end
	leaq	12(%rsp), %rsi
	movl	$4, %edx
	movl	%ebp, %edi
	callq	read@PLT
	cmpq	$4, %rax
	jne	.LBB3_5
# %bb.2:                                # %if.end7
	movl	64(%r14), %r15d
	movq	56(%r14), %rsi
	movl	%ebp, %edi
	movq	%r15, %rdx
	callq	read@PLT
	cmpl	%eax, %r15d
	jne	.LBB3_6
# %bb.3:                                # %if.end17
	movl	$.Lstr.20, %edi
	callq	puts@PLT
	movl	(%rbx), %r12d
.LBB3_4:                                # %cleanup
	movl	%r12d, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
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
.LBB3_5:                                # %if.then4
	.cfi_def_cfa_offset 64
	movl	%ebp, %edi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	lseek@PLT
	movl	$.Lstr.19, %edi
	callq	puts@PLT
	movl	$-1, %edi
	callq	exit@PLT
.LBB3_6:                                # %if.then14
	movl	(%rbx), %esi
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end3:
	.size	RTPReadPacket, .Lfunc_end3-RTPReadPacket
	.cfi_endproc
                                        # -- End function
	.globl	DecomposeRTPpacket              # -- Begin function DecomposeRTPpacket
	.p2align	4, 0x90
	.type	DecomposeRTPpacket,@function
DecomposeRTPpacket:                     # @DecomposeRTPpacket
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.Lstr.20, %edi
	callq	puts@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	DecomposeRTPpacket, .Lfunc_end4-DecomposeRTPpacket
	.cfi_endproc
                                        # -- End function
	.globl	DumpRTPHeader                   # -- Begin function DumpRTPHeader
	.p2align	4, 0x90
	.type	DumpRTPHeader,@function
DumpRTPHeader:                          # @DumpRTPHeader
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	56(%rdi), %rax
	movzbl	(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	1(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	2(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	3(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	4(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	5(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	6(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	7(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	8(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	9(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	10(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	11(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	12(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	13(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	14(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	15(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	16(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	17(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	18(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	19(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	20(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	21(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	22(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	23(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	24(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	25(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	26(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	27(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	28(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	56(%rbx), %rax
	movzbl	29(%rax), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	(%rbx), %esi
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	4(%rbx), %esi
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	8(%rbx), %esi
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	12(%rbx), %esi
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	16(%rbx), %esi
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	20(%rbx), %esi
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movzwl	24(%rbx), %esi
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	28(%rbx), %esi
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	32(%rbx), %esi
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	printf@PLT                      # TAILCALL
.Lfunc_end5:
	.size	DumpRTPHeader, .Lfunc_end5-DumpRTPHeader
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot open RTP file '%s'"
	.size	.L.str, 26

	.type	GetRTPNALU.first_call,@object   # @GetRTPNALU.first_call
	.local	GetRTPNALU.first_call
	.comm	GetRTPNALU.first_call,1,2
	.type	GetRTPNALU.old_seq,@object      # @GetRTPNALU.old_seq
	.local	GetRTPNALU.old_seq
	.comm	GetRTPNALU.old_seq,2,2
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"GetRTPNALU-1"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"GetRTPNALU-2"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"GetRTPNALU-3"
	.size	.L.str.3, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%02x "
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Version (V): %d\n"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Padding (P): %d\n"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Extension (X): %d\n"
	.size	.L.str.9, 19

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"CSRC count (CC): %d\n"
	.size	.L.str.10, 21

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Marker bit (M): %d\n"
	.size	.L.str.11, 20

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Payload Type (PT): %d\n"
	.size	.L.str.12, 23

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Sequence Number: %d\n"
	.size	.L.str.13, 21

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Timestamp: %d\n"
	.size	.L.str.14, 15

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SSRC: %d\n"
	.size	.L.str.15, 10

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"RTPReadPacket: File corruption, could not read %d bytes\n"
	.size	.L.str.17, 57

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Warning: RTP sequence number discontinuity detected"
	.size	.Lstr, 52

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"RTPReadPacket: File corruption, could not read Timestamp, exit"
	.size	.Lstr.19, 63

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	"ERROR: we're in DecompseRTPpacket which shouldn't be called in SPEC CPU"
	.size	.Lstr.20, 72

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
