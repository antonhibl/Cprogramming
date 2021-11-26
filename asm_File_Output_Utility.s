	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_accessOutputFilePointer ## -- Begin function accessOutputFilePointer
	.p2align	4, 0x90
_accessOutputFilePointer:               ## @accessOutputFilePointer
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$8008, -4(%rbp)         ## imm = 0x1F48
	jne	LBB0_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, _accessOutputFilePointer.filePointer(%rip)
LBB0_2:
	movq	_accessOutputFilePointer.filePointer(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_closeOutputFile        ## -- Begin function closeOutputFile
	.p2align	4, 0x90
_closeOutputFile:                       ## @closeOutputFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	_DUMMY_OUTPUT_FILE_PTR(%rip), %rsi
	movl	$6006, %edi             ## imm = 0x1776
	callq	_accessOutputFilePointer
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB1_2
## %bb.1:
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-16(%rbp), %rdi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	callq	_fflush
	movq	-16(%rbp), %rdi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_fclose
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$8008, %edi             ## imm = 0x1F48
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_accessOutputFilePointer
	movb	$1, -1(%rbp)
	jmp	LBB1_3
LBB1_2:
	movb	$0, -1(%rbp)
LBB1_3:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_openOutputFile         ## -- Begin function openOutputFile
	.p2align	4, 0x90
_openOutputFile:                        ## @openOutputFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	_DUMMY_OUTPUT_FILE_PTR(%rip), %rsi
	movl	$6006, %edi             ## imm = 0x1776
	callq	_accessOutputFilePointer
	movq	%rax, -24(%rbp)
	movw	L___const.openOutputFile.writeCharacter(%rip), %cx
	movw	%cx, -26(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB2_4
## %bb.1:
	leaq	-26(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	_fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	LBB2_3
## %bb.2:
	movq	-24(%rbp), %rsi
	movl	$8008, %edi             ## imm = 0x1F48
	callq	_accessOutputFilePointer
	movb	$1, -1(%rbp)
	jmp	LBB2_5
LBB2_3:
	jmp	LBB2_4
LBB2_4:
	movb	$0, -1(%rbp)
LBB2_5:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_writeCharacterToFile   ## -- Begin function writeCharacterToFile
	.p2align	4, 0x90
_writeCharacterToFile:                  ## @writeCharacterToFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
                                        ## kill: def $dil killed $dil killed $edi
	movb	%dil, -2(%rbp)
	movq	_DUMMY_OUTPUT_FILE_PTR(%rip), %rsi
	movl	$6006, %edi             ## imm = 0x1776
	callq	_accessOutputFilePointer
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB3_2
## %bb.1:
	movq	-16(%rbp), %rdi
	movsbl	-2(%rbp), %edx
	leaq	L_.str.1(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movb	$1, -1(%rbp)
	jmp	LBB3_3
LBB3_2:
	movb	$0, -1(%rbp)
LBB3_3:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_writeCharactersToFile  ## -- Begin function writeCharactersToFile
	.p2align	4, 0x90
_writeCharactersToFile:                 ## @writeCharactersToFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
                                        ## kill: def $sil killed $sil killed $esi
	movl	%edi, -8(%rbp)
	movb	%sil, -9(%rbp)
	cmpl	$0, -8(%rbp)
	jle	LBB4_4
## %bb.1:
	movsbl	-9(%rbp), %edi
	callq	_writeCharacterToFile
	testb	$1, %al
	jne	LBB4_2
	jmp	LBB4_3
LBB4_2:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	movsbl	-9(%rbp), %esi
	callq	_writeCharactersToFile
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	LBB4_5
LBB4_3:
	movb	$0, -1(%rbp)
	jmp	LBB4_5
LBB4_4:
	movb	$1, -1(%rbp)
LBB4_5:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_writeDoubleToFile      ## -- Begin function writeDoubleToFile
	.p2align	4, 0x90
_writeDoubleToFile:                     ## @writeDoubleToFile
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
	movl	L___const.writeDoubleToFile.justified(%rip), %eax
	movl	%eax, -21(%rbp)
	movb	L___const.writeDoubleToFile.justified+4(%rip), %cl
	movb	%cl, -17(%rbp)
	movsd	-8(%rbp), %xmm0         ## xmm0 = mem[0],zero
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	_writeDoubleJustifiedToFile
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_writeDoubleJustifiedToFile ## -- Begin function writeDoubleJustifiedToFile
	.p2align	4, 0x90
_writeDoubleJustifiedToFile:            ## @writeDoubleJustifiedToFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
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
	leaq	L_.str.2(%rip), %rcx
	leaq	L_.str.3(%rip), %r8
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
	callq	_writeStringJustifiedToFile
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movb	%al, -113(%rbp)         ## 1-byte Spill
	jne	LBB6_2
## %bb.1:
	movb	-113(%rbp), %al         ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
LBB6_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_writeStringJustifiedToFile ## -- Begin function writeStringJustifiedToFile
	.p2align	4, 0x90
_writeStringJustifiedToFile:            ## @writeStringJustifiedToFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	_DUMMY_OUTPUT_FILE_PTR(%rip), %rsi
	movl	$6006, %edi             ## imm = 0x1776
	callq	_accessOutputFilePointer
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	LBB7_8
## %bb.1:
	movq	-16(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	leaq	L_.str.5(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB7_3
## %bb.2:
	movl	-20(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	LBB7_7
LBB7_3:
	movq	-32(%rbp), %rdi
	leaq	L_.str.6(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB7_5
## %bb.4:
	movl	-20(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	LBB7_6
LBB7_5:
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	-44(%rbp), %esi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-60(%rbp), %ecx         ## 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-20(%rbp), %eax
	subl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
LBB7_6:
	jmp	LBB7_7
LBB7_7:
	movl	-36(%rbp), %edi
	movl	$32, %esi
	callq	_writeCharactersToFile
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	L_.str.7(%rip), %rsi
	movb	%al, -61(%rbp)          ## 1-byte Spill
	movb	$0, %al
	callq	_fprintf
	movl	-40(%rbp), %edi
	movl	$32, %esi
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	callq	_writeCharactersToFile
	movb	$1, -1(%rbp)
	jmp	LBB7_9
LBB7_8:
	movb	$0, -1(%rbp)
LBB7_9:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_writeEndlineToFile     ## -- Begin function writeEndlineToFile
	.p2align	4, 0x90
_writeEndlineToFile:                    ## @writeEndlineToFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	_DUMMY_OUTPUT_FILE_PTR(%rip), %rsi
	movl	$6006, %edi             ## imm = 0x1776
	callq	_accessOutputFilePointer
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB8_2
## %bb.1:
	movq	-16(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	movl	$10, %edx
	movb	$0, %al
	callq	_fprintf
	movb	$1, -1(%rbp)
	jmp	LBB8_3
LBB8_2:
	movb	$0, -1(%rbp)
LBB8_3:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_writeEndlinesToFile    ## -- Begin function writeEndlinesToFile
	.p2align	4, 0x90
_writeEndlinesToFile:                   ## @writeEndlinesToFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	LBB9_4
## %bb.1:
	callq	_writeEndlineToFile
	testb	$1, %al
	jne	LBB9_2
	jmp	LBB9_3
LBB9_2:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	_writeEndlinesToFile
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	LBB9_5
LBB9_3:
	movb	$0, -1(%rbp)
	jmp	LBB9_5
LBB9_4:
	movb	$1, -1(%rbp)
LBB9_5:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_writeIntegerToFile     ## -- Begin function writeIntegerToFile
	.p2align	4, 0x90
_writeIntegerToFile:                    ## @writeIntegerToFile
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
	movl	L___const.writeIntegerToFile.justified(%rip), %eax
	movl	%eax, -13(%rbp)
	movb	L___const.writeIntegerToFile.justified+4(%rip), %cl
	movb	%cl, -9(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	_writeIntegerJustifiedToFile
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_writeIntegerJustifiedToFile ## -- Begin function writeIntegerJustifiedToFile
	.p2align	4, 0x90
_writeIntegerJustifiedToFile:           ## @writeIntegerJustifiedToFile
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
	callq	_writeStringJustifiedToFile
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movb	%al, -69(%rbp)          ## 1-byte Spill
	jne	LBB11_2
## %bb.1:
	movb	-69(%rbp), %al          ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
LBB11_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_writeStringToFile      ## -- Begin function writeStringToFile
	.p2align	4, 0x90
_writeStringToFile:                     ## @writeStringToFile
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
	movl	L___const.writeStringToFile.justified(%rip), %eax
	movl	%eax, -17(%rbp)
	movb	L___const.writeStringToFile.justified+4(%rip), %cl
	movb	%cl, -13(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	_writeStringJustifiedToFile
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_DUMMY_OUTPUT_FILE_PTR  ## @DUMMY_OUTPUT_FILE_PTR
.zerofill __DATA,__common,_DUMMY_OUTPUT_FILE_PTR,8,3
	.section	__TEXT,__const
	.globl	_GET_OUTPUT_FILE_PTR    ## @GET_OUTPUT_FILE_PTR
	.p2align	2
_GET_OUTPUT_FILE_PTR:
	.long	6006                    ## 0x1776

	.globl	_GET_OUTPUT_FLAG        ## @GET_OUTPUT_FLAG
	.p2align	2
_GET_OUTPUT_FLAG:
	.long	9009                    ## 0x2331

	.globl	_SET_OUTPUT_FILE_PTR    ## @SET_OUTPUT_FILE_PTR
	.p2align	2
_SET_OUTPUT_FILE_PTR:
	.long	8008                    ## 0x1f48

.zerofill __DATA,__bss,_accessOutputFilePointer.filePointer,8,3 ## @accessOutputFilePointer.filePointer
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\n\n"

L___const.openOutputFile.writeCharacter: ## @__const.openOutputFile.writeCharacter
	.asciz	"w"

L_.str.1:                               ## @.str.1
	.asciz	"%c"

L___const.writeDoubleToFile.justified:  ## @__const.writeDoubleToFile.justified
	.asciz	"LEFT"

L_.str.2:                               ## @.str.2
	.asciz	"%s0.%dlf"

L_.str.3:                               ## @.str.3
	.asciz	"%"

L___const.writeIntegerToFile.justified: ## @__const.writeIntegerToFile.justified
	.asciz	"LEFT"

L_.str.4:                               ## @.str.4
	.asciz	"%d"

L___const.writeStringToFile.justified:  ## @__const.writeStringToFile.justified
	.asciz	"LEFT"

L_.str.5:                               ## @.str.5
	.asciz	"LEFT"

L_.str.6:                               ## @.str.6
	.asciz	"RIGHT"

L_.str.7:                               ## @.str.7
	.asciz	"%s"

.subsections_via_symbols
