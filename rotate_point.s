	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$16, %edi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_malloc
	movq	%rax, -16(%rbp)
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-16(%rbp), %rsi
	leaq	L_.str.3(%rip), %rdi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.4(%rip), %rdi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	leaq	L_.str.3(%rip), %rdi
	movq	%rcx, %rsi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	leaq	-24(%rbp), %rsi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	callq	_rotatePoints
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm1          ## xmm1 = mem[0],zero
	leaq	L_.str.6(%rip), %rdi
	movb	$2, %al
	callq	_printf
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_free
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%edx, %edx
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	movl	%edx, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function rotatePoints
LCPI1_0:
	.quad	4580687790476533049     ## double 0.017453292519943295
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_rotatePoints
	.p2align	4, 0x90
_rotatePoints:                          ## @rotatePoints
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movsd	LCPI1_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movaps	%xmm1, %xmm0
	mulsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movaps	%xmm1, %xmm0
	mulsd	8(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm2        ## xmm2 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -72(%rbp)        ## 8-byte Spill
	callq	_cos
	movsd	-64(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm2        ## xmm2 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -88(%rbp)        ## 8-byte Spill
	callq	_sin
	movsd	-80(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        ## 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	_sin
	movsd	-96(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm2        ## xmm2 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       ## 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -112(%rbp)       ## 8-byte Spill
	callq	_cos
	movsd	-104(%rbp), %xmm1       ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" Rotation Calculator Program\n"

L_.str.1:                               ## @.str.1
	.asciz	"=============================\n"

L_.str.2:                               ## @.str.2
	.asciz	"\nPlease enter an x-coordinate: "

L_.str.3:                               ## @.str.3
	.asciz	"%lf"

L_.str.4:                               ## @.str.4
	.asciz	"\nPlease enter a y-coordinate: "

L_.str.5:                               ## @.str.5
	.asciz	"\nPlease enter the number of degrees to rotate by: "

L_.str.6:                               ## @.str.6
	.asciz	"\nThe result is ( %lf , %lf )"

L_.str.7:                               ## @.str.7
	.asciz	"\n\n END OF PROGRAM."

.subsections_via_symbols
