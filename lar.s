	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	subq	$48, %rsp
Ltmp2:
	movl	%edi, %eax
	movl	%eax, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$42, -28(%rbp)
	xorb	%al, %al
	leaq	L_.str(%rip), %rcx
	leaq	_main(%rip), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	_printf
	leaq	-28(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str1(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movb	%dl, %al
	callq	_printf
	movabsq	$4, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$42, (%rax)
	movq	-40(%rbp), %rax
	xorb	%cl, %cl
	leaq	L_.str2(%rip), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movb	%cl, %al
	callq	_printf
	leaq	_main(%rip), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %ecx
	xorb	%dl, %dl
	leaq	L_.str3(%rip), %rdi
	movl	%ecx, %esi
	movb	%dl, %al
	callq	_printf
	movl	$0, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end1:

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "0x%016lx = address of main()\n"

	.align	3
L_.str1:
	.asciz	 "0x%016lx = address of some_int\n"

	.align	3
L_.str2:
	.asciz	 "0x%016lx = content of int_ptr\n"

L_.str3:
	.asciz	 "int_ptr points to int %d\n"

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	_main.eh
_main.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp3:
	.quad	Leh_func_begin1-Ltmp3
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:


.subsections_via_symbols
