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
	subq	$496, %rsp              ## imm = 0x1F0
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	$0, -452(%rbp)
	callq	_time
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, %edi
	callq	_srand
	callq	_printTitle
	leaq	-144(%rbp), %rsi
	leaq	L_.str(%rip), %rdi
	callq	_promptForString
	leaq	L_.str.1(%rip), %rdi
	callq	_promptForCharacter
	movb	%al, -453(%rbp)
	movb	$0, %al
	callq	_printEndline
	movsbl	-453(%rbp), %edx
	cmpl	$89, %edx
	je	LBB0_2
## %bb.1:
	movsbl	-453(%rbp), %eax
	cmpl	$121, %eax
	jne	LBB0_3
LBB0_2:
	leaq	-144(%rbp), %rdi
	callq	_downloadRandomValues
	leaq	-448(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	callq	_uploadData
	movl	%eax, -460(%rbp)
LBB0_3:
	movsbl	-453(%rbp), %eax
	cmpl	$78, %eax
	je	LBB0_5
## %bb.4:
	movsbl	-453(%rbp), %eax
	cmpl	$110, %eax
	jne	LBB0_9
LBB0_5:
	leaq	-144(%rbp), %rdi
	callq	_openInputFile
	testb	$1, %al
	jne	LBB0_6
	jmp	LBB0_7
LBB0_6:
	leaq	-448(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	callq	_uploadData
	movl	%eax, -460(%rbp)
	jmp	LBB0_8
LBB0_7:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movl	%eax, -484(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$1, -452(%rbp)
	jmp	LBB0_15
LBB0_8:
	jmp	LBB0_9
LBB0_9:
	movsbl	-453(%rbp), %eax
	cmpl	$89, %eax
	je	LBB0_14
## %bb.10:
	movsbl	-453(%rbp), %eax
	cmpl	$78, %eax
	je	LBB0_14
## %bb.11:
	movsbl	-453(%rbp), %eax
	cmpl	$121, %eax
	je	LBB0_14
## %bb.12:
	movsbl	-453(%rbp), %eax
	cmpl	$110, %eax
	je	LBB0_14
## %bb.13:
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movl	%eax, -488(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$1, -452(%rbp)
	jmp	LBB0_15
LBB0_14:
	leaq	-448(%rbp), %rdi
	movl	-460(%rbp), %esi
	callq	_getListSum
	leaq	-448(%rbp), %rdi
	movl	%eax, -464(%rbp)
	movl	-460(%rbp), %esi
	callq	_findSmallestValue
	leaq	-448(%rbp), %rdi
	movl	%eax, -468(%rbp)
	movl	-460(%rbp), %esi
	callq	_findLargestValue
	movl	%eax, -472(%rbp)
	movl	-464(%rbp), %edi
	movl	-460(%rbp), %esi
	callq	_findAverage
	movsd	%xmm0, -480(%rbp)
	movl	-460(%rbp), %edi
	movl	-464(%rbp), %esi
	movl	-468(%rbp), %edx
	movl	-472(%rbp), %ecx
	movsd	-480(%rbp), %xmm0       ## xmm0 = mem[0],zero
	callq	_displayResults
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -452(%rbp)
LBB0_15:
	movl	-452(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -492(%rbp)        ## 4-byte Spill
	jne	LBB0_17
## %bb.16:
	movl	-492(%rbp), %eax        ## 4-byte Reload
	addq	$496, %rsp              ## imm = 0x1F0
	popq	%rbp
	retq
LBB0_17:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_downloadRandomValues   ## -- Begin function downloadRandomValues
	.p2align	4, 0x90
_downloadRandomValues:                  ## @downloadRandomValues
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$25, %edi
	movl	$75, %esi
	callq	_getRandBetween
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	_openOutputFile
	movl	$0, -20(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB1_8
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	$10, %edi
	movl	$99, %esi
	callq	_getRandBetween
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	cltd
	movl	$10, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movb	$0, %al
	callq	_writeEndlineToFile
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-16(%rbp), %edi
	callq	_writeIntegerToFile
	movl	-20(%rbp), %ecx
	movl	-12(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	je	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	_COMMA_SPACE(%rip), %rdi
	callq	_writeStringToFile
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB1_1
LBB1_8:
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	_closeOutputFile
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_uploadData             ## -- Begin function uploadData
	.p2align	4, 0x90
_uploadData:                            ## @uploadData
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
	movl	$1, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	_openInputFile
	testb	$1, %al
	jne	LBB2_1
	jmp	LBB2_5
LBB2_1:
	movb	$0, %al
	callq	_readIntegerFromFile
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movb	$0, %al
	callq	_readCharacterFromFile
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	_checkForEndOfInputFile
	xorb	$-1, %al
	testb	$1, %al
	jne	LBB2_3
	jmp	LBB2_4
LBB2_3:                                 ##   in Loop: Header=BB2_2 Depth=1
	movb	$0, %al
	callq	_readIntegerFromFile
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movb	$0, %al
	callq	_readCharacterFromFile
	jmp	LBB2_2
LBB2_4:
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	_closeInputFile
LBB2_5:
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getListSum             ## -- Begin function getListSum
	.p2align	4, 0x90
_getListSum:                            ## @getListSum
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	-16(%rbp), %edx
	movl	%edx, -16(%rbp)
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB3_1
LBB3_4:
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_findSmallestValue      ## -- Begin function findSmallestValue
	.p2align	4, 0x90
_findSmallestValue:                     ## @findSmallestValue
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movl	$1, -24(%rbp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB4_6
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	cmpl	-16(%rbp), %edx
	jge	LBB4_4
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
LBB4_4:                                 ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_5
LBB4_5:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB4_1
LBB4_6:
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_findLargestValue       ## -- Begin function findLargestValue
	.p2align	4, 0x90
_findLargestValue:                      ## @findLargestValue
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movl	$1, -24(%rbp)
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB5_6
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	cmpl	-16(%rbp), %edx
	jle	LBB5_4
## %bb.3:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
LBB5_4:                                 ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_5
LBB5_5:                                 ##   in Loop: Header=BB5_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB5_1
LBB5_6:
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_findAverage            ## -- Begin function findAverage
	.p2align	4, 0x90
_findAverage:                           ## @findAverage
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_displayResults         ## -- Begin function displayResults
	.p2align	4, 0x90
_displayResults:                        ## @displayResults
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	cmpl	$0, -4(%rbp)
	je	LBB7_2
## %bb.1:
	leaq	L_.str.6(%rip), %rdi
	movl	$42, %esi
	leaq	L_.str.7(%rip), %rdx
	callq	_printStringJustified
	leaq	_COLON_SPACE(%rip), %rdi
	callq	_printString
	movl	-4(%rbp), %edi
	callq	_printInteger
	movb	$0, %al
	callq	_printEndline
	movb	$0, -25(%rbp)
	jmp	LBB7_3
LBB7_2:
	movb	$1, -25(%rbp)
LBB7_3:
	cmpl	$0, -8(%rbp)
	je	LBB7_6
## %bb.4:
	testb	$1, -25(%rbp)
	jne	LBB7_6
## %bb.5:
	leaq	L_.str.8(%rip), %rdi
	movl	$42, %esi
	leaq	L_.str.7(%rip), %rdx
	callq	_printStringJustified
	leaq	_COLON_SPACE(%rip), %rdi
	callq	_printString
	movl	-8(%rbp), %edi
	callq	_printInteger
	movb	$0, %al
	callq	_printEndline
	movb	$0, -25(%rbp)
	jmp	LBB7_7
LBB7_6:
	movb	$1, -25(%rbp)
LBB7_7:
	cmpl	$0, -12(%rbp)
	je	LBB7_10
## %bb.8:
	testb	$1, -25(%rbp)
	jne	LBB7_10
## %bb.9:
	leaq	L_.str.9(%rip), %rdi
	movl	$42, %esi
	leaq	L_.str.7(%rip), %rdx
	callq	_printStringJustified
	leaq	_COLON_SPACE(%rip), %rdi
	callq	_printString
	movl	-12(%rbp), %edi
	callq	_printInteger
	movb	$0, %al
	callq	_printEndline
	movb	$0, -25(%rbp)
	jmp	LBB7_11
LBB7_10:
	movb	$1, -25(%rbp)
LBB7_11:
	cmpl	$0, -16(%rbp)
	je	LBB7_14
## %bb.12:
	testb	$1, -25(%rbp)
	jne	LBB7_14
## %bb.13:
	leaq	L_.str.10(%rip), %rdi
	movl	$42, %esi
	leaq	L_.str.7(%rip), %rdx
	callq	_printStringJustified
	leaq	_COLON_SPACE(%rip), %rdi
	callq	_printString
	movl	-16(%rbp), %edi
	callq	_printInteger
	movb	$0, %al
	callq	_printEndline
	movb	$0, -25(%rbp)
	jmp	LBB7_15
LBB7_14:
	movb	$1, -25(%rbp)
LBB7_15:
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	LBB7_16
	jp	LBB7_16
	jmp	LBB7_18
LBB7_16:
	testb	$1, -25(%rbp)
	jne	LBB7_18
## %bb.17:
	leaq	L_.str.11(%rip), %rdi
	movl	$42, %esi
	leaq	L_.str.7(%rip), %rdx
	callq	_printStringJustified
	leaq	_COLON_SPACE(%rip), %rdi
	callq	_printString
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	$2, %edi
	callq	_printDouble
	movb	$0, %al
	callq	_printEndline
	movb	$0, -25(%rbp)
	jmp	LBB7_19
LBB7_18:
	movb	$1, -25(%rbp)
LBB7_19:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getRandBetween         ## -- Begin function getRandBetween
	.p2align	4, 0x90
_getRandBetween:                        ## @getRandBetween
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	callq	_rand
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	addl	-4(%rbp), %edx
	movl	%edx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printTitle             ## -- Begin function printTitle
	.p2align	4, 0x90
_printTitle:                            ## @printTitle
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.13(%rip), %rdi
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_COLON_SPACE            ## @COLON_SPACE
_COLON_SPACE:
	.asciz	": "

	.section	__TEXT,__const
	.globl	_MIN_RAND_COUNT         ## @MIN_RAND_COUNT
	.p2align	2
_MIN_RAND_COUNT:
	.long	25                      ## 0x19

	.globl	_MAX_RAND_COUNT         ## @MAX_RAND_COUNT
	.p2align	2
_MAX_RAND_COUNT:
	.long	75                      ## 0x4b

	.globl	_MIN_RAND_LIMIT         ## @MIN_RAND_LIMIT
	.p2align	2
_MIN_RAND_LIMIT:
	.long	10                      ## 0xa

	.globl	_MAX_RAND_LIMIT         ## @MAX_RAND_LIMIT
	.p2align	2
_MAX_RAND_LIMIT:
	.long	99                      ## 0x63

	.globl	_VALUES_IN_ONE_LINE     ## @VALUES_IN_ONE_LINE
	.p2align	2
_VALUES_IN_ONE_LINE:
	.long	10                      ## 0xa

	.globl	_DISPLAY_STR_WIDTH      ## @DISPLAY_STR_WIDTH
	.p2align	2
_DISPLAY_STR_WIDTH:
	.long	42                      ## 0x2a

	.globl	_COMMA_SPACE            ## @COMMA_SPACE
_COMMA_SPACE:
	.asciz	", "

	.globl	_TWO_END_LINES          ## @TWO_END_LINES
	.p2align	2
_TWO_END_LINES:
	.long	2                       ## 0x2

	.globl	_UPPER_YES              ## @UPPER_YES
_UPPER_YES:
	.byte	89                      ## 0x59

	.globl	_LOWER_YES              ## @LOWER_YES
_LOWER_YES:
	.byte	121                     ## 0x79

	.globl	_UPPER_NO               ## @UPPER_NO
_UPPER_NO:
	.byte	78                      ## 0x4e

	.globl	_LOWER_NO               ## @LOWER_NO
_LOWER_NO:
	.byte	110                     ## 0x6e

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter the filename: "

L_.str.1:                               ## @.str.1
	.asciz	"Generate random file (Y/N)?: "

L_.str.2:                               ## @.str.2
	.asciz	"ERROR: Data file not found. Program aborted.\n\n"

L_.str.3:                               ## @.str.3
	.asciz	"END OF PROGRAM."

L_.str.4:                               ## @.str.4
	.asciz	"ERROR: Incorrect input. Please enter yY/nN.\n\n"

L_.str.5:                               ## @.str.5
	.asciz	"\n\nEND OF PROGRAM."

L_.str.6:                               ## @.str.6
	.asciz	"The number of values found is"

L_.str.7:                               ## @.str.7
	.asciz	"LEFT"

L_.str.8:                               ## @.str.8
	.asciz	"The sum of the values found is"

L_.str.9:                               ## @.str.9
	.asciz	"The smallest value of the numbers found is"

L_.str.10:                              ## @.str.10
	.asciz	"The largest value of the numbers found is"

L_.str.11:                              ## @.str.11
	.asciz	"The average of the numbers found is"

L_.str.12:                              ## @.str.12
	.asciz	"File Data Access Program\n"

L_.str.13:                              ## @.str.13
	.asciz	"========================\n"

.subsections_via_symbols
