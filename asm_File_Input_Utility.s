	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_accessEndOfInputFileFlag ## -- Begin function accessEndOfInputFileFlag
	.p2align	4, 0x90
_accessEndOfInputFileFlag:              ## @accessEndOfInputFileFlag
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $sil killed $sil killed $esi
	movl	%edi, -4(%rbp)
	andb	$1, %sil
	movb	%sil, -5(%rbp)
	cmpl	$1001, -4(%rbp)         ## imm = 0x3E9
	jne	LBB0_2
## %bb.1:
	movb	-5(%rbp), %al
	andb	$1, %al
	movb	%al, _accessEndOfInputFileFlag.endOfFileFlag(%rip)
LBB0_2:
	movb	_accessEndOfInputFileFlag.endOfFileFlag(%rip), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_accessInputFilePointer ## -- Begin function accessInputFilePointer
	.p2align	4, 0x90
_accessInputFilePointer:                ## @accessInputFilePointer
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$4004, -4(%rbp)         ## imm = 0xFA4
	jne	LBB1_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, _accessInputFilePointer.filePointer(%rip)
LBB1_2:
	movq	_accessInputFilePointer.filePointer(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_checkForEndOfInputFile ## -- Begin function checkForEndOfInputFile
	.p2align	4, 0x90
_checkForEndOfInputFile:                ## @checkForEndOfInputFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%esi, %esi
	movl	$2002, %edi             ## imm = 0x7D2
	callq	_accessEndOfInputFileFlag
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_checkForInputFileOpen  ## -- Begin function checkForInputFileOpen
	.p2align	4, 0x90
_checkForInputFileOpen:                 ## @checkForInputFileOpen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_DUMMY_INPUT_FILE_PTR(%rip), %rsi
	movl	$2002, %edi             ## imm = 0x7D2
	callq	_accessInputFilePointer
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_clearLeadingWhiteSpace ## -- Begin function clearLeadingWhiteSpace
	.p2align	4, 0x90
_clearLeadingWhiteSpace:                ## @clearLeadingWhiteSpace
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
	movq	-8(%rbp), %rdi
	callq	_fgetc
	movl	%eax, -16(%rbp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$-1, -16(%rbp)
	movb	%al, -17(%rbp)          ## 1-byte Spill
	je	LBB4_7
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	cmpl	$32, -16(%rbp)
	movb	$1, %al
	movb	%al, -18(%rbp)          ## 1-byte Spill
	jl	LBB4_6
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	testb	$1, -9(%rbp)
	movb	%al, -19(%rbp)          ## 1-byte Spill
	je	LBB4_5
## %bb.4:                               ##   in Loop: Header=BB4_1 Depth=1
	cmpl	$32, -16(%rbp)
	sete	%al
	movb	%al, -19(%rbp)          ## 1-byte Spill
LBB4_5:                                 ##   in Loop: Header=BB4_1 Depth=1
	movb	-19(%rbp), %al          ## 1-byte Reload
	movb	%al, -18(%rbp)          ## 1-byte Spill
LBB4_6:                                 ##   in Loop: Header=BB4_1 Depth=1
	movb	-18(%rbp), %al          ## 1-byte Reload
	movb	%al, -17(%rbp)          ## 1-byte Spill
LBB4_7:                                 ##   in Loop: Header=BB4_1 Depth=1
	movb	-17(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB4_8
	jmp	LBB4_9
LBB4_8:                                 ##   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_fgetc
	movl	%eax, -16(%rbp)
	jmp	LBB4_1
LBB4_9:
	movl	-16(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_closeInputFile         ## -- Begin function closeInputFile
	.p2align	4, 0x90
_closeInputFile:                        ## @closeInputFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	_DUMMY_INPUT_FILE_PTR(%rip), %rsi
	movl	$3003, %edi             ## imm = 0xBBB
	callq	_accessInputFilePointer
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB5_2
## %bb.1:
	movq	-16(%rbp), %rdi
	callq	_fclose
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$4004, %edi             ## imm = 0xFA4
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	callq	_accessInputFilePointer
	xorl	%esi, %esi
	movl	$1001, %edi             ## imm = 0x3E9
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	_accessEndOfInputFileFlag
	movb	$1, -1(%rbp)
	jmp	LBB5_3
LBB5_2:
	movb	$0, -1(%rbp)
LBB5_3:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_openInputFile          ## -- Begin function openInputFile
	.p2align	4, 0x90
_openInputFile:                         ## @openInputFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movw	L___const.openInputFile.readOnlyCharacter(%rip), %ax
	movw	%ax, -26(%rbp)
	callq	_checkForInputFileOpen
	testb	$1, %al
	jne	LBB6_4
## %bb.1:
	leaq	-26(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	_fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	LBB6_3
## %bb.2:
	movq	-24(%rbp), %rsi
	movl	$4004, %edi             ## imm = 0xFA4
	callq	_accessInputFilePointer
	xorl	%esi, %esi
	movl	$1001, %edi             ## imm = 0x3E9
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_accessEndOfInputFileFlag
	movb	$1, -1(%rbp)
	jmp	LBB6_5
LBB6_3:
	jmp	LBB6_4
LBB6_4:
	movb	$0, -1(%rbp)
LBB6_5:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readCharacterFromFile  ## -- Begin function readCharacterFromFile
	.p2align	4, 0x90
_readCharacterFromFile:                 ## @readCharacterFromFile
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
	callq	_readCharacterFromFileConfigured
	movsbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readCharacterFromFileConfigured ## -- Begin function readCharacterFromFileConfigured
	.p2align	4, 0x90
_readCharacterFromFileConfigured:       ## @readCharacterFromFileConfigured
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
                                        ## kill: def $dil killed $dil killed $edi
	andb	$1, %dil
	movb	%dil, -1(%rbp)
	movl	$48, -20(%rbp)
	callq	_checkForInputFileOpen
	testb	$1, %al
	jne	LBB8_1
	jmp	LBB8_5
LBB8_1:
	callq	_checkForEndOfInputFile
	testb	$1, %al
	jne	LBB8_5
## %bb.2:
	movq	_DUMMY_INPUT_FILE_PTR(%rip), %rsi
	movl	$3003, %edi             ## imm = 0xBBB
	callq	_accessInputFilePointer
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movb	-1(%rbp), %cl
	xorb	$-1, %cl
	movzbl	%cl, %edx
	andl	$1, %edx
	movl	%edx, %esi
	callq	_clearLeadingWhiteSpace
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	LBB8_4
## %bb.3:
	movl	$1001, %edi             ## imm = 0x3E9
	movl	$1, %esi
	callq	_accessEndOfInputFileFlag
	movl	$48, -20(%rbp)
LBB8_4:
	jmp	LBB8_5
LBB8_5:
	movl	-20(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readDoubleFromFile     ## -- Begin function readDoubleFromFile
	.p2align	4, 0x90
_readDoubleFromFile:                    ## @readDoubleFromFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	callq	_checkForInputFileOpen
	testb	$1, %al
	jne	LBB9_1
	jmp	LBB9_5
LBB9_1:
	callq	_checkForEndOfInputFile
	testb	$1, %al
	jne	LBB9_5
## %bb.2:
	movq	_DUMMY_INPUT_FILE_PTR(%rip), %rsi
	movl	$3003, %edi             ## imm = 0xBBB
	callq	_accessInputFilePointer
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	-24(%rbp), %rdx
	movb	$0, %al
	callq	_fscanf
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	LBB9_4
## %bb.3:
	movl	$1001, %edi             ## imm = 0x3E9
	movl	$1, %esi
	callq	_accessEndOfInputFileFlag
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
LBB9_4:
	jmp	LBB9_5
LBB9_5:
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readIntegerFromFile    ## -- Begin function readIntegerFromFile
	.p2align	4, 0x90
_readIntegerFromFile:                   ## @readIntegerFromFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movl	$0, -16(%rbp)
	callq	_checkForInputFileOpen
	testb	$1, %al
	jne	LBB10_1
	jmp	LBB10_5
LBB10_1:
	callq	_checkForEndOfInputFile
	testb	$1, %al
	jne	LBB10_5
## %bb.2:
	movq	_DUMMY_INPUT_FILE_PTR(%rip), %rsi
	movl	$3003, %edi             ## imm = 0xBBB
	callq	_accessInputFilePointer
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-16(%rbp), %rdx
	movb	$0, %al
	callq	_fscanf
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	LBB10_4
## %bb.3:
	movl	$1001, %edi             ## imm = 0x3E9
	movl	$1, %esi
	callq	_accessEndOfInputFileFlag
	movl	$0, -16(%rbp)
LBB10_4:
	jmp	LBB10_5
LBB10_5:
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readLongFromFile       ## -- Begin function readLongFromFile
	.p2align	4, 0x90
_readLongFromFile:                      ## @readLongFromFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movq	$0, -24(%rbp)
	callq	_checkForInputFileOpen
	testb	$1, %al
	jne	LBB11_1
	jmp	LBB11_5
LBB11_1:
	callq	_checkForEndOfInputFile
	testb	$1, %al
	jne	LBB11_5
## %bb.2:
	movq	_DUMMY_INPUT_FILE_PTR(%rip), %rsi
	movl	$3003, %edi             ## imm = 0xBBB
	callq	_accessInputFilePointer
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-24(%rbp), %rdx
	movb	$0, %al
	callq	_fscanf
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	LBB11_4
## %bb.3:
	movl	$1001, %edi             ## imm = 0x3E9
	movl	$1, %esi
	callq	_accessEndOfInputFileFlag
	movq	$0, -24(%rbp)
LBB11_4:
	jmp	LBB11_5
LBB11_5:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readRawCharFromFile    ## -- Begin function readRawCharFromFile
	.p2align	4, 0x90
_readRawCharFromFile:                   ## @readRawCharFromFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$48, -12(%rbp)
	callq	_checkForInputFileOpen
	testb	$1, %al
	jne	LBB12_1
	jmp	LBB12_5
LBB12_1:
	callq	_checkForEndOfInputFile
	testb	$1, %al
	jne	LBB12_5
## %bb.2:
	movq	_DUMMY_INPUT_FILE_PTR(%rip), %rsi
	movl	$3003, %edi             ## imm = 0xBBB
	callq	_accessInputFilePointer
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_fgetc
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	LBB12_4
## %bb.3:
	movl	$1001, %edi             ## imm = 0x3E9
	movl	$1, %esi
	callq	_accessEndOfInputFileFlag
	movl	$48, -12(%rbp)
LBB12_4:
	jmp	LBB12_5
LBB12_5:
	movl	-12(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readStringConfiguredFromFile ## -- Begin function readStringConfiguredFromFile
	.p2align	4, 0x90
_readStringConfiguredFromFile:          ## @readStringConfiguredFromFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
                                        ## kill: def $cl killed $cl killed $ecx
                                        ## kill: def $dl killed $dl killed $edx
                                        ## kill: def $sil killed $sil killed $esi
                                        ## kill: def $dil killed $dil killed $edi
	andb	$1, %dil
	movb	%dil, -2(%rbp)
	andb	$1, %sil
	movb	%sil, -3(%rbp)
	andb	$1, %dl
	movb	%dl, -4(%rbp)
	movb	%cl, -5(%rbp)
	movq	%r8, -16(%rbp)
	movl	$-1, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %r8
	movb	$0, (%rax,%r8)
	callq	_checkForInputFileOpen
	testb	$1, %al
	jne	LBB13_1
	jmp	LBB13_24
LBB13_1:
	callq	_checkForEndOfInputFile
	testb	$1, %al
	jne	LBB13_24
## %bb.2:
	movq	_DUMMY_INPUT_FILE_PTR(%rip), %rsi
	movl	$3003, %edi             ## imm = 0xBBB
	callq	_accessInputFilePointer
	movq	%rax, -32(%rbp)
	testb	$1, -2(%rbp)
	je	LBB13_4
## %bb.3:
	movq	-32(%rbp), %rdi
	movb	-3(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	_clearLeadingWhiteSpace
	movl	%eax, -20(%rbp)
	jmp	LBB13_12
LBB13_4:
	movq	-32(%rbp), %rdi
	callq	_fgetc
	movl	%eax, -20(%rbp)
	testb	$1, -3(%rbp)
	je	LBB13_11
## %bb.5:
	jmp	LBB13_6
LBB13_6:                                ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$-1, -20(%rbp)
	movb	%al, -33(%rbp)          ## 1-byte Spill
	je	LBB13_8
## %bb.7:                               ##   in Loop: Header=BB13_6 Depth=1
	cmpl	$32, -20(%rbp)
	sete	%al
	movb	%al, -33(%rbp)          ## 1-byte Spill
LBB13_8:                                ##   in Loop: Header=BB13_6 Depth=1
	movb	-33(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB13_9
	jmp	LBB13_10
LBB13_9:                                ##   in Loop: Header=BB13_6 Depth=1
	movq	-32(%rbp), %rdi
	callq	_fgetc
	movl	%eax, -20(%rbp)
	jmp	LBB13_6
LBB13_10:
	jmp	LBB13_11
LBB13_11:
	jmp	LBB13_12
LBB13_12:
	cmpl	$-1, -20(%rbp)
	jne	LBB13_14
## %bb.13:
	movl	$1001, %edi             ## imm = 0x3E9
	movl	$1, %esi
	callq	_accessEndOfInputFileFlag
	movb	$0, -1(%rbp)
	jmp	LBB13_25
LBB13_14:
	jmp	LBB13_15
LBB13_15:                               ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$-1, -20(%rbp)
	movb	%al, -34(%rbp)          ## 1-byte Spill
	je	LBB13_21
## %bb.16:                              ##   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$127, -24(%rbp)
	movb	%al, -34(%rbp)          ## 1-byte Spill
	jge	LBB13_21
## %bb.17:                              ##   in Loop: Header=BB13_15 Depth=1
	testb	$1, -4(%rbp)
	je	LBB13_19
## %bb.18:                              ##   in Loop: Header=BB13_15 Depth=1
	cmpl	$32, -20(%rbp)
	jge	LBB13_20
LBB13_19:                               ##   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	testb	$1, -4(%rbp)
	movb	%al, -34(%rbp)          ## 1-byte Spill
	jne	LBB13_21
LBB13_20:                               ##   in Loop: Header=BB13_15 Depth=1
	movl	-20(%rbp), %eax
	movsbl	-5(%rbp), %ecx
	cmpl	%ecx, %eax
	setne	%dl
	movb	%dl, -34(%rbp)          ## 1-byte Spill
LBB13_21:                               ##   in Loop: Header=BB13_15 Depth=1
	movb	-34(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB13_22
	jmp	LBB13_23
LBB13_22:                               ##   in Loop: Header=BB13_15 Depth=1
	movl	-20(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -24(%rbp)
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movb	$0, (%rcx,%rdx)
	movq	-32(%rbp), %rdi
	callq	_fgetc
	movl	%eax, -20(%rbp)
	jmp	LBB13_15
LBB13_23:
	movb	$1, -1(%rbp)
	jmp	LBB13_25
LBB13_24:
	movb	$0, -1(%rbp)
LBB13_25:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readStringSegmentFromFile ## -- Begin function readStringSegmentFromFile
	.p2align	4, 0x90
_readStringSegmentFromFile:             ## @readStringSegmentFromFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$1, -9(%rbp)
	movb	$1, -10(%rbp)
	movb	$1, -11(%rbp)
	movb	$32, -12(%rbp)
	movb	-9(%rbp), %al
	movb	-10(%rbp), %cl
	movb	-11(%rbp), %dl
	movb	-12(%rbp), %sil
	movq	-8(%rbp), %r8
	andb	$1, %al
	andb	$1, %cl
	andb	$1, %dl
	movzbl	%al, %edi
	movzbl	%cl, %r9d
	movb	%sil, -13(%rbp)         ## 1-byte Spill
	movl	%r9d, %esi
	movzbl	%dl, %edx
	movb	-13(%rbp), %al          ## 1-byte Reload
	movsbl	%al, %ecx
	callq	_readStringConfiguredFromFile
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readStringToLineEndFromFile ## -- Begin function readStringToLineEndFromFile
	.p2align	4, 0x90
_readStringToLineEndFromFile:           ## @readStringToLineEndFromFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$1, -9(%rbp)
	movb	$1, -10(%rbp)
	movb	$1, -11(%rbp)
	movb	$127, -12(%rbp)
	movb	-9(%rbp), %al
	movb	-10(%rbp), %cl
	movb	-11(%rbp), %dl
	movb	-12(%rbp), %sil
	movq	-8(%rbp), %r8
	andb	$1, %al
	andb	$1, %cl
	andb	$1, %dl
	movzbl	%al, %edi
	movzbl	%cl, %r9d
	movb	%sil, -13(%rbp)         ## 1-byte Spill
	movl	%r9d, %esi
	movzbl	%dl, %edx
	movb	-13(%rbp), %al          ## 1-byte Reload
	movsbl	%al, %ecx
	callq	_readStringConfiguredFromFile
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readStringToDelimiterFromFile ## -- Begin function readStringToDelimiterFromFile
	.p2align	4, 0x90
_readStringToDelimiterFromFile:         ## @readStringToDelimiterFromFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
                                        ## kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$1, -17(%rbp)
	movb	$1, -18(%rbp)
	movb	$1, -19(%rbp)
	movb	-17(%rbp), %al
	movb	-18(%rbp), %cl
	movb	-19(%rbp), %dl
	movb	-1(%rbp), %dil
	movq	-16(%rbp), %r8
	andb	$1, %al
	andb	$1, %cl
	andb	$1, %dl
	movzbl	%al, %r9d
	movb	%dil, -20(%rbp)         ## 1-byte Spill
	movl	%r9d, %edi
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	movb	-20(%rbp), %al          ## 1-byte Reload
	movsbl	%al, %ecx
	callq	_readStringConfiguredFromFile
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_DUMMY_INPUT_FILE_PTR   ## @DUMMY_INPUT_FILE_PTR
.zerofill __DATA,__common,_DUMMY_INPUT_FILE_PTR,8,3
	.section	__TEXT,__const
	.globl	_DUMMY_INPUT_FLAG       ## @DUMMY_INPUT_FLAG
_DUMMY_INPUT_FLAG:
	.byte	0                       ## 0x0

	.globl	_GET_INPUT_FILE_PTR     ## @GET_INPUT_FILE_PTR
	.p2align	2
_GET_INPUT_FILE_PTR:
	.long	3003                    ## 0xbbb

	.globl	_GET_INPUT_FLAG         ## @GET_INPUT_FLAG
	.p2align	2
_GET_INPUT_FLAG:
	.long	2002                    ## 0x7d2

	.globl	_SET_INPUT_FILE_PTR     ## @SET_INPUT_FILE_PTR
	.p2align	2
_SET_INPUT_FILE_PTR:
	.long	4004                    ## 0xfa4

	.globl	_SET_INPUT_FLAG         ## @SET_INPUT_FLAG
	.p2align	2
_SET_INPUT_FLAG:
	.long	1001                    ## 0x3e9

.zerofill __DATA,__bss,_accessEndOfInputFileFlag.endOfFileFlag,1,0 ## @accessEndOfInputFileFlag.endOfFileFlag
.zerofill __DATA,__bss,_accessInputFilePointer.filePointer,8,3 ## @accessInputFilePointer.filePointer
	.section	__TEXT,__cstring,cstring_literals
L___const.openInputFile.readOnlyCharacter: ## @__const.openInputFile.readOnlyCharacter
	.asciz	"r"

L_.str:                                 ## @.str
	.asciz	"%lf"

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"%ld"

.subsections_via_symbols
