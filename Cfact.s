	.arch armv8-a
	.file	"fact.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"The Factorial of %d is: %ld"
	.align	3
.LC1:
	.string	"\nNo arguments given, terminating program."
	.align	3
.LC2:
	.string	"\nEND OF PROGRAM"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	str	w0, [sp, 60]
	str	x1, [sp, 48]
	ldr	w0, [sp, 60]
	cmp	w0, 2
	bne	.L2
	mov	w19, 1
	mov	x20, 1
	ldr	x0, [sp, 48]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	atoi
	mov	w21, w0
	b	.L3
.L4:
	sxtw	x0, w19
	mul	x20, x20, x0
	add	w19, w19, 1
.L3:
	cmp	w19, w21
	ble	.L4
	mov	x2, x20
	mov	w1, w21
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L5
.L2:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L5:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	bl	fflush
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
