	.text
	.file	"test_code.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$2, -20(%rbp)
	movl	$0, -100(%rbp)
	movl	global1, %edx
	movl	global2, %ecx
	movl	-20(%rbp), %r8d
	movabsq	$.L.str, %rdi
	movl	$999, %esi              # imm = 0x3E7
	movl	$666, %r9d              # imm = 0x29A
	movb	$0, %al
	callq	printf
	movl	$67, -32(%rbp)
	movl	$67, -28(%rbp)
	movl	$67, -24(%rbp)
	movl	-32(%rbp), %ecx
	movl	-20(%rbp), %esi
	movl	%ecx, %eax
	addl	%esi, %eax
	movl	%eax, -96(%rbp)
	movl	%ecx, %eax
	subl	%esi, %eax
	movl	%eax, -92(%rbp)
	movl	%ecx, %eax
	imull	%esi, %eax
	movl	%eax, -88(%rbp)
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, -84(%rbp)
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%edx, -80(%rbp)
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	subl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-96(%rbp), %esi
	movl	-92(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	-20(%rbp), %eax
	movl	-32(%rbp), %r10d
	movl	-28(%rbp), %r11d
	movl	-24(%rbp), %ebx
	subq	$32, %rsp
	movabsq	$.L.str1, %rdi
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movb	$0, %al
	callq	printf
	addq	$32, %rsp
	movl	$1, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	cmpl	%ecx, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movl	%edx, -76(%rbp)
	cmpl	%ecx, %eax
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movl	%edx, -72(%rbp)
	cmpl	%ecx, %eax
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movl	%edx, -68(%rbp)
	cmpl	%ecx, %eax
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movl	%edx, -64(%rbp)
	cmpl	%ecx, %eax
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movl	%edx, -60(%rbp)
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	movl	-76(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movl	-56(%rbp), %eax
	subq	$16, %rsp
	movabsq	$.L.str2, %rdi
	movl	%eax, (%rsp)
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	xorl	%edx, %edx
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	cmpl	$1, %eax
	jne	.LBB0_2
# %bb.1:
	cmpl	$1, %ecx
	sete	%dl
.LBB0_2:
	andb	$1, %dl
	movzbl	%dl, %edx
	movl	%edx, -52(%rbp)
	cmpl	$1, %eax
	movb	$1, %dl
	je	.LBB0_4
# %bb.3:
	cmpl	$1, %ecx
	sete	%dl
.LBB0_4:
	movzbl	%dl, %ecx
	andl	$1, %ecx
	movl	%ecx, -48(%rbp)
	xorl	%ecx, %ecx
	subl	$1, %eax
	setne	%cl
	movl	%ecx, -44(%rbp)
	movl	-52(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	$.L.str3, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%rsp, %rdx
	movq	%rdx, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r8
	movq	%r8, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rsi
	movq	%rsi, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r9
	movq	%r9, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rax
	movq	%rax, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %r10
	movq	%r10, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rcx
	movq	%rcx, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rbx
	movq	%rbx, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movaps	.L__const.main.arr1(%rip), %xmm0
	movaps	%xmm0, -16(%rdx)
	movl	-12(%rdx), %edx
	movl	%edx, -16(%r8)
	movaps	.L__const.main.arr2(%rip), %xmm0
	movaps	%xmm0, -16(%rsi)
	movl	-4(%rsi), %edx
	movl	%edx, -16(%r9)
	movl	$1, -16(%rax)
	movl	$2, -12(%rax)
	movl	$3, -8(%rax)
	movl	$4, -4(%rax)
	movl	-16(%rax), %eax
	movl	%eax, -16(%r10)
	movl	$1, -16(%rcx)
	movl	$2, -12(%rcx)
	movl	$3, -8(%rcx)
	movl	$4, -4(%rcx)
	movl	-16(%rcx), %eax
	movl	%eax, -16(%rbx)
	movl	-16(%r8), %esi
	movl	-16(%r9), %edx
	movl	-16(%r10), %ecx
	movl	-16(%rbx), %r8d
	movl	$.L.str4, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%rsp, %rdx
	movq	%rdx, %r8
	addq	$-32, %r8
	movq	%r8, %rsp
	movq	%rsp, %rsi
	movq	%rsi, %rcx
	addq	$-32, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdi
	addq	$-32, %rdi
	movq	%rdi, %rsp
	movaps	.L__const.main.A+16(%rip), %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	.L__const.main.A(%rip), %xmm0
	movaps	%xmm0, -32(%rdx)
	movaps	.L__const.main.B+16(%rip), %xmm0
	movaps	%xmm0, -16(%rsi)
	movaps	.L__const.main.B(%rip), %xmm0
	movaps	%xmm0, -32(%rsi)
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movl	$0, (%rdx)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, (%rdx)
	jge	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	(%rdx), %esi
	movslq	%esi, %rbx
	movl	(%r8,%rbx,4), %eax
	addl	(%rcx,%rbx,4), %eax
	movl	%eax, (%rdi,%rbx,4)
	addl	$1, %esi
	movl	%esi, (%rdx)
	jmp	.LBB0_5
.LBB0_7:
	movl	(%rdi), %esi
	movl	4(%rdi), %edx
	movl	8(%rdi), %ecx
	movl	12(%rdi), %r8d
	movl	16(%rdi), %r9d
	movl	20(%rdi), %eax
	movl	24(%rdi), %ebx
	movl	28(%rdi), %edi
	subq	$32, %rsp
	movl	%edi, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$.L.str5, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$32, %rsp
	movq	%rsp, %rcx
	movq	%rcx, %r8
	addq	$-32, %r8
	movq	%r8, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %r9
	addq	$-32, %r9
	movq	%r9, %rsp
	movq	%rsp, %rax
	addq	$-32, %rax
	movq	%rax, %rsp
	movaps	.L__const.main.D+16(%rip), %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	.L__const.main.D(%rip), %xmm0
	movaps	%xmm0, -32(%rcx)
	movaps	.L__const.main.E+16(%rip), %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	.L__const.main.E(%rip), %xmm0
	movaps	%xmm0, -32(%rdx)
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movl	$0, (%rdx)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %ebx
	addl	$4, %ebx
	cmpl	$8, %ebx
	jg	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movslq	(%rdx), %rbx
	leaq	(%r8,%rbx,4), %r10
	movq	%rsp, %rdi
	movq	%rdi, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%r10, -16(%rdi)
	movq	-16(%rdi), %rsi
	movups	(%rsi), %xmm0
	movaps	%xmm0, (%r11)
	leaq	(%r9,%rbx,4), %r10
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%r10, -16(%rsi)
	movq	-16(%rsi), %rsi
	movups	(%rsi), %xmm0
	movaps	%xmm0, (%r14)
	movaps	(%r11), %xmm0
	movaps	(%r14), %xmm1
	addps	%xmm1, %xmm0
	movaps	%xmm0, (%rcx)
	leaq	(%rax,%rbx,4), %rsi
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsi, (%rdi)
	movaps	(%rcx), %xmm0
	movq	(%rdi), %rsi
	movups	%xmm0, (%rsi)
	movl	(%rdx), %esi
	addl	$4, %esi
	movl	%esi, (%rdx)
	jmp	.LBB0_8
.LBB0_10:
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	8(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	12(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movss	16(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	20(%rax), %xmm5         # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movss	24(%rax), %xmm6         # xmm6 = mem[0],zero,zero,zero
	cvtss2sd	%xmm6, %xmm6
	movss	28(%rax), %xmm7         # xmm7 = mem[0],zero,zero,zero
	cvtss2sd	%xmm7, %xmm7
	movabsq	$.L.str6, %rdi
	movb	$8, %al
	callq	printf
	xorl	%eax, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	global0,@object         # @global0
	.section	.rodata,"a",@progbits
	.globl	global0
	.p2align	2
global0:
	.long	999                     # 0x3e7
	.size	global0, 4

	.type	global1,@object         # @global1
	.bss
	.globl	global1
	.p2align	2
global1:
	.long	0                       # 0x0
	.size	global1, 4

	.type	global2,@object         # @global2
	.data
	.globl	global2
	.p2align	2
global2:
	.long	1                       # 0x1
	.size	global2, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d %d %d %d\n"
	.size	.L.str, 16

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"%d %d %d %d %d %d %d %d %d\n"
	.size	.L.str1, 28

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"%d %d %d %d %d %d\n"
	.size	.L.str2, 19

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"%d %d %d\n"
	.size	.L.str3, 10

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"%d %d %d %d\n"
	.size	.L.str4, 13

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"%d %d %d %d %d %d %d %d\n"
	.size	.L.str5, 25

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	"%f %f %f %f %f %f %f %f\n"
	.size	.L.str6, 25

	.type	.L__const.main.arr1,@object # @__const.main.arr1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.L__const.main.arr1:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.size	.L__const.main.arr1, 16

	.type	.L__const.main.arr2,@object # @__const.main.arr2
	.p2align	4
.L__const.main.arr2:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.size	.L__const.main.arr2, 16

	.type	.L__const.main.A,@object # @__const.main.A
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.L__const.main.A:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.size	.L__const.main.A, 32

	.type	.L__const.main.B,@object # @__const.main.B
	.section	.rodata.str4.16,"aMS",@progbits,4
	.p2align	4
.L__const.main.B:
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	5                       # 0x5
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	.L__const.main.B, 32

	.type	.L__const.main.D,@object # @__const.main.D
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.L__const.main.D:
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	1073741824              # float 2
	.long	1077936128              # float 3
	.long	1082130432              # float 4
	.long	1084227584              # float 5
	.long	1086324736              # float 6
	.long	1088421888              # float 7
	.size	.L__const.main.D, 32

	.type	.L__const.main.E,@object # @__const.main.E
	.p2align	4
.L__const.main.E:
	.long	1088421888              # float 7
	.long	1086324736              # float 6
	.long	1084227584              # float 5
	.long	1082130432              # float 4
	.long	1077936128              # float 3
	.long	1073741824              # float 2
	.long	1065353216              # float 1
	.long	0                       # float 0
	.size	.L__const.main.E, 32

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
