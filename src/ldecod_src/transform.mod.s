	.text
	.file	"transform.c"
	.globl	forward4x4                      # -- Begin function forward4x4
	.p2align	4, 0x90
	.type	forward4x4,@function
forward4x4:                             # @forward4x4
	.cfi_startproc
# %bb.0:                                # %for.cond17.preheader
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
	movq	%rsi, %r15
	movq	%rdi, %r13
	movslq	%ecx, %rdi
	movslq	%edx, %r8
	movq	8(%r13,%r8,8), %rax
	movq	24(%r13,%r8,8), %rcx
	movl	12(%rcx,%rdi,4), %esi
	movl	(%rcx,%rdi,4), %r10d
	movl	4(%rcx,%rdi,4), %r11d
	movl	%r10d, %edx
	subl	%esi, %edx
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movl	8(%rcx,%rdi,4), %r14d
	movl	%r11d, %ecx
	subl	%r14d, %ecx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	addl	%r10d, %esi
	addl	%r11d, %r14d
	movl	%esi, %ecx
	subl	%r14d, %ecx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	addl	%esi, %r14d
	movq	16(%r13,%r8,8), %rcx
	movl	12(%rcx,%rdi,4), %r10d
	movl	(%rcx,%rdi,4), %ebx
	movl	4(%rcx,%rdi,4), %ebp
	movl	%ebx, %edx
	subl	%r10d, %edx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movl	8(%rcx,%rdi,4), %esi
	movl	%ebp, %ecx
	subl	%esi, %ecx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	addl	%ebx, %r10d
	addl	%ebp, %esi
	movl	%r10d, %ecx
	subl	%esi, %ecx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	addl	%r10d, %esi
	movl	12(%rax,%rdi,4), %r10d
	movl	(%rax,%rdi,4), %ecx
	movl	%ecx, %edx
	subl	%r10d, %edx
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	addl	%ecx, %r10d
	movl	4(%rax,%rdi,4), %ebp
	movl	8(%rax,%rdi,4), %ecx
	movl	%ebp, %eax
	subl	%ecx, %eax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	addl	%ebp, %ecx
	movl	%r10d, %r11d
	subl	%ecx, %r11d
	addl	%r10d, %ecx
	movq	(%r13,%r8,8), %rax
	movl	(%rax,%rdi,4), %ebp
	movl	12(%rax,%rdi,4), %edx
	movl	%ebp, %r12d
	subl	%edx, %r12d
	addl	%ebp, %edx
	movl	4(%rax,%rdi,4), %r13d
	movl	8(%rax,%rdi,4), %eax
	movl	%r13d, %ebp
	subl	%eax, %ebp
	addl	%r13d, %eax
	movl	%edx, %r13d
	subl	%eax, %r13d
	addl	%edx, %eax
	leal	(%r14,%rax), %edx
	leal	(%rsi,%rcx), %r10d
	leal	(%rdx,%r10), %r9d
	movq	(%r15,%r8,8), %rbx
	movl	%r9d, (%rbx,%rdi,4)
	subl	%esi, %ecx
	subl	%r14d, %eax
	leal	(%rcx,%rax,2), %esi
	movq	8(%r15,%r8,8), %r9
	movl	%esi, (%r9,%rdi,4)
	subl	%r10d, %edx
	movq	16(%r15,%r8,8), %rsi
	movl	%edx, (%rsi,%rdi,4)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movq	24(%r15,%r8,8), %rcx
	movl	%eax, (%rcx,%rdi,4)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rax,2), %edx
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rax,2), %esi
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rax,2), %ecx
	leal	(%rbp,%r12,2), %eax
	leal	(%rdx,%rax), %r9d
	leal	(%rsi,%rcx), %r10d
	leal	(%r9,%r10), %ebx
	movq	(%r15,%r8,8), %r14
	movl	%ebx, 4(%r14,%rdi,4)
	subl	%esi, %ecx
	subl	%edx, %eax
	leal	(%rcx,%rax,2), %edx
	movq	8(%r15,%r8,8), %rsi
	movl	%edx, 4(%rsi,%rdi,4)
	subl	%r10d, %r9d
	movq	16(%r15,%r8,8), %rdx
	movl	%r9d, 4(%rdx,%rdi,4)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movq	24(%r15,%r8,8), %rcx
	movl	%eax, 4(%rcx,%rdi,4)
	movq	-8(%rsp), %r9                   # 8-byte Reload
	leal	(%r9,%r13), %eax
	movq	-16(%rsp), %r10                 # 8-byte Reload
	leal	(%r10,%r11), %ecx
	leal	(%rax,%rcx), %edx
	movq	(%r15,%r8,8), %rsi
	movl	%edx, 8(%rsi,%rdi,4)
	subl	%r10d, %r11d
	subl	%r9d, %r13d
	leal	(%r11,%r13,2), %edx
	movq	8(%r15,%r8,8), %rsi
	movl	%edx, 8(%rsi,%rdi,4)
	subl	%ecx, %eax
	movq	16(%r15,%r8,8), %rcx
	movl	%eax, 8(%rcx,%rdi,4)
	movq	-64(%rsp), %rax                 # 8-byte Reload
	addl	%eax, %eax
	movq	-24(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%eax, %ecx
	movq	-40(%rsp), %rax                 # 8-byte Reload
	addl	%eax, %eax
	movq	-32(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	subl	%eax, %edx
	movq	-56(%rsp), %rax                 # 8-byte Reload
	addl	%eax, %eax
	movq	-48(%rsp), %rbx                 # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	subl	%eax, %ebx
	movl	%r12d, %r10d
	subl	%ebp, %r10d
	subl	%ebp, %r10d
	addl	%r11d, %r11d
	subl	%r11d, %r13d
	movq	24(%r15,%r8,8), %rax
	movl	%r13d, 8(%rax,%rdi,4)
	leal	(%rcx,%r10), %eax
	leal	(%rdx,%rbx), %esi
	subl	%edx, %ebx
	subl	%ecx, %r10d
	leal	(%rax,%rsi), %ecx
	movq	(%r15,%r8,8), %rdx
	movl	%ecx, 12(%rdx,%rdi,4)
	leal	(%rbx,%r10,2), %ecx
	movq	8(%r15,%r8,8), %rdx
	movl	%ecx, 12(%rdx,%rdi,4)
	subl	%esi, %eax
	movq	16(%r15,%r8,8), %rcx
	movl	%eax, 12(%rcx,%rdi,4)
	addl	%ebx, %ebx
	subl	%ebx, %r10d
	movq	24(%r15,%r8,8), %rax
	movl	%r10d, 12(%rax,%rdi,4)
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
	.size	forward4x4, .Lfunc_end0-forward4x4
	.cfi_endproc
                                        # -- End function
	.globl	inverse4x4                      # -- Begin function inverse4x4
	.p2align	4, 0x90
	.type	inverse4x4,@function
inverse4x4:                             # @inverse4x4
	.cfi_startproc
# %bb.0:                                # %for.cond17.preheader
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
	movl	%edx, %eax
	movq	%rsi, %r12
	movq	%rdi, %rdx
	movslq	%ecx, %rsi
	movslq	%eax, %r11
	movq	24(%rdi,%r11,8), %rax
	movl	8(%rax,%rsi,4), %ecx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	(%rax,%rsi,4), %edi
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	movl	4(%rax,%rsi,4), %r9d
	addl	%edi, %ecx
	movl	12(%rax,%rsi,4), %eax
	movl	%eax, -88(%rsp)                 # 4-byte Spill
	movl	%eax, %r15d
	sarl	%r15d
	addl	%r9d, %r15d
	movl	%ecx, %eax
	subl	%r15d, %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	addl	%ecx, %r15d
	movq	16(%rdx,%r11,8), %rax
	movl	8(%rax,%rsi,4), %ecx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movl	(%rax,%rsi,4), %r8d
	movq	%r8, -56(%rsp)                  # 8-byte Spill
	movl	4(%rax,%rsi,4), %r14d
	movl	12(%rax,%rsi,4), %eax
	movl	%eax, -92(%rsp)                 # 4-byte Spill
	movl	%eax, %edi
	sarl	%edi
	addl	%r14d, %edi
	leal	(%rcx,%r8), %eax
	movl	%eax, %ecx
	subl	%edi, %ecx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	addl	%eax, %edi
	movq	8(%rdx,%r11,8), %rax
	movl	8(%rax,%rsi,4), %r8d
	movq	%r8, -64(%rsp)                  # 8-byte Spill
	movl	(%rax,%rsi,4), %r10d
	movq	%r10, -72(%rsp)                 # 8-byte Spill
	movl	4(%rax,%rsi,4), %r13d
	movl	12(%rax,%rsi,4), %ecx
	movl	%ecx, -96(%rsp)                 # 4-byte Spill
	sarl	%ecx
	addl	%r13d, %ecx
	leal	(%r8,%r10), %eax
	movl	%eax, %r8d
	subl	%ecx, %r8d
	movl	%r8d, -84(%rsp)                 # 4-byte Spill
	addl	%eax, %ecx
	movq	(%rdx,%r11,8), %rax
	movl	(%rax,%rsi,4), %ebp
	movl	4(%rax,%rsi,4), %edx
	movl	8(%rax,%rsi,4), %r8d
	movq	%r8, -80(%rsp)                  # 8-byte Spill
	movl	12(%rax,%rsi,4), %eax
	movl	%eax, -100(%rsp)                # 4-byte Spill
                                        # kill: def $eax killed $eax def $rax
	sarl	%eax
	addl	%edx, %eax
	addl	%ebp, %r8d
	movl	%r8d, %r10d
	subl	%eax, %r10d
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	addl	%r8d, %eax
	movl	%ecx, %r8d
	sarl	%r8d
	subl	%r15d, %r8d
	sarl	%r15d
	addl	%ecx, %r15d
	leal	(%rdi,%rax), %ecx
	leal	(%r15,%rcx), %r10d
	movq	(%r12,%r11,8), %rbx
	movl	%r10d, (%rbx,%rsi,4)
	subl	%edi, %eax
	leal	(%r8,%rax), %edi
	movq	8(%r12,%r11,8), %r10
	movl	%edi, (%r10,%rsi,4)
	subl	%r8d, %eax
	movq	16(%r12,%r11,8), %rdi
	movl	%eax, (%rdi,%rsi,4)
	subl	%r15d, %ecx
	movq	24(%r12,%r11,8), %rax
	movl	%ecx, (%rax,%rsi,4)
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	subl	-32(%rsp), %ecx                 # 4-byte Folded Reload
	sarl	%r9d
	subl	-88(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%ecx, %eax
	subl	%r9d, %eax
	addl	%ecx, %r9d
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	subl	-48(%rsp), %ecx                 # 4-byte Folded Reload
	sarl	%r14d
	subl	-92(%rsp), %r14d                # 4-byte Folded Reload
	movl	%ecx, %r15d
	subl	%r14d, %r15d
	addl	%ecx, %r14d
	movq	-72(%rsp), %rdi                 # 8-byte Reload
	subl	-64(%rsp), %edi                 # 4-byte Folded Reload
	sarl	%r13d
	subl	-96(%rsp), %r13d                # 4-byte Folded Reload
	movl	%edi, %ecx
	subl	%r13d, %ecx
	addl	%edi, %r13d
	subl	-80(%rsp), %ebp                 # 4-byte Folded Reload
	sarl	%edx
	subl	-100(%rsp), %edx                # 4-byte Folded Reload
	movl	%ebp, %ebx
	subl	%edx, %ebx
	addl	%ebp, %edx
	movl	%r13d, %edi
	sarl	%edi
	subl	%r9d, %edi
	sarl	%r9d
	addl	%r13d, %r9d
	leal	(%r14,%rdx), %r8d
	leal	(%r9,%r8), %r10d
	movq	(%r12,%r11,8), %r13
	movl	%r10d, 4(%r13,%rsi,4)
	subl	%r14d, %edx
	leal	(%rdi,%rdx), %r10d
	movq	8(%r12,%r11,8), %r14
	movl	%r10d, 4(%r14,%rsi,4)
	subl	%edi, %edx
	movq	16(%r12,%r11,8), %rdi
	movl	%edx, 4(%rdi,%rsi,4)
	subl	%r9d, %r8d
	movq	24(%r12,%r11,8), %rdx
	movl	%r8d, 4(%rdx,%rsi,4)
	leal	(%r15,%rbx), %edx
	subl	%r15d, %ebx
	movl	%ecx, %edi
	sarl	%edi
	subl	%eax, %edi
	sarl	%eax
	addl	%ecx, %eax
	leal	(%rax,%rdx), %ecx
	movq	(%r12,%r11,8), %r8
	movl	%ecx, 8(%r8,%rsi,4)
	leal	(%rdi,%rbx), %ecx
	movq	8(%r12,%r11,8), %r8
	movl	%ecx, 8(%r8,%rsi,4)
	subl	%edi, %ebx
	movq	16(%r12,%r11,8), %rcx
	movl	%ebx, 8(%rcx,%rsi,4)
	subl	%eax, %edx
	movq	24(%r12,%r11,8), %rax
	movl	%edx, 8(%rax,%rsi,4)
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	leal	(%rcx,%rdx), %eax
	subl	%ecx, %edx
	movq	%rdx, %r9
	movl	-84(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %ecx
	sarl	%ecx
	movq	-8(%rsp), %rdi                  # 8-byte Reload
	subl	%edi, %ecx
	sarl	%edi
	addl	%edx, %edi
	leal	(%rdi,%rax), %edx
	movq	%rdi, %r8
	movq	(%r12,%r11,8), %rdi
	movl	%edx, 12(%rdi,%rsi,4)
	leal	(%rcx,%r9), %edx
	movq	8(%r12,%r11,8), %rdi
	movl	%edx, 12(%rdi,%rsi,4)
	subl	%ecx, %r9d
	movq	16(%r12,%r11,8), %rcx
	movl	%r9d, 12(%rcx,%rsi,4)
	subl	%r8d, %eax
	movq	24(%r12,%r11,8), %rcx
	movl	%eax, 12(%rcx,%rsi,4)
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
.Lfunc_end1:
	.size	inverse4x4, .Lfunc_end1-inverse4x4
	.cfi_endproc
                                        # -- End function
	.globl	hadamard4x4                     # -- Begin function hadamard4x4
	.p2align	4, 0x90
	.type	hadamard4x4,@function
hadamard4x4:                            # @hadamard4x4
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
	movq	%rsi, %r14
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movl	(%rax), %r12d
	movl	4(%rax), %esi
	movq	%rsi, -104(%rsp)                # 8-byte Spill
	movl	8(%rax), %esi
	movq	%rsi, -120(%rsp)                # 8-byte Spill
	movl	12(%rax), %eax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movl	(%rcx), %eax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movl	4(%rcx), %eax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movl	8(%rcx), %eax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movl	12(%rcx), %ecx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	16(%rdi), %rax
	movl	(%rax), %r13d
	movq	%r13, -56(%rsp)                 # 8-byte Spill
	movl	4(%rax), %ebp
	movl	8(%rax), %r15d
	movq	%r15, -64(%rsp)                 # 8-byte Spill
	movl	12(%rax), %ebx
	movq	%rbx, -48(%rsp)                 # 8-byte Spill
	movq	24(%rdi), %rax
	movl	(%rax), %r8d
	movq	%r8, -72(%rsp)                  # 8-byte Spill
	movl	4(%rax), %r10d
	movl	8(%rax), %r9d
	movl	12(%rax), %edi
	movq	%rdi, -80(%rsp)                 # 8-byte Spill
	movq	-88(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %r11d
	movq	-104(%rsp), %rax                # 8-byte Reload
	movq	-120(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rax), %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leal	(%r11,%rax), %edx
	movq	-128(%rsp), %rax                # 8-byte Reload
	leal	(%rcx,%rax), %ecx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	-112(%rsp), %rax                # 8-byte Reload
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	leal	(%rsi,%rax), %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leal	(%rcx,%rax), %esi
	leal	(%rbx,%r13), %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	leal	(%r15,%rbp), %ecx
	movq	%rbp, %r13
	movq	%rcx, (%rsp)                    # 8-byte Spill
	leal	(%rax,%rcx), %ebx
	leal	(%rdi,%r8), %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	leal	(%r9,%r10), %ecx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	leal	(%rax,%rcx), %r8d
	leal	(%r8,%rdx), %ecx
	leal	(%rbx,%rsi), %edi
	leal	(%rcx,%rdi), %eax
	sarl	%eax
	movq	(%r14), %rbp
	movl	%eax, (%rbp)
	subl	%ebx, %esi
	subl	%r8d, %edx
	leal	(%rdx,%rsi), %eax
	sarl	%eax
	movq	8(%r14), %r8
	movl	%eax, (%r8)
	subl	%edi, %ecx
	sarl	%ecx
	movq	16(%r14), %rax
	movl	%ecx, (%rax)
	subl	%esi, %edx
	sarl	%edx
	movq	24(%r14), %rax
	movl	%edx, (%rax)
	movq	-104(%rsp), %rax                # 8-byte Reload
	subl	-120(%rsp), %eax                # 4-byte Folded Reload
	movq	%rax, -104(%rsp)                # 8-byte Spill
	subl	-88(%rsp), %r12d                # 4-byte Folded Reload
	movq	-112(%rsp), %rcx                # 8-byte Reload
	subl	-96(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, -112(%rsp)                # 8-byte Spill
	movq	-128(%rsp), %r15                # 8-byte Reload
	subl	-40(%rsp), %r15d                # 4-byte Folded Reload
	movq	%r13, %rsi
	subl	-64(%rsp), %esi                 # 4-byte Folded Reload
	movq	%rsi, -120(%rsp)                # 8-byte Spill
	movq	-56(%rsp), %r13                 # 8-byte Reload
	subl	-48(%rsp), %r13d                # 4-byte Folded Reload
	subl	%r9d, %r10d
	movq	%r10, -128(%rsp)                # 8-byte Spill
	movq	-72(%rsp), %r9                  # 8-byte Reload
	subl	-80(%rsp), %r9d                 # 4-byte Folded Reload
	addl	%r12d, %eax
	addl	%r15d, %ecx
	leal	(%r13,%rsi), %edx
	leal	(%r9,%r10), %esi
	leal	(%rsi,%rax), %edi
	leal	(%rdx,%rcx), %r8d
	leal	(%rdi,%r8), %ebx
	sarl	%ebx
	movq	(%r14), %rbp
	movl	%ebx, 4(%rbp)
	subl	%edx, %ecx
	subl	%esi, %eax
	leal	(%rax,%rcx), %edx
	sarl	%edx
	movq	8(%r14), %rsi
	movl	%edx, 4(%rsi)
	subl	%r8d, %edi
	sarl	%edi
	movq	16(%r14), %rdx
	movl	%edi, 4(%rdx)
	subl	16(%rsp), %r11d                 # 4-byte Folded Reload
	movq	-32(%rsp), %rdi                 # 8-byte Reload
	subl	8(%rsp), %edi                   # 4-byte Folded Reload
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	subl	(%rsp), %edx                    # 4-byte Folded Reload
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	subl	-16(%rsp), %esi                 # 4-byte Folded Reload
	subl	%ecx, %eax
	sarl	%eax
	movq	24(%r14), %rcx
	movl	%eax, 4(%rcx)
	leal	(%rsi,%r11), %eax
	leal	(%rdx,%rdi), %ecx
	subl	%edx, %edi
	subl	%esi, %r11d
	leal	(%rax,%rcx), %edx
	sarl	%edx
	movq	(%r14), %rsi
	movl	%edx, 8(%rsi)
	leal	(%r11,%rdi), %edx
	sarl	%edx
	movq	8(%r14), %rsi
	movl	%edx, 8(%rsi)
	subl	%ecx, %eax
	sarl	%eax
	movq	16(%r14), %rcx
	movl	%eax, 8(%rcx)
	subl	-104(%rsp), %r12d               # 4-byte Folded Reload
	subl	-112(%rsp), %r15d               # 4-byte Folded Reload
	subl	-120(%rsp), %r13d               # 4-byte Folded Reload
	subl	-128(%rsp), %r9d                # 4-byte Folded Reload
	subl	%edi, %r11d
	sarl	%r11d
	movq	24(%r14), %rax
	movl	%r11d, 8(%rax)
	leal	(%r9,%r12), %eax
	leal	(%r15,%r13), %ecx
	subl	%r13d, %r15d
	subl	%r9d, %r12d
	leal	(%rax,%rcx), %edx
	sarl	%edx
	movq	(%r14), %rsi
	movl	%edx, 12(%rsi)
	leal	(%r12,%r15), %edx
	sarl	%edx
	movq	8(%r14), %rsi
	movl	%edx, 12(%rsi)
	subl	%ecx, %eax
	sarl	%eax
	movq	16(%r14), %rcx
	movl	%eax, 12(%rcx)
	subl	%r15d, %r12d
	sarl	%r12d
	movq	24(%r14), %rax
	movl	%r12d, 12(%rax)
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
.Lfunc_end2:
	.size	hadamard4x4, .Lfunc_end2-hadamard4x4
	.cfi_endproc
                                        # -- End function
	.globl	ihadamard4x4                    # -- Begin function ihadamard4x4
	.p2align	4, 0x90
	.type	ihadamard4x4,@function
ihadamard4x4:                           # @ihadamard4x4
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
	movq	%rsi, %r13
	movq	(%rdi), %r15
	movq	8(%rdi), %rax
	movl	4(%r15), %ecx
	movl	12(%r15), %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	addl	%ecx, %edx
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movl	(%rax), %r9d
	movq	%r9, -88(%rsp)                  # 8-byte Spill
	movl	4(%rax), %ecx
	movl	8(%rax), %ebx
	movq	%rbx, -80(%rsp)                 # 8-byte Spill
	movl	12(%rax), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movq	%rsi, -112(%rsp)                # 8-byte Spill
	addl	%ecx, %eax
	movq	%rax, %rsi
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdi), %rbp
	movl	4(%rbp), %eax
	movl	12(%rbp), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	movq	%r8, -48(%rsp)                  # 8-byte Spill
	addl	%eax, %ecx
	movq	%rcx, %r10
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	24(%rdi), %rax
	movl	4(%rax), %ecx
	movl	12(%rax), %edi
	movl	%ecx, %r11d
	subl	%edi, %r11d
	movq	%r11, -104(%rsp)                # 8-byte Spill
	addl	%ecx, %edi
	movq	%rdi, -32(%rsp)                 # 8-byte Spill
	movl	(%rax), %r14d
	movl	8(%rax), %ecx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	leal	(%rbx,%r9), %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	addl	%esi, %eax
	addl	%r14d, %ecx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	leal	(%rdi,%rcx), %r9d
	movl	%eax, %esi
	subl	%r9d, %esi
	addl	%eax, %r9d
	movl	(%r15), %ecx
	movl	8(%r15), %ebx
	movl	(%rbp), %r8d
	movl	8(%rbp), %r12d
	leal	(%rbx,%rcx), %r15d
	leal	(%rdx,%r15), %eax
	leal	(%r12,%r8), %edx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	leal	(%r10,%rdx), %edi
	leal	(%rdi,%rax), %edx
	leal	(%r9,%rdx), %r10d
	movq	(%r13), %rbp
	movl	%r10d, (%rbp)
	subl	%edi, %eax
	leal	(%rsi,%rax), %edi
	movq	8(%r13), %r10
	movl	%edi, (%r10)
	subl	%esi, %eax
	movq	16(%r13), %rsi
	movl	%eax, (%rsi)
	subl	%r9d, %edx
	movq	24(%r13), %rax
	movl	%edx, (%rax)
	subl	%ebx, %ecx
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	subl	-80(%rsp), %edx                 # 4-byte Folded Reload
	subl	%r12d, %r8d
	subl	-96(%rsp), %r14d                # 4-byte Folded Reload
	movq	-112(%rsp), %rax                # 8-byte Reload
	addl	%edx, %eax
	movq	%rdx, %r12
	leal	(%r11,%r14), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	addl	%eax, %edx
	movq	-8(%rsp), %rbp                  # 8-byte Reload
	leal	(%rcx,%rbp), %eax
	movq	-48(%rsp), %r11                 # 8-byte Reload
	leal	(%r11,%r8), %edi
	leal	(%rdi,%rax), %r9d
	leal	(%rdx,%r9), %r10d
	movq	(%r13), %rbx
	movl	%r10d, 4(%rbx)
	subl	%edi, %eax
	leal	(%rsi,%rax), %edi
	movq	8(%r13), %r10
	movl	%edi, 4(%r10)
	subl	%esi, %eax
	movq	16(%r13), %rsi
	movl	%eax, 4(%rsi)
	subl	%ebp, %ecx
	subl	-112(%rsp), %r12d               # 4-byte Folded Reload
	subl	%r11d, %r8d
	subl	-104(%rsp), %r14d               # 4-byte Folded Reload
	subl	%edx, %r9d
	movq	24(%r13), %rax
	movl	%r9d, 4(%rax)
	leal	(%r8,%rcx), %eax
	subl	%r8d, %ecx
	movl	%r12d, %edx
	subl	%r14d, %edx
	addl	%r12d, %r14d
	leal	(%r14,%rax), %esi
	movq	(%r13), %rdi
	movl	%esi, 8(%rdi)
	leal	(%rdx,%rcx), %esi
	movq	8(%r13), %rdi
	movl	%esi, 8(%rdi)
	subl	%edx, %ecx
	movq	16(%r13), %rdx
	movl	%ecx, 8(%rdx)
	subl	-56(%rsp), %r15d                # 4-byte Folded Reload
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	subl	-16(%rsp), %edx                 # 4-byte Folded Reload
	movq	-72(%rsp), %rdi                 # 8-byte Reload
	subl	-64(%rsp), %edi                 # 4-byte Folded Reload
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	subl	-32(%rsp), %esi                 # 4-byte Folded Reload
	subl	%r14d, %eax
	movq	24(%r13), %rcx
	movl	%eax, 8(%rcx)
	leal	(%rdi,%r15), %eax
	subl	%edi, %r15d
	movl	%edx, %ecx
	subl	%esi, %ecx
	addl	%edx, %esi
	leal	(%rsi,%rax), %edx
	movq	%rsi, %rdi
	movq	(%r13), %rsi
	movl	%edx, 12(%rsi)
	leal	(%rcx,%r15), %edx
	movq	8(%r13), %rsi
	movl	%edx, 12(%rsi)
	subl	%ecx, %r15d
	movq	16(%r13), %rcx
	movl	%r15d, 12(%rcx)
	subl	%edi, %eax
	movq	24(%r13), %rcx
	movl	%eax, 12(%rcx)
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
	.size	ihadamard4x4, .Lfunc_end3-ihadamard4x4
	.cfi_endproc
                                        # -- End function
	.globl	hadamard4x2                     # -- Begin function hadamard4x2
	.p2align	4, 0x90
	.type	hadamard4x2,@function
hadamard4x2:                            # @hadamard4x2
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
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %r10
	movq	8(%rdi), %r11
	movl	(%r10), %eax
	movl	4(%r10), %ecx
	movl	(%r11), %ebx
	movl	4(%r11), %r14d
	leal	(%rbx,%rax), %r8d
	leal	(%r14,%rcx), %r9d
	movl	8(%r10), %edx
	movl	8(%r11), %r15d
	leal	(%r15,%rdx), %r12d
	movl	12(%r10), %edi
	movl	12(%r11), %r10d
	leal	(%r10,%rdi), %r11d
	subl	%ebx, %eax
	subl	%r14d, %ecx
	subl	%r15d, %edx
	subl	%r10d, %edi
	leal	(%r11,%r8), %r10d
	leal	(%r12,%r9), %ebx
	subl	%r12d, %r9d
	subl	%r11d, %r8d
	leal	(%r10,%rbx), %r11d
	movq	(%rsi), %r14
	movl	%r11d, (%r14)
	leal	(%r8,%r9), %r11d
	movq	(%rsi), %r14
	movl	%r11d, 4(%r14)
	subl	%ebx, %r10d
	movq	(%rsi), %r11
	movl	%r10d, 8(%r11)
	subl	%r9d, %r8d
	movq	(%rsi), %r9
	movl	%r8d, 12(%r9)
	leal	(%rdi,%rax), %r8d
	leal	(%rdx,%rcx), %r9d
	subl	%edx, %ecx
	subl	%edi, %eax
	leal	(%r8,%r9), %edx
	movq	8(%rsi), %rdi
	movl	%edx, (%rdi)
	leal	(%rax,%rcx), %edx
	movq	8(%rsi), %rdi
	movl	%edx, 4(%rdi)
	subl	%r9d, %r8d
	movq	8(%rsi), %rdx
	movl	%r8d, 8(%rdx)
	subl	%ecx, %eax
	movq	8(%rsi), %rcx
	movl	%eax, 12(%rcx)
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	hadamard4x2, .Lfunc_end4-hadamard4x2
	.cfi_endproc
                                        # -- End function
	.globl	ihadamard4x2                    # -- Begin function ihadamard4x2
	.p2align	4, 0x90
	.type	ihadamard4x2,@function
ihadamard4x2:                           # @ihadamard4x2
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
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rcx
	movq	8(%rdi), %r9
	movl	(%rcx), %eax
	movl	4(%rcx), %edx
	movl	(%r9), %r10d
	movl	4(%r9), %r11d
	leal	(%r10,%rax), %r8d
	leal	(%r11,%rdx), %ebx
	movl	8(%rcx), %edi
	movl	8(%r9), %r14d
	leal	(%r14,%rdi), %r15d
	movl	12(%rcx), %ecx
	movl	12(%r9), %r12d
	leal	(%r12,%rcx), %r9d
	subl	%r10d, %eax
	subl	%r11d, %edx
	subl	%r14d, %edi
	subl	%r12d, %ecx
	leal	(%r15,%r8), %r10d
	subl	%r15d, %r8d
	movl	%ebx, %r11d
	subl	%r9d, %r11d
	addl	%ebx, %r9d
	leal	(%r9,%r10), %ebx
	movq	(%rsi), %r14
	movl	%ebx, (%r14)
	leal	(%r11,%r8), %ebx
	movq	8(%rsi), %r14
	movl	%ebx, (%r14)
	subl	%r11d, %r8d
	movq	16(%rsi), %r11
	movl	%r8d, (%r11)
	subl	%r9d, %r10d
	movq	24(%rsi), %r8
	movl	%r10d, (%r8)
	leal	(%rdi,%rax), %r8d
	subl	%edi, %eax
	movl	%edx, %edi
	subl	%ecx, %edi
	addl	%edx, %ecx
	leal	(%rcx,%r8), %edx
	movq	(%rsi), %r9
	movl	%edx, 4(%r9)
	leal	(%rdi,%rax), %edx
	movq	8(%rsi), %r9
	movl	%edx, 4(%r9)
	subl	%edi, %eax
	movq	16(%rsi), %rdx
	movl	%eax, 4(%rdx)
	subl	%ecx, %r8d
	movq	24(%rsi), %rax
	movl	%r8d, 4(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	ihadamard4x2, .Lfunc_end5-ihadamard4x2
	.cfi_endproc
                                        # -- End function
	.globl	hadamard2x2                     # -- Begin function hadamard2x2
	.p2align	4, 0x90
	.type	hadamard2x2,@function
hadamard2x2:                            # @hadamard2x2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movq	32(%rdi), %rcx
	movl	(%rax), %edx
	movl	16(%rax), %eax
	leal	(%rax,%rdx), %edi
	subl	%eax, %edx
	movl	(%rcx), %eax
	movl	16(%rcx), %ecx
	leal	(%rcx,%rax), %r8d
	subl	%ecx, %eax
	leal	(%r8,%rdi), %ecx
	movl	%ecx, (%rsi)
	leal	(%rax,%rdx), %ecx
	movl	%ecx, 4(%rsi)
	subl	%r8d, %edi
	movl	%edi, 8(%rsi)
	subl	%eax, %edx
	movl	%edx, 12(%rsi)
	retq
.Lfunc_end6:
	.size	hadamard2x2, .Lfunc_end6-hadamard2x2
	.cfi_endproc
                                        # -- End function
	.globl	ihadamard2x2                    # -- Begin function ihadamard2x2
	.p2align	4, 0x90
	.type	ihadamard2x2,@function
ihadamard2x2:                           # @ihadamard2x2
	.cfi_startproc
# %bb.0:                                # %entry
	movdqu	(%rdi), %xmm0
	pshufd	$177, %xmm0, %xmm1              # xmm1 = xmm0[1,0,3,2]
	movdqa	%xmm0, %xmm2
	paddd	%xmm1, %xmm2
	psubd	%xmm1, %xmm0
	pshufd	$226, %xmm0, %xmm0              # xmm0 = xmm0[2,0,2,3]
	pshufd	$231, %xmm2, %xmm1              # xmm1 = xmm2[3,1,2,3]
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$78, %xmm1, %xmm0               # xmm0 = xmm1[2,3,0,1]
	movdqa	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	psubd	%xmm0, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	movupd	%xmm1, (%rsi)
	retq
.Lfunc_end7:
	.size	ihadamard2x2, .Lfunc_end7-ihadamard2x2
	.cfi_endproc
                                        # -- End function
	.globl	forward8x8                      # -- Begin function forward8x8
	.p2align	4, 0x90
	.type	forward8x8,@function
forward8x8:                             # @forward8x8
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
	subq	$536, %rsp                      # imm = 0x218
	.cfi_def_cfa_offset 592
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 264(%rsp)                 # 8-byte Spill
	movslq	%edx, %rdx
	leal	7(%rdx), %eax
	cltq
	cmpq	%rax, %rdx
	movq	%rax, %rsi
	cmovgq	%rdx, %rsi
	movslq	%ecx, %rbx
	subq	%rdx, %rsi
	incq	%rsi
	cmpq	$3, %rsi
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movq	%rbx, -16(%rsp)                 # 8-byte Spill
	ja	.LBB8_4
# %bb.1:
	movq	%rbx, %rsi
	leaq	272(%rsp), %rcx
	jmp	.LBB8_2
.LBB8_4:                                # %vector.ph
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
	andq	$-4, %rsi
	leaq	(%rsi,%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	shlq	$5, %rax
	addq	%rsp, %rax
	addq	$272, %rax                      # imm = 0x110
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	leaq	396(%rsp), %r9
	leaq	(%rdi,%rdx,8), %rax
	addq	$24, %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rdi                 # 8-byte Reload
	movq	-24(%rdi,%rax,8), %rdx
	movq	-16(%rdi,%rax,8), %r12
	movl	(%rdx,%rbx,4), %r8d
	movq	%r8, -72(%rsp)                  # 8-byte Spill
	movl	(%r12,%rbx,4), %eax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movl	12(%rdx,%rbx,4), %esi
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
	movl	12(%r12,%rbx,4), %r10d
	movq	%r10, -80(%rsp)                 # 8-byte Spill
	movl	16(%rdx,%rbx,4), %r14d
	movq	%r14, -40(%rsp)                 # 8-byte Spill
	movl	16(%r12,%rbx,4), %r11d
	movq	%r11, -56(%rsp)                 # 8-byte Spill
	movl	28(%rdx,%rbx,4), %ecx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	movl	28(%r12,%rbx,4), %r15d
	movq	%r15, -32(%rsp)                 # 8-byte Spill
	addl	%r8d, %ecx
	leal	(%r15,%rax), %r8d
	leal	(%r14,%rsi), %eax
	leal	(%r11,%r10), %esi
	leal	(%rcx,%rax), %r10d
	movq	%r10, 256(%rsp)                 # 8-byte Spill
	subl	%eax, %ecx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	leal	(%r8,%rsi), %eax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	subl	%esi, %r8d
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	-8(%rdi,%rax,8), %r14
	movl	(%r14,%rbx,4), %ecx
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	movl	12(%r14,%rbx,4), %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	16(%r14,%rbx,4), %esi
	movq	%rsi, -112(%rsp)                # 8-byte Spill
	movl	28(%r14,%rbx,4), %r8d
	movq	%r8, 224(%rsp)                  # 8-byte Spill
	addl	%r8d, %ecx
	addl	%esi, %eax
	leal	(%rcx,%rax), %esi
	movq	%rsi, 240(%rsp)                 # 8-byte Spill
	subl	%eax, %ecx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rdi,%rax,8), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%rsi, -120(%rsp)                # 8-byte Spill
	movl	12(%rax,%rbx,4), %ecx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	16(%rax,%rbx,4), %r8d
	movq	%r8, -8(%rsp)                   # 8-byte Spill
	movl	28(%rax,%rbx,4), %ebp
	leal	(%rbp,%rsi), %edi
	leal	(%r8,%rcx), %esi
	leal	(%rdi,%rsi), %ecx
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	subl	%esi, %edi
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	movl	4(%rdx,%rbx,4), %ecx
	movl	8(%rdx,%rbx,4), %edi
	movq	%rdi, -104(%rsp)                # 8-byte Spill
	movl	20(%rdx,%rbx,4), %r10d
	movq	%r10, 216(%rsp)                 # 8-byte Spill
	movl	24(%rdx,%rbx,4), %r11d
	leal	(%r11,%rcx), %esi
	movq	%rcx, %r8
	leal	(%r10,%rdi), %edx
	leal	(%rsi,%rdx), %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	subl	%edx, %esi
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	movl	4(%r12,%rbx,4), %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	8(%r12,%rbx,4), %edx
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	movl	20(%r12,%rbx,4), %edi
	movq	%rdi, 208(%rsp)                 # 8-byte Spill
	movl	24(%r12,%rbx,4), %r10d
	addl	%r10d, %ecx
	leal	(%rdi,%rdx), %esi
	leal	(%rcx,%rsi), %edx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	subl	%esi, %ecx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movl	4(%r14,%rbx,4), %ecx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movl	8(%r14,%rbx,4), %esi
	movq	%rsi, -88(%rsp)                 # 8-byte Spill
	movl	20(%r14,%rbx,4), %edx
	movq	%rdx, 192(%rsp)                 # 8-byte Spill
	movl	24(%r14,%rbx,4), %edi
	addl	%edi, %ecx
	leal	(%rdx,%rsi), %r14d
	leal	(%rcx,%r14), %esi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	subl	%r14d, %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movl	4(%rax,%rbx,4), %ecx
	movl	8(%rax,%rbx,4), %r14d
	movl	20(%rax,%rbx,4), %r15d
	movl	24(%rax,%rbx,4), %esi
	leal	(%rsi,%rcx), %r13d
	movq	%rcx, %rax
	leal	(%r15,%r14), %ebx
	leal	(%rbx,%r13), %ecx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	subl	%ebx, %r13d
	movq	%r13, 104(%rsp)                 # 8-byte Spill
	movq	-72(%rsp), %rbx                 # 8-byte Reload
	subl	-96(%rsp), %ebx                 # 4-byte Folded Reload
	movq	-64(%rsp), %r12                 # 8-byte Reload
	subl	-32(%rsp), %r12d                # 4-byte Folded Reload
	movq	-128(%rsp), %rcx                # 8-byte Reload
	subl	224(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	movq	-120(%rsp), %rcx                # 8-byte Reload
	subl	%ebp, %ecx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	subl	%r11d, %r8d
	movq	%r8, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	subl	%r10d, %edx
	movq	(%rsp), %r8                     # 8-byte Reload
	subl	%edi, %r8d
	subl	%esi, %eax
	movq	%rax, %r13
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %rsi                # 8-byte Reload
	subl	216(%rsp), %esi                 # 4-byte Folded Reload
	movq	%rsi, -104(%rsp)                # 8-byte Spill
	movq	200(%rsp), %rbp                 # 8-byte Reload
	subl	208(%rsp), %ebp                 # 4-byte Folded Reload
	movq	-88(%rsp), %r11                 # 8-byte Reload
	subl	192(%rsp), %r11d                # 4-byte Folded Reload
	movq	%r11, -88(%rsp)                 # 8-byte Spill
	subl	%r15d, %r14d
	movq	-48(%rsp), %r15                 # 8-byte Reload
	subl	-40(%rsp), %r15d                # 4-byte Folded Reload
	movq	-80(%rsp), %rax                 # 8-byte Reload
	subl	-56(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	subl	-112(%rsp), %eax                # 4-byte Folded Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	subl	-8(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	%ebx, %eax
	movq	%rbx, -72(%rsp)                 # 8-byte Spill
	sarl	%eax
	movq	%rcx, %rdi
	addl	%esi, %ecx
	addl	%ebx, %ecx
	addl	%eax, %ecx
	movl	%ecx, -40(%rsp)                 # 4-byte Spill
	movq	%r12, %rsi
	movq	%r12, -64(%rsp)                 # 8-byte Spill
	movl	%esi, %eax
	sarl	%eax
	leal	(%rdx,%rbp), %ecx
	movq	%rdx, %r10
	addl	%esi, %ecx
	addl	%eax, %ecx
	movl	%ecx, -32(%rsp)                 # 4-byte Spill
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movl	%edx, %eax
	sarl	%eax
	leal	(%r8,%r11), %ecx
	addl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, -48(%rsp)                 # 4-byte Spill
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movl	%edx, %eax
	sarl	%eax
	leal	(%r14,%r13), %ecx
	addl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, -56(%rsp)                 # 4-byte Spill
	movl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	movl	%eax, -112(%rsp)                # 4-byte Spill
	movq	-104(%rsp), %rcx                # 8-byte Reload
	subl	%ecx, %edi
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movq	%r15, %r12
	movl	%ecx, %edx
	sarl	%edx
	addl	%ecx, %edx
	addl	%r15d, %edx
	movq	%r10, %rax
	sarl	%r10d
	addl	%eax, %r10d
	subl	%ebp, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	-80(%rsp), %r13                 # 8-byte Reload
	movl	%ebp, %r11d
	sarl	%r11d
	addl	%ebp, %r11d
	addl	%r13d, %r11d
	movq	%r8, %rax
	movl	%eax, %ebx
	sarl	%ebx
	addl	%eax, %ebx
	movq	-88(%rsp), %rdi                 # 8-byte Reload
	subl	%edi, %eax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%edi, %ebp
	sarl	%ebp
	addl	%edi, %ebp
	addl	%ecx, %ebp
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r15d
	sarl	%r15d
	addl	%eax, %r15d
	subl	%r14d, %eax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%r9, %r8
	movq	24(%rsp), %r9                   # 8-byte Reload
	leal	(%r14,%r9), %esi
                                        # kill: def $r14d killed $r14d killed $r14
	sarl	%r14d
	addl	%esi, %r14d
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	leal	(%r12,%rsi), %eax
	movq	%r12, %rdi
	subl	%edx, %esi
	movq	%rsi, -72(%rsp)                 # 8-byte Spill
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%r13), %r12d
	movq	%r13, %rsi
	subl	%r11d, %edx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movq	%rcx, %r13
	addl	%edx, %ecx
	subl	%ebp, %edx
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	-120(%rsp), %r11                # 8-byte Reload
	leal	(%r9,%r11), %ebp
	movq	%r9, %rdx
	movq	%r8, %r9
	subl	%r14d, %r11d
	movq	%r11, -120(%rsp)                # 8-byte Spill
	subl	-112(%rsp), %eax                # 4-byte Folded Reload
	movl	%eax, %r11d
	movl	%eax, -112(%rsp)                # 4-byte Spill
	subl	%r10d, %r12d
	movl	%r12d, %r8d
	subl	%ebx, %ecx
	movl	%ecx, %r10d
	subl	%r15d, %ebp
	movl	%ebp, -104(%rsp)                # 4-byte Spill
	movl	%edi, %ecx
	sarl	%ecx
	addl	%edi, %ecx
	addl	-8(%rsp), %ecx                  # 4-byte Folded Reload
	movl	%ecx, %edi
	movl	%ecx, -88(%rsp)                 # 4-byte Spill
	movl	%esi, %ecx
	sarl	%ecx
	addl	%esi, %ecx
	addl	8(%rsp), %ecx                   # 4-byte Folded Reload
	movl	%ecx, %esi
	movl	%ecx, -80(%rsp)                 # 4-byte Spill
	movq	%r13, %rax
	movl	%eax, %r14d
	sarl	%r14d
	addl	%eax, %r14d
	addl	(%rsp), %r14d                   # 4-byte Folded Reload
	movl	%edx, %ebp
	sarl	%ebp
	addl	%edx, %ebp
	addl	-96(%rsp), %ebp                 # 4-byte Folded Reload
	movq	256(%rsp), %r15                 # 8-byte Reload
	movq	88(%rsp), %rax                  # 8-byte Reload
	addl	%r15d, %eax
	movl	%eax, -124(%r9)
	movq	248(%rsp), %rcx                 # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, -92(%r9)
	movq	240(%rsp), %r13                 # 8-byte Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	addl	%r13d, %eax
	movl	%eax, -60(%r9)
	movq	232(%rsp), %r12                 # 8-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	addl	%r12d, %eax
	movl	%eax, -28(%r9)
	movl	%edi, %eax
	sarl	$2, %eax
	addl	-40(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, -120(%r9)
	movl	%esi, %eax
	sarl	$2, %eax
	addl	-32(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, -88(%r9)
	movl	%r14d, %eax
	sarl	$2, %eax
	addl	-48(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, -56(%r9)
	movl	%ebp, %eax
	sarl	$2, %eax
	addl	-56(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, -24(%r9)
	movq	136(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	sarl	%eax
	addl	128(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, -116(%r9)
	movq	120(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	sarl	%eax
	addl	72(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, -84(%r9)
	movq	112(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	sarl	%eax
	addl	96(%rsp), %eax                  # 4-byte Folded Reload
	movl	%eax, -52(%r9)
	movq	104(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	sarl	%eax
	addl	144(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, -20(%r9)
	movl	%r11d, %eax
	sarl	$2, %eax
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	addl	%esi, %eax
	movl	%eax, -112(%r9)
	movl	%r8d, %ebx
	movl	%r8d, %eax
	sarl	$2, %eax
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	addl	%edx, %eax
	movl	%eax, -80(%r9)
	movl	%r10d, %r11d
	movl	%r10d, %eax
	sarl	$2, %eax
	movq	-128(%rsp), %rdi                # 8-byte Reload
	addl	%edi, %eax
	movl	%eax, -48(%r9)
	movl	-104(%rsp), %r10d               # 4-byte Reload
	movl	%r10d, %eax
	sarl	$2, %eax
	movq	-120(%rsp), %r8                 # 8-byte Reload
	addl	%r8d, %eax
	movl	%eax, -16(%r9)
	movq	32(%rsp), %rax                  # 8-byte Reload
	subl	88(%rsp), %r15d                 # 4-byte Folded Reload
	subl	80(%rsp), %ecx                  # 4-byte Folded Reload
	subl	64(%rsp), %r13d                 # 4-byte Folded Reload
	subl	56(%rsp), %r12d                 # 4-byte Folded Reload
	movl	%r15d, -108(%r9)
	movl	%ecx, -76(%r9)
	movl	%r13d, -44(%r9)
	movl	%r12d, -12(%r9)
	sarl	$2, %esi
	movl	-112(%rsp), %ecx                # 4-byte Reload
	subl	%esi, %ecx
	movq	%rdx, %rsi
	sarl	$2, %esi
	subl	%esi, %ebx
	movq	%rdi, %rsi
	sarl	$2, %esi
	subl	%esi, %r11d
	sarl	$2, %r8d
	subl	%r8d, %r10d
	movl	%ecx, -104(%r9)
	movl	%ebx, -72(%r9)
	movl	%r11d, -40(%r9)
	movl	%r10d, -8(%r9)
	movq	128(%rsp), %rdx                 # 8-byte Reload
	sarl	%edx
	subl	136(%rsp), %edx                 # 4-byte Folded Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	-16(%rsp), %rbx                 # 8-byte Reload
	sarl	%esi
	subl	120(%rsp), %esi                 # 4-byte Folded Reload
	movq	96(%rsp), %rdi                  # 8-byte Reload
	sarl	%edi
	subl	112(%rsp), %edi                 # 4-byte Folded Reload
	movq	144(%rsp), %r8                  # 8-byte Reload
	sarl	%r8d
	subl	104(%rsp), %r8d                 # 4-byte Folded Reload
	movl	%edx, -100(%r9)
	movl	%esi, -68(%r9)
	movl	%edi, -36(%r9)
	movl	%r8d, -4(%r9)
	movl	-40(%rsp), %ecx                 # 4-byte Reload
	sarl	$2, %ecx
	subl	-88(%rsp), %ecx                 # 4-byte Folded Reload
	movl	-32(%rsp), %edx                 # 4-byte Reload
	sarl	$2, %edx
	subl	-80(%rsp), %edx                 # 4-byte Folded Reload
	movl	-48(%rsp), %esi                 # 4-byte Reload
	sarl	$2, %esi
	subl	%r14d, %esi
	movl	-56(%rsp), %edi                 # 4-byte Reload
	sarl	$2, %edi
	subl	%ebp, %edi
	movl	%ecx, -96(%r9)
	movl	%edx, -64(%r9)
	movl	%esi, -32(%r9)
	movl	%edi, (%r9)
	addq	$4, %rax
	subq	$-128, %r9
	cmpq	%rax, 40(%rsp)                  # 8-byte Folded Reload
	jne	.LBB8_5
# %bb.6:                                # %middle.block
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, 152(%rsp)                 # 8-byte Folded Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rbx, %rsi
	movq	160(%rsp), %rcx                 # 8-byte Reload
	je	.LBB8_7
.LBB8_2:                                # %for.body.preheader
	decq	%rdx
	.p2align	4, 0x90
.LBB8_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	8(%rdi,%rax,8), %rdx
	movl	(%rdx,%rsi,4), %eax
	movl	4(%rdx,%rsi,4), %r8d
	movl	8(%rdx,%rsi,4), %ebx
	movl	12(%rdx,%rsi,4), %r9d
	movl	16(%rdx,%rsi,4), %r10d
	movl	20(%rdx,%rsi,4), %r14d
	movl	24(%rdx,%rsi,4), %r15d
	movl	28(%rdx,%rsi,4), %r12d
	leal	(%r12,%rax), %edx
	leal	(%r15,%r8), %esi
	leal	(%r14,%rbx), %r13d
	leal	(%r10,%r9), %r11d
	leal	(%rdx,%r11), %edi
	subl	%r11d, %edx
	leal	(%rsi,%r13), %r11d
	subl	%r13d, %esi
	subl	%r12d, %eax
	subl	%r15d, %r8d
	subl	%r14d, %ebx
	subl	%r10d, %r9d
	movl	%eax, %ebp
	sarl	%ebp
	leal	(%r8,%rbx), %r10d
	addl	%eax, %r10d
	addl	%ebp, %r10d
	leal	(%rbx,%r9), %ebp
	movl	%r8d, %r14d
	sarl	%r14d
	addl	%r8d, %r14d
	subl	%ebx, %r8d
                                        # kill: def $ebx killed $ebx killed $rbx
	sarl	%ebx
	addl	%ebp, %ebx
	leal	(%r9,%rax), %ebp
	subl	%ebx, %eax
	subl	%r14d, %ebp
	movl	%r9d, %ebx
	sarl	%ebx
	addl	%r9d, %ebx
	addl	%r8d, %ebx
	leal	(%rdi,%r11), %r8d
	movl	%r8d, (%rcx)
	movl	%ebx, %r8d
	sarl	$2, %r8d
	addl	%r10d, %r8d
	movl	%r8d, 4(%rcx)
	movl	%esi, %r8d
	sarl	%r8d
	addl	%edx, %r8d
	movl	%r8d, 8(%rcx)
	movl	%ebp, %r8d
	sarl	$2, %r8d
	addl	%eax, %r8d
	movl	%r8d, 12(%rcx)
	subl	%r11d, %edi
	movl	%edi, 16(%rcx)
	movq	48(%rsp), %rdi                  # 8-byte Reload
	sarl	$2, %eax
	subl	%eax, %ebp
	movq	184(%rsp), %rax                 # 8-byte Reload
	movl	%ebp, 20(%rcx)
	sarl	%edx
	subl	%esi, %edx
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movl	%edx, 24(%rcx)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	sarl	$2, %r10d
	subl	%ebx, %r10d
	movl	%r10d, 28(%rcx)
	addq	$32, %rcx
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB8_3
.LBB8_7:                                # %for.cond57.preheader
	shlq	$2, %rsi
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	168(%rsp), %r9                  # 8-byte Reload
	.p2align	4, 0x90
.LBB8_8:                                # %for.body59
                                        # =>This Inner Loop Header: Depth=1
	movl	272(%rsp,%rax), %esi
	movl	304(%rsp,%rax), %r11d
	movl	336(%rsp,%rax), %r14d
	movl	368(%rsp,%rax), %ebx
	movl	400(%rsp,%rax), %r8d
	movl	432(%rsp,%rax), %r15d
	movl	464(%rsp,%rax), %r12d
	movl	496(%rsp,%rax), %r13d
	leal	(%r13,%rsi), %edx
	leal	(%r12,%r11), %edi
	leal	(%r15,%r14), %ebp
	leal	(%r8,%rbx), %r10d
	leal	(%rdx,%r10), %ecx
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	subl	%r10d, %edx
	leal	(%rdi,%rbp), %r10d
	subl	%ebp, %edi
	movq	%rdi, -120(%rsp)                # 8-byte Spill
	subl	%r13d, %esi
	subl	%r12d, %r11d
	subl	%r15d, %r14d
	subl	%r8d, %ebx
	movl	%esi, %ebp
	sarl	%ebp
	leal	(%r11,%r14), %r8d
	addl	%esi, %r8d
	addl	%ebp, %r8d
	leal	(%r14,%rbx), %ebp
	movl	%r11d, %r15d
	sarl	%r15d
	addl	%r11d, %r15d
	subl	%r14d, %r11d
	movl	%r14d, %r12d
	sarl	%r12d
	addl	%ebp, %r12d
	leal	(%rbx,%rsi), %r14d
	subl	%r12d, %esi
	subl	%r15d, %r14d
	movl	%ebx, %ebp
	sarl	%ebp
	addl	%ebx, %ebp
	addl	%r11d, %ebp
	movq	-128(%rsp), %r12                # 8-byte Reload
	leal	(%r12,%r10), %r11d
	movq	264(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx,%r9,8), %rbx
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	addq	%rdi, %rbx
	movl	%r11d, (%rax,%rbx)
	movl	%ebp, %r11d
	sarl	$2, %r11d
	addl	%r8d, %r11d
	movq	8(%rcx,%r9,8), %rbx
	addq	%rdi, %rbx
	movl	%r11d, (%rax,%rbx)
	movq	-120(%rsp), %r15                # 8-byte Reload
	movl	%r15d, %r11d
	sarl	%r11d
	addl	%edx, %r11d
	movq	16(%rcx,%r9,8), %rbx
	addq	%rdi, %rbx
	movl	%r11d, (%rax,%rbx)
	movl	%r14d, %r11d
	sarl	$2, %r11d
	addl	%esi, %r11d
	movq	24(%rcx,%r9,8), %rbx
	addq	%rdi, %rbx
	movl	%r11d, (%rax,%rbx)
	movq	%r12, %r11
	subl	%r10d, %r11d
	movq	32(%rcx,%r9,8), %r10
	addq	%rdi, %r10
	movl	%r11d, (%rax,%r10)
	sarl	$2, %esi
	subl	%esi, %r14d
	movq	40(%rcx,%r9,8), %rsi
	addq	%rdi, %rsi
	movl	%r14d, (%rax,%rsi)
	sarl	%edx
	subl	%r15d, %edx
	movq	48(%rcx,%r9,8), %rsi
	addq	%rdi, %rsi
	movl	%edx, (%rax,%rsi)
	sarl	$2, %r8d
	subl	%ebp, %r8d
	movq	56(%rcx,%r9,8), %rdx
	addq	%rdi, %rdx
	movl	%r8d, (%rax,%rdx)
	addq	$4, %rax
	cmpq	$32, %rax
	jne	.LBB8_8
# %bb.9:                                # %for.end152
	addq	$536, %rsp                      # imm = 0x218
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
.Lfunc_end8:
	.size	forward8x8, .Lfunc_end8-forward8x8
	.cfi_endproc
                                        # -- End function
	.globl	inverse8x8                      # -- Begin function inverse8x8
	.p2align	4, 0x90
	.type	inverse8x8,@function
inverse8x8:                             # @inverse8x8
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
	subq	$440, %rsp                      # imm = 0x1B8
	.cfi_def_cfa_offset 496
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movslq	%edx, %r13
	leal	7(%r13), %eax
	movslq	%eax, %rdx
	cmpq	%rdx, %r13
	movq	%rdx, %rax
	cmovgq	%r13, %rax
	movslq	%ecx, %rcx
	subq	%r13, %rax
	incq	%rax
	cmpq	$3, %rax
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	ja	.LBB9_4
# %bb.1:
	leaq	176(%rsp), %r15
	movq	%r13, %rax
	jmp	.LBB9_2
.LBB9_4:                                # %vector.ph
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	andq	$-4, %rdx
	leaq	(%rdx,%r13), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	shlq	$5, %rax
	addq	%rsp, %rax
	addq	$176, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leaq	300(%rsp), %rbp
	movq	%r13, 96(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%r13,8), %rax
	addq	$24, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	-24(%rax,%rdx,8), %rsi
	movq	-16(%rax,%rdx,8), %rdi
	movq	-8(%rax,%rdx,8), %r8
	movq	(%rax,%rdx,8), %r9
	movq	%rsi, %rdx
	movq	%rsi, -120(%rsp)                # 8-byte Spill
	movl	(%rsi,%rcx,4), %r11d
	movl	(%rdi,%rcx,4), %r13d
	movl	(%r8,%rcx,4), %r10d
	movl	(%r9,%rcx,4), %eax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movl	8(%rsi,%rcx,4), %eax
	movl	16(%rsi,%rcx,4), %r12d
	movl	16(%rdi,%rcx,4), %r15d
	movl	16(%r8,%rcx,4), %ebx
	movl	16(%r9,%rcx,4), %esi
	movl	24(%rdx,%rcx,4), %r14d
	leal	(%r12,%r11), %edx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	subl	%r12d, %r11d
	leal	(%r15,%r13), %edx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	subl	%r15d, %r13d
	leal	(%rbx,%r10), %edx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	subl	%ebx, %r10d
	movq	%r10, %r12
	movq	-128(%rsp), %r10                # 8-byte Reload
	leal	(%rsi,%r10), %edx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	subl	%esi, %r10d
	movq	%r10, -128(%rsp)                # 8-byte Spill
	movl	%r14d, %edx
	sarl	%r14d
	addl	%eax, %r14d
	sarl	%eax
	subl	%eax, %edx
	movq	%rdi, %rsi
	movq	%rdi, -96(%rsp)                 # 8-byte Spill
	movl	24(%rdi,%rcx,4), %eax
	movl	%eax, %edi
	sarl	%eax
	movl	8(%rsi,%rcx,4), %esi
	addl	%esi, %eax
	sarl	%esi
	subl	%esi, %edi
	movq	%r8, %r10
	movq	%r8, -104(%rsp)                 # 8-byte Spill
	movl	24(%r8,%rcx,4), %esi
	movl	%esi, %r8d
	sarl	%esi
	movl	8(%r10,%rcx,4), %ebx
	addl	%ebx, %esi
	sarl	%ebx
	subl	%ebx, %r8d
	movq	%r9, -48(%rsp)                  # 8-byte Spill
	movl	24(%r9,%rcx,4), %ebx
	movl	%ebx, %r10d
	sarl	%ebx
	movl	8(%r9,%rcx,4), %r15d
	addl	%r15d, %ebx
	sarl	%r15d
	subl	%r15d, %r10d
	movl	%r11d, %r15d
	subl	%edx, %r15d
	movl	%r15d, -76(%rsp)                # 4-byte Spill
	addl	%r11d, %edx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movl	%r13d, %edx
	subl	%edi, %edx
	movl	%edx, -80(%rsp)                 # 4-byte Spill
	addl	%r13d, %edi
	movq	%rdi, 160(%rsp)                 # 8-byte Spill
	movl	%r12d, %edx
	subl	%r8d, %edx
	movl	%edx, -84(%rsp)                 # 4-byte Spill
	addl	%r12d, %r8d
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	movq	-128(%rsp), %rdi                # 8-byte Reload
	movl	%edi, %edx
	subl	%r10d, %edx
	movl	%edx, -88(%rsp)                 # 4-byte Spill
	addl	%edi, %r10d
	movq	%r10, 144(%rsp)                 # 8-byte Spill
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	leal	(%r14,%rdx), %edi
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	subl	%r14d, %edx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %r12                   # 8-byte Reload
	leal	(%rax,%r12), %edx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	subl	%eax, %r12d
	movq	%r12, 8(%rsp)                   # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	leal	(%rsi,%rax), %edx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	subl	%esi, %eax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	-8(%rsp), %rax                  # 8-byte Reload
	leal	(%rbx,%rax), %edx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	subl	%ebx, %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movl	12(%rsi,%rcx,4), %edx
	movl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	movq	%rdx, %r8
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movl	4(%rsi,%rcx,4), %edx
	movl	%edx, %edi
	movq	%rdx, %r9
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	subl	%eax, %edi
	movl	20(%rsi,%rcx,4), %r14d
	movl	%r14d, %eax
	sarl	%eax
	movl	%r14d, %edx
	subl	%r9d, %edx
	addl	%eax, %edx
	movl	28(%rsi,%rcx,4), %eax
	addl	%eax, %edi
	movl	%edi, -56(%rsp)                 # 4-byte Spill
	addl	%eax, %edx
	movl	%edx, -108(%rsp)                # 4-byte Spill
	movl	%eax, %esi
	sarl	%esi
	addl	%r8d, %esi
	addl	%eax, %esi
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movl	12(%rdx,%rcx,4), %edi
	movl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	movq	%rdi, %r10
	movq	%rdi, 136(%rsp)                 # 8-byte Spill
	movl	4(%rdx,%rcx,4), %r11d
	movq	%r11, -120(%rsp)                # 8-byte Spill
	movl	%r11d, %edi
	subl	%eax, %edi
	movl	20(%rdx,%rcx,4), %r9d
	movl	%r9d, -72(%rsp)                 # 4-byte Spill
	movq	%rdx, %r8
	movl	%r9d, %eax
	sarl	%eax
	movl	%r9d, %edx
	subl	%r11d, %edx
	addl	%eax, %edx
	movl	28(%r8,%rcx,4), %eax
	addl	%eax, %edi
	movl	%edi, -64(%rsp)                 # 4-byte Spill
	addl	%eax, %edx
	movl	%edx, -96(%rsp)                 # 4-byte Spill
	movl	%eax, %edx
	sarl	%edx
	addl	%r10d, %edx
	addl	%eax, %edx
	movq	-104(%rsp), %r8                 # 8-byte Reload
	movl	12(%r8,%rcx,4), %edi
	movl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	movq	%rdi, %r10
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	movl	4(%r8,%rcx,4), %r9d
	movq	%r9, -24(%rsp)                  # 8-byte Spill
	movl	%r9d, %r15d
	subl	%eax, %r15d
	movl	20(%r8,%rcx,4), %edi
	movl	%edi, 20(%rsp)                  # 4-byte Spill
	movl	%edi, %eax
	sarl	%eax
	subl	%r9d, %edi
	addl	%eax, %edi
	movl	28(%r8,%rcx,4), %eax
	addl	%eax, %r15d
	addl	%eax, %edi
	movl	%edi, -104(%rsp)                # 4-byte Spill
	movl	%eax, %edi
	sarl	%edi
	addl	%r10d, %edi
	addl	%eax, %edi
	movq	-48(%rsp), %rbx                 # 8-byte Reload
	movl	12(%rbx,%rcx,4), %r9d
	movl	%r9d, %r10d
	sarl	%r10d
	addl	%r9d, %r10d
	movl	4(%rbx,%rcx,4), %r12d
	movl	%r12d, %r11d
	subl	%r10d, %r11d
	movl	20(%rbx,%rcx,4), %r8d
	movq	%rbx, %r13
	movl	%r8d, %ebx
	sarl	%ebx
	movl	%r8d, %r10d
	subl	%r12d, %r10d
	addl	%ebx, %r10d
	movl	28(%r13,%rcx,4), %ebx
	addl	%ebx, %r11d
	addl	%ebx, %r10d
	leal	(%r9,%rbx), %r13d
                                        # kill: def $ebx killed $ebx killed $rbx
	sarl	%ebx
	addl	%r13d, %ebx
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	%eax, %r13d
	addl	-40(%rsp), %eax                 # 4-byte Folded Reload
	sarl	%r13d
	addl	%r13d, %eax
	addl	%r14d, %eax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	subl	%esi, %r14d
	movq	-120(%rsp), %rax                # 8-byte Reload
	movl	%eax, %esi
	addl	136(%rsp), %eax                 # 4-byte Folded Reload
	sarl	%esi
	addl	%esi, %eax
	movl	-72(%rsp), %esi                 # 4-byte Reload
	addl	%esi, %eax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	subl	%edx, %esi
	movq	-24(%rsp), %r13                 # 8-byte Reload
	movl	%r13d, %edx
	addl	128(%rsp), %r13d                # 4-byte Folded Reload
	sarl	%edx
	addl	%edx, %r13d
	movl	20(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %r13d
	subl	%edi, %edx
	movl	%r12d, %eax
	addl	%r9d, %r12d
	sarl	%eax
	addl	%eax, %r12d
	addl	%r8d, %r12d
	movl	%r8d, %eax
	subl	%ebx, %eax
	movl	-108(%rsp), %ebx                # 4-byte Reload
	movl	%ebx, %r9d
	sarl	$2, %r9d
	movl	-56(%rsp), %edi                 # 4-byte Reload
	addl	%edi, %r9d
	movq	%r9, -48(%rsp)                  # 8-byte Spill
	sarl	$2, %edi
	subl	%edi, %ebx
	movl	%ebx, -108(%rsp)                # 4-byte Spill
	movl	-96(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %r9d
	sarl	$2, %r9d
	movl	-64(%rsp), %edi                 # 4-byte Reload
	addl	%edi, %r9d
	movq	%r9, -56(%rsp)                  # 8-byte Spill
	sarl	$2, %edi
	subl	%edi, %r8d
	movl	%r8d, -96(%rsp)                 # 4-byte Spill
	movl	-104(%rsp), %edi                # 4-byte Reload
	movl	%edi, %r8d
	sarl	$2, %r8d
	addl	%r15d, %r8d
	movq	%r8, -64(%rsp)                  # 8-byte Spill
	sarl	$2, %r15d
	subl	%r15d, %edi
	movl	%edi, -104(%rsp)                # 4-byte Spill
	movl	%r10d, %edi
	sarl	$2, %edi
	addl	%r11d, %edi
	movq	%rdi, -72(%rsp)                 # 8-byte Spill
	sarl	$2, %r11d
	subl	%r11d, %r10d
	movl	%r10d, -40(%rsp)                # 4-byte Spill
	movq	-128(%rsp), %r9                 # 8-byte Reload
	movl	%r9d, %r8d
	sarl	$2, %r8d
	addl	%r14d, %r8d
	sarl	$2, %r14d
	subl	%r14d, %r9d
	movq	%r9, %r11
	movq	%r9, -128(%rsp)                 # 8-byte Spill
	movq	-120(%rsp), %r9                 # 8-byte Reload
	movl	%r9d, %edi
	sarl	$2, %edi
	addl	%esi, %edi
	sarl	$2, %esi
	subl	%esi, %r9d
	movq	%r9, -120(%rsp)                 # 8-byte Spill
	movl	%r13d, %esi
	sarl	$2, %esi
	addl	%edx, %esi
	sarl	$2, %edx
	subl	%edx, %r13d
	movq	%r13, -24(%rsp)                 # 8-byte Spill
	movl	%r12d, %r15d
	sarl	$2, %r15d
	addl	%eax, %r15d
	sarl	$2, %eax
	subl	%eax, %r12d
	movq	72(%rsp), %rax                  # 8-byte Reload
	addl	%r11d, %eax
	movl	%eax, -124(%rbp)
	movq	48(%rsp), %rax                  # 8-byte Reload
	addl	%r9d, %eax
	movl	%eax, -92(%rbp)
	movq	56(%rsp), %rax                  # 8-byte Reload
	addl	%r13d, %eax
	movl	%eax, -60(%rbp)
	movq	64(%rsp), %rax                  # 8-byte Reload
	addl	%r12d, %eax
	movl	%eax, -28(%rbp)
	movl	-76(%rsp), %eax                 # 4-byte Reload
	subl	%ebx, %eax
	movl	%eax, -120(%rbp)
	movl	-80(%rsp), %eax                 # 4-byte Reload
	subl	-96(%rsp), %eax                 # 4-byte Folded Reload
	movl	%eax, -88(%rbp)
	movl	-84(%rsp), %eax                 # 4-byte Reload
	subl	-104(%rsp), %eax                # 4-byte Folded Reload
	movl	%eax, -56(%rbp)
	movl	-88(%rsp), %eax                 # 4-byte Reload
	subl	%r10d, %eax
	movl	%eax, -24(%rbp)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	addl	%edx, %eax
	movl	%eax, -116(%rbp)
	movq	160(%rsp), %rbx                 # 8-byte Reload
	movq	-56(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rbx), %eax
	movl	%eax, -84(%rbp)
	movq	152(%rsp), %r13                 # 8-byte Reload
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r13), %eax
	movl	%eax, -52(%rbp)
	movq	144(%rsp), %r10                 # 8-byte Reload
	movq	-72(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	leal	(%r8,%rdx), %eax
	movl	%eax, -112(%rbp)
	movq	8(%rsp), %r14                   # 8-byte Reload
	leal	(%rdi,%r14), %eax
	movl	%eax, -80(%rbp)
	movq	(%rsp), %r11                    # 8-byte Reload
	leal	(%rsi,%r11), %eax
	movl	%eax, -48(%rbp)
	movq	%rcx, %r9
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	leal	(%r15,%rcx), %eax
	movl	%eax, -16(%rbp)
	movq	%rdx, %rax
	subl	%r8d, %eax
	subl	%edi, %r14d
	subl	%esi, %r11d
	subl	%r15d, %ecx
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movl	%eax, -108(%rbp)
	movl	%r14d, -76(%rbp)
	movl	%r11d, -44(%rbp)
	movl	%ecx, -12(%rbp)
	movq	%r9, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	subl	-48(%rsp), %eax                 # 4-byte Folded Reload
	subl	-56(%rsp), %ebx                 # 4-byte Folded Reload
	subl	-64(%rsp), %r13d                # 4-byte Folded Reload
	subl	-72(%rsp), %r10d                # 4-byte Folded Reload
	movl	%eax, -104(%rbp)
	movl	%ebx, -72(%rbp)
	movl	%r13d, -40(%rbp)
	movl	%r10d, -8(%rbp)
	movl	-108(%rsp), %eax                # 4-byte Reload
	addl	-76(%rsp), %eax                 # 4-byte Folded Reload
	movl	-96(%rsp), %esi                 # 4-byte Reload
	addl	-80(%rsp), %esi                 # 4-byte Folded Reload
	movl	-104(%rsp), %edi                # 4-byte Reload
	addl	-84(%rsp), %edi                 # 4-byte Folded Reload
	movl	-40(%rsp), %r8d                 # 4-byte Reload
	addl	-88(%rsp), %r8d                 # 4-byte Folded Reload
	movl	%eax, -100(%rbp)
	movl	%esi, -68(%rbp)
	movl	%edi, -36(%rbp)
	movl	%r8d, -4(%rbp)
	movq	72(%rsp), %rax                  # 8-byte Reload
	subl	-128(%rsp), %eax                # 4-byte Folded Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	subl	-120(%rsp), %esi                # 4-byte Folded Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	subl	-24(%rsp), %edi                 # 4-byte Folded Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
	subl	%r12d, %r8d
	movl	%eax, -96(%rbp)
	movl	%esi, -64(%rbp)
	movl	%edi, -32(%rbp)
	movl	%r8d, (%rbp)
	addq	$4, %rdx
	subq	$-128, %rbp
	cmpq	%rdx, 24(%rsp)                  # 8-byte Folded Reload
	jne	.LBB9_5
# %bb.6:                                # %middle.block
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, 80(%rsp)                  # 8-byte Folded Reload
	movq	104(%rsp), %r12                 # 8-byte Reload
	movq	96(%rsp), %r13                  # 8-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movq	88(%rsp), %r15                  # 8-byte Reload
	je	.LBB9_7
.LBB9_2:                                # %for.body.preheader
	decq	%rax
	.p2align	4, 0x90
.LBB9_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	8(%rdi,%rax,8), %rdx
	movl	(%rdx,%rcx,4), %r10d
	movl	4(%rdx,%rcx,4), %eax
	movl	8(%rdx,%rcx,4), %edi
	movl	12(%rdx,%rcx,4), %r11d
	movl	16(%rdx,%rcx,4), %esi
	movl	20(%rdx,%rcx,4), %r9d
	movl	24(%rdx,%rcx,4), %r14d
	movl	28(%rdx,%rcx,4), %ebx
	leal	(%rsi,%r10), %edx
	subl	%esi, %r10d
	movl	%r14d, %esi
	sarl	%r14d
	addl	%edi, %r14d
	sarl	%edi
	subl	%edi, %esi
	leal	(%r14,%rdx), %edi
	movl	%r10d, %r8d
	subl	%esi, %r8d
	addl	%r10d, %esi
	subl	%r14d, %edx
	movl	%r11d, %r10d
	sarl	%r10d
	addl	%r11d, %r10d
	movl	%eax, %ebp
	subl	%r10d, %ebp
	movl	%r9d, %r14d
	sarl	%r14d
	movl	%r9d, %r10d
	subl	%eax, %r10d
	addl	%r14d, %r10d
	leal	(%r11,%rbx), %r14d
	addl	%ebx, %ebp
	addl	%ebx, %r10d
                                        # kill: def $ebx killed $ebx killed $rbx
	sarl	%ebx
	addl	%r14d, %ebx
	movl	%eax, %r14d
	addl	%r11d, %eax
	sarl	%r14d
	addl	%r14d, %eax
	addl	%r9d, %eax
	movl	%r9d, %r11d
	subl	%ebx, %r11d
	movl	%r10d, %r9d
	sarl	$2, %r9d
	addl	%ebp, %r9d
	sarl	$2, %ebp
	subl	%ebp, %r10d
	movl	%eax, %ebx
	sarl	$2, %ebx
	addl	%r11d, %ebx
	sarl	$2, %r11d
	subl	%r11d, %eax
	leal	(%rax,%rdi), %r11d
	movl	%r11d, (%r15)
	movl	%r8d, %r11d
	subl	%r10d, %r11d
	movl	%r11d, 4(%r15)
	leal	(%r9,%rsi), %r11d
	movl	%r11d, 8(%r15)
	leal	(%rbx,%rdx), %r11d
	movl	%r11d, 12(%r15)
	subl	%ebx, %edx
	movl	%edx, 16(%r15)
	movq	120(%rsp), %rdx                 # 8-byte Reload
	subl	%r9d, %esi
	movl	%esi, 20(%r15)
	addl	%r8d, %r10d
	movl	%r10d, 24(%r15)
	subl	%eax, %edi
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movl	%edi, 28(%r15)
	movq	32(%rsp), %rdi                  # 8-byte Reload
	addq	$32, %r15
	incq	%rax
	cmpq	%rdx, %rax
	jl	.LBB9_3
.LBB9_7:                                # %for.cond59.preheader
	shlq	$2, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_8:                                # %for.body61
                                        # =>This Inner Loop Header: Depth=1
	movl	176(%rsp,%rax), %r10d
	movl	208(%rsp,%rax), %edx
	movl	240(%rsp,%rax), %esi
	movl	272(%rsp,%rax), %ebx
	movl	304(%rsp,%rax), %edi
	movl	336(%rsp,%rax), %r11d
	movl	368(%rsp,%rax), %r15d
	movl	400(%rsp,%rax), %r14d
	leal	(%rdi,%r10), %r8d
	subl	%edi, %r10d
	movl	%r15d, %edi
	sarl	%r15d
	addl	%esi, %r15d
	sarl	%esi
	subl	%esi, %edi
	leal	(%r15,%r8), %esi
	movl	%r10d, %r9d
	subl	%edi, %r9d
	addl	%r10d, %edi
	subl	%r15d, %r8d
	movl	%ebx, %r10d
	sarl	%r10d
	addl	%ebx, %r10d
	movl	%edx, %ebp
	subl	%r10d, %ebp
	movl	%r11d, %r15d
	sarl	%r15d
	movl	%r11d, %r10d
	subl	%edx, %r10d
	addl	%r15d, %r10d
	leal	(%rbx,%r14), %r15d
	addl	%r14d, %ebp
	addl	%r14d, %r10d
                                        # kill: def $r14d killed $r14d killed $r14
	sarl	%r14d
	addl	%r15d, %r14d
	movl	%edx, %r15d
	addl	%ebx, %edx
	sarl	%r15d
	addl	%r15d, %edx
	addl	%r11d, %edx
	movl	%r11d, %ebx
	subl	%r14d, %ebx
	movl	%edx, %r11d
	sarl	$2, %r11d
	addl	%ebx, %r11d
	sarl	$2, %ebx
	subl	%ebx, %edx
	movl	%r10d, %ebx
	sarl	$2, %ebx
	addl	%ebp, %ebx
	sarl	$2, %ebp
	subl	%ebp, %r10d
	leal	(%rdx,%rsi), %ebp
	movq	(%r12,%r13,8), %r14
	addq	%rcx, %r14
	movl	%ebp, (%rax,%r14)
	movl	%r9d, %ebp
	subl	%r10d, %ebp
	movq	8(%r12,%r13,8), %r14
	addq	%rcx, %r14
	movl	%ebp, (%rax,%r14)
	leal	(%rbx,%rdi), %ebp
	movq	16(%r12,%r13,8), %r14
	addq	%rcx, %r14
	movl	%ebp, (%rax,%r14)
	leal	(%r11,%r8), %ebp
	movq	24(%r12,%r13,8), %r14
	addq	%rcx, %r14
	movl	%ebp, (%rax,%r14)
	subl	%r11d, %r8d
	movq	32(%r12,%r13,8), %r11
	addq	%rcx, %r11
	movl	%r8d, (%rax,%r11)
	subl	%ebx, %edi
	movq	40(%r12,%r13,8), %r8
	addq	%rcx, %r8
	movl	%edi, (%rax,%r8)
	addl	%r9d, %r10d
	movq	48(%r12,%r13,8), %rdi
	addq	%rcx, %rdi
	movl	%r10d, (%rax,%rdi)
	subl	%edx, %esi
	movq	56(%r12,%r13,8), %rdx
	addq	%rcx, %rdx
	movl	%esi, (%rax,%rdx)
	addq	$4, %rax
	cmpq	$32, %rax
	jne	.LBB9_8
# %bb.9:                                # %for.end156
	addq	$440, %rsp                      # imm = 0x1B8
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
	.size	inverse8x8, .Lfunc_end9-inverse8x8
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
