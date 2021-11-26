	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_clearLeadingCharacters ## -- Begin function clearLeadingCharacters
	.p2align	4, 0x90
_clearLeadingCharacters:                ## @clearLeadingCharacters
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
                                        ## kill: def $dil killed $dil killed $edi
	andb	$1, %dil
	movb	%dil, -1(%rbp)
	callq	_getchar
	movl	%eax, -8(%rbp)
	movl	$0, -12(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$32, -8(%rbp)
	jl	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	testb	$1, -1(%rbp)
	movb	%al, -13(%rbp)          ## 1-byte Spill
	jne	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$32, -8(%rbp)
	movb	%al, -13(%rbp)          ## 1-byte Spill
	jne	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$128, -12(%rbp)
	setl	%al
	movb	%al, -13(%rbp)          ## 1-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-13(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_6
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	callq	_getchar
	movl	%eax, -8(%rbp)
	jmp	LBB0_1
LBB0_7:
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getChar                ## -- Begin function getChar
	.p2align	4, 0x90
_getChar:                               ## @getChar
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	$0, -1(%rbp)
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	_getCharFiltered
	movsbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getCharFiltered        ## -- Begin function getCharFiltered
	.p2align	4, 0x90
_getCharFiltered:                       ## @getCharFiltered
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
                                        ## kill: def $dil killed $dil killed $edi
	andb	$1, %dil
	movb	%dil, -2(%rbp)
	movb	-2(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	_clearLeadingCharacters
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	LBB2_2
## %bb.1:
	movb	$48, -1(%rbp)
	jmp	LBB2_3
LBB2_2:
	movl	-8(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -1(%rbp)
LBB2_3:
	movsbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getInputString         ## -- Begin function getInputString
	.p2align	4, 0x90
_getInputString:                        ## @getInputString
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
                                        ## kill: def $sil killed $sil killed $esi
	movq	%rdi, -8(%rbp)
	andb	$1, %sil
	movb	%sil, -9(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	testb	$1, -9(%rbp)
	je	LBB3_2
## %bb.1:
	movb	-9(%rbp), %al
	xorb	$-1, %al
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	%ecx, %edi
	callq	_clearLeadingCharacters
	movl	%eax, -24(%rbp)
	jmp	LBB3_3
LBB3_2:
	callq	_getChar
	movsbl	%al, %ecx
	movl	%ecx, -24(%rbp)
LBB3_3:
	jmp	LBB3_4
LBB3_4:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$10, -24(%rbp)
	movb	%al, -25(%rbp)          ## 1-byte Spill
	je	LBB3_6
## %bb.5:                               ##   in Loop: Header=BB3_4 Depth=1
	cmpl	$128, -16(%rbp)
	setl	%al
	movb	%al, -25(%rbp)          ## 1-byte Spill
LBB3_6:                                 ##   in Loop: Header=BB3_4 Depth=1
	movb	-25(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB3_7
	jmp	LBB3_8
LBB3_7:                                 ##   in Loop: Header=BB3_4 Depth=1
	movl	-24(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movb	$0, (%rcx,%rdx)
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -16(%rbp)
	callq	_getchar
	movl	%eax, -24(%rbp)
	jmp	LBB3_4
LBB3_8:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printCharacter         ## -- Begin function printCharacter
	.p2align	4, 0x90
_printCharacter:                        ## @printCharacter
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
                                        ## kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %edi
	movsbl	-1(%rbp), %esi
	callq	_printCharacters
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printCharacters        ## -- Begin function printCharacters
	.p2align	4, 0x90
_printCharacters:                       ## @printCharacters
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
                                        ## kill: def $sil killed $sil killed $esi
	movl	%edi, -4(%rbp)
	movb	%sil, -5(%rbp)
	cmpl	$0, -4(%rbp)
	jle	LBB5_2
## %bb.1:
	movsbl	-5(%rbp), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %edi
	movsbl	-5(%rbp), %esi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_printCharacters
LBB5_2:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printDouble            ## -- Begin function printDouble
	.p2align	4, 0x90
_printDouble:                           ## @printDouble
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-21(%rbp), %rdx
	movsd	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	L___const.printDouble.justified(%rip), %eax
	movl	%eax, -21(%rbp)
	movb	L___const.printDouble.justified+4(%rip), %cl
	movb	%cl, -17(%rbp)
	movsd	-8(%rbp), %xmm0         ## xmm0 = mem[0],zero
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	_printDoubleJustified
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printDoubleJustified   ## -- Begin function printDoubleJustified
	.p2align	4, 0x90
_printDoubleJustified:                  ## @printDoubleJustified
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%eax, %eax
	leaq	-48(%rbp), %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %r8
	movq	(%r8), %r8
	movq	%r8, -8(%rbp)
	movsd	%xmm0, -88(%rbp)
	movl	%edi, -92(%rbp)
	movl	%esi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	-92(%rbp), %r9d
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	$32, %edx
	leaq	L_.str.1(%rip), %rcx
	leaq	L_.str.2(%rip), %r8
	movb	$0, %al
	callq	___sprintf_chk
	xorl	%esi, %esi
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	$32, %edx
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	___sprintf_chk
	leaq	-80(%rbp), %rdi
	movl	-96(%rbp), %esi
	movq	-104(%rbp), %rdx
	movl	%eax, -112(%rbp)        ## 4-byte Spill
	callq	_printStringJustified
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB7_2
## %bb.1:
	addq	$112, %rsp
	popq	%rbp
	retq
LBB7_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_printStringJustified   ## -- Begin function printStringJustified
	.p2align	4, 0x90
_printStringJustified:                  ## @printStringJustified
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	leaq	L_.str.6(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB8_2
## %bb.1:
	movl	-12(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	LBB8_6
LBB8_2:
	movq	-24(%rbp), %rdi
	leaq	L_.str.7(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB8_4
## %bb.3:
	movl	-12(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	LBB8_5
LBB8_4:
	movl	-12(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	-36(%rbp), %esi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-40(%rbp), %ecx         ## 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-12(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
LBB8_5:
	jmp	LBB8_6
LBB8_6:
	movl	-28(%rbp), %edi
	movl	$32, %esi
	callq	_printCharacters
	movq	-8(%rbp), %rsi
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-32(%rbp), %edi
	movl	$32, %esi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	callq	_printCharacters
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printEndline           ## -- Begin function printEndline
	.p2align	4, 0x90
_printEndline:                          ## @printEndline
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printEndlines          ## -- Begin function printEndlines
	.p2align	4, 0x90
_printEndlines:                         ## @printEndlines
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	LBB10_2
## %bb.1:
	callq	_printEndline
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	_printEndlines
LBB10_2:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printInteger           ## -- Begin function printInteger
	.p2align	4, 0x90
_printInteger:                          ## @printInteger
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-13(%rbp), %rdx
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	L___const.printInteger.justified(%rip), %eax
	movl	%eax, -13(%rbp)
	movb	L___const.printInteger.justified+4(%rip), %cl
	movb	%cl, -9(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	_printIntegerJustified
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printIntegerJustified  ## -- Begin function printIntegerJustified
	.p2align	4, 0x90
_printIntegerJustified:                 ## @printIntegerJustified
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	leaq	-48(%rbp), %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %r8
	movq	(%r8), %r8
	movq	%r8, -8(%rbp)
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	-52(%rbp), %r8d
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	$32, %edx
	leaq	L_.str.4(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	leaq	-48(%rbp), %rdi
	movl	-56(%rbp), %esi
	movq	-64(%rbp), %rdx
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	callq	_printStringJustified
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB12_2
## %bb.1:
	addq	$80, %rsp
	popq	%rbp
	retq
LBB12_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_printLongInteger       ## -- Begin function printLongInteger
	.p2align	4, 0x90
_printLongInteger:                      ## @printLongInteger
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-17(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	L___const.printLongInteger.justified(%rip), %eax
	movl	%eax, -17(%rbp)
	movb	L___const.printLongInteger.justified+4(%rip), %cl
	movb	%cl, -13(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	_printLongIntegerJustified
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printLongIntegerJustified ## -- Begin function printLongIntegerJustified
	.p2align	4, 0x90
_printLongIntegerJustified:             ## @printLongIntegerJustified
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	leaq	-48(%rbp), %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %r8
	movq	(%r8), %r8
	movq	%r8, -8(%rbp)
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %r8
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	$32, %edx
	leaq	L_.str.5(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	leaq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	movq	-72(%rbp), %rdx
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	callq	_printStringJustified
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB14_2
## %bb.1:
	addq	$80, %rsp
	popq	%rbp
	retq
LBB14_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_printString            ## -- Begin function printString
	.p2align	4, 0x90
_printString:                           ## @printString
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-17(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	L___const.printString.justified(%rip), %eax
	movl	%eax, -17(%rbp)
	movb	L___const.printString.justified+4(%rip), %cl
	movb	%cl, -13(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	_printStringJustified
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_promptForCharacter     ## -- Begin function promptForCharacter
	.p2align	4, 0x90
_promptForCharacter:                    ## @promptForCharacter
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	callq	_getChar
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_promptForDouble        ## -- Begin function promptForDouble
	.p2align	4, 0x90
_promptForDouble:                       ## @promptForDouble
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.9(%rip), %rdi
	leaq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movsd	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_promptForInteger       ## -- Begin function promptForInteger
	.p2align	4, 0x90
_promptForInteger:                      ## @promptForInteger
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	-12(%rbp), %ecx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_promptForString        ## -- Begin function promptForString
	.p2align	4, 0x90
_promptForString:                       ## @promptForString
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-8(%rbp), %rsi
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-16(%rbp), %rdi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_getInputString
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%c"

L___const.printDouble.justified:        ## @__const.printDouble.justified
	.asciz	"LEFT"

L_.str.1:                               ## @.str.1
	.asciz	"%s0.%dlf"

L_.str.2:                               ## @.str.2
	.asciz	"%"

L_.str.3:                               ## @.str.3
	.asciz	"\n"

L___const.printInteger.justified:       ## @__const.printInteger.justified
	.asciz	"LEFT"

L_.str.4:                               ## @.str.4
	.asciz	"%d"

L___const.printLongInteger.justified:   ## @__const.printLongInteger.justified
	.asciz	"LEFT"

L_.str.5:                               ## @.str.5
	.asciz	"%ld"

L___const.printString.justified:        ## @__const.printString.justified
	.asciz	"LEFT"

L_.str.6:                               ## @.str.6
	.asciz	"LEFT"

L_.str.7:                               ## @.str.7
	.asciz	"RIGHT"

L_.str.8:                               ## @.str.8
	.asciz	"%s"

L_.str.9:                               ## @.str.9
	.asciz	"%lf"

.subsections_via_symbols
