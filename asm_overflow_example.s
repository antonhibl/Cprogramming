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
	subq	$96, %rsp
	leaq	-16(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	$0, -28(%rbp)
	movl	%edi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$5, -44(%rbp)
	movq	%rax, %rdi
	leaq	L_.str(%rip), %rsi
	movl	$8, %edx
	callq	___strcpy_chk
	leaq	-24(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	movl	$8, %edx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	___strcpy_chk
	leaq	-24(%rbp), %rcx
	leaq	L_.str.2(%rip), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-16(%rbp), %rcx
	leaq	L_.str.3(%rip), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	-44(%rbp), %edx
	movl	-44(%rbp), %ecx
	leaq	L_.str.4(%rip), %rdi
	leaq	-44(%rbp), %rsi
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rdi
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	callq	_strlen
	leaq	L_.str.5(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	leaq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	$8, %edx
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	callq	___strcpy_chk
	leaq	-24(%rbp), %rdx
	leaq	L_.str.6(%rip), %rdi
	movq	%rdx, %rsi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-16(%rbp), %rdx
	leaq	L_.str.7(%rip), %rdi
	movq	%rdx, %rsi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	-44(%rbp), %edx
	movl	-44(%rbp), %ecx
	leaq	L_.str.8(%rip), %rdi
	leaq	-44(%rbp), %rsi
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	cmpq	%rdi, %rsi
	jne	LBB0_2
## %bb.1:
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"one"

L_.str.1:                               ## @.str.1
	.asciz	"two"

L_.str.2:                               ## @.str.2
	.asciz	"[BEFORE] buffer_two is at %p and contains '%s'\n"

L_.str.3:                               ## @.str.3
	.asciz	"[BEFORE] buffer one is at %p and contains '%s'\n"

L_.str.4:                               ## @.str.4
	.asciz	"[BEFORE] value is at %p and is %d (0x%08x)\n"

L_.str.5:                               ## @.str.5
	.asciz	"\n[STRCPY] copying %lu bytes into buffer_two\n\n"

L_.str.6:                               ## @.str.6
	.asciz	"[AFTER] buffer_two is at %p and contains '%s'\n"

L_.str.7:                               ## @.str.7
	.asciz	"[AFTER] buffer_one is at %p and contains '%s'\n"

L_.str.8:                               ## @.str.8
	.asciz	"[AFTER] value is at %p and is %d (0x%08x)\n"

.subsections_via_symbols
