0000000100003f40 _main:
100003f40: 55                          	pushq	%rbp
100003f41: 48 89 e5                    	movq	%rsp, %rbp
100003f44: 48 83 ec 10                 	subq	$16, %rsp
100003f48: c7 45 fc 00 00 00 00        	movl	$0, -4(%rbp)
100003f4f: c7 45 f8 00 00 00 00        	movl	$0, -8(%rbp)
100003f56: 83 7d f8 0a                 	cmpl	$10, -8(%rbp)
100003f5a: 0f 8d 1a 00 00 00           	jge	26 <_main+0x3a>
100003f60: 48 8d 3d 3b 00 00 00        	leaq	59(%rip), %rdi
100003f67: e8 16 00 00 00              	callq	22 <dyld_stub_binder+0x100003f82>
100003f6c: 8b 45 f8                    	movl	-8(%rbp), %eax
100003f6f: 83 c0 01                    	addl	$1, %eax
100003f72: 89 45 f8                    	movl	%eax, -8(%rbp)
100003f75: e9 dc ff ff ff              	jmp	-36 <_main+0x16>
100003f7a: 31 c0                       	xorl	%eax, %eax
100003f7c: 48 83 c4 10                 	addq	$16, %rsp
100003f80: 5d                          	popq	%rbp
100003f81: c3                          	retq

Disassembly of section __TEXT,__stubs:

0000000100003f82 __stubs:
100003f82: ff 25 78 40 00 00           	jmpq	*16504(%rip)

Disassembly of section __TEXT,__stub_helper:

0000000100003f88 __stub_helper:
100003f88: 4c 8d 1d 79 40 00 00        	leaq	16505(%rip), %r11
100003f8f: 41 53                       	pushq	%r11
100003f91: ff 25 69 00 00 00           	jmpq	*105(%rip)
100003f97: 90                          	nop
100003f98: 68 00 00 00 00              	pushq	$0
100003f9d: e9 e6 ff ff ff              	jmp	-26 <__stub_helper>

