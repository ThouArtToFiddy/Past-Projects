	.file	"thermo_update.c"
	.text
	.globl	thermo_update
	.type	thermo_update, @function
thermo_update:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	set_temp_from_ports
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	-12(%rbp), %eax
	leaq	THERMO_DISPLAY_PORT(%rip), %rsi
	movl	%eax, %edi
	call	set_display_from_temp
.L4:
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	thermo_update, .-thermo_update
	.globl	set_temp_from_ports
	.type	set_temp_from_ports, @function
set_temp_from_ports:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movzwl	THERMO_SENSOR_PORT(%rip), %eax
	movzwl	%ax, %eax
	addl	$32, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	subl	$500, %eax
	movl	%eax, -4(%rbp)
	cmpl	$500, -4(%rbp)
	jle	.L7
	movl	$1, %eax
	jmp	.L8
.L7:
	movzbl	THERMO_STATUS_PORT(%rip), %eax
	testb	%al, %al
	je	.L9
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	leal	(%rax,%rdx), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addw	$320, %ax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	movq	-24(%rbp), %rax
	movb	$1, 2(%rax)
	jmp	.L10
.L9:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	movq	-24(%rbp), %rax
	movb	$0, 2(%rax)
.L10:
	movl	$0, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	set_temp_from_ports, .-set_temp_from_ports
	.globl	set_display_from_temp
	.type	set_display_from_temp, @function
set_display_from_temp:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-82(%rbp), %eax
	cmpb	$1, %al
	jg	.L12
	movzbl	-82(%rbp), %eax
	testb	%al, %al
	jns	.L13
.L12:
	movl	$1, %eax
	jmp	.L27
.L13:
	movzbl	-82(%rbp), %eax
	testb	%al, %al
	je	.L15
	movzwl	-84(%rbp), %eax
	cmpw	$1220, %ax
	jg	.L16
	movzwl	-84(%rbp), %eax
	cmpw	$-580, %ax
	jge	.L17
.L16:
	movl	$1, %eax
	jmp	.L27
.L15:
	movzwl	-84(%rbp), %eax
	cmpw	$500, %ax
	jg	.L18
	movzwl	-84(%rbp), %eax
	cmpw	$-500, %ax
	jge	.L17
.L18:
	movl	$1, %eax
	jmp	.L27
.L17:
	movl	$63, -48(%rbp)
	movl	$6, -44(%rbp)
	movl	$91, -40(%rbp)
	movl	$79, -36(%rbp)
	movl	$102, -32(%rbp)
	movl	$109, -28(%rbp)
	movl	$125, -24(%rbp)
	movl	$7, -20(%rbp)
	movl	$127, -16(%rbp)
	movl	$111, -12(%rbp)
	movl	$0, -76(%rbp)
	movzwl	-84(%rbp), %eax
	testw	%ax, %ax
	jns	.L19
	movl	$1, -76(%rbp)
	movzwl	-84(%rbp), %eax
	cwtl
	negl	%eax
	movl	%eax, -80(%rbp)
	jmp	.L20
.L19:
	movzwl	-84(%rbp), %eax
	cwtl
	movl	%eax, -80(%rbp)
.L20:
	movl	-80(%rbp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$1000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	-80(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -64(%rbp)
	movl	-80(%rbp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$1000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	-80(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-80(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-80(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	-80(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L21
	movl	-72(%rbp), %eax
	sall	$7, %eax
	orb	$32, %ah
	movl	%eax, -72(%rbp)
.L21:
	cmpl	$0, -64(%rbp)
	je	.L22
	movl	-64(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	orl	-72(%rbp), %eax
	sall	$7, %eax
	movl	%eax, -72(%rbp)
	movl	$1, -68(%rbp)
.L22:
	cmpl	$0, -68(%rbp)
	je	.L23
	movl	-60(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	orl	-72(%rbp), %eax
	sall	$7, %eax
	movl	%eax, -72(%rbp)
	jmp	.L24
.L23:
	cmpl	$0, -60(%rbp)
	je	.L24
	movl	-60(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	orl	-72(%rbp), %eax
	sall	$7, %eax
	movl	%eax, -72(%rbp)
	movl	$1, -68(%rbp)
.L24:
	movl	-56(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	orl	-72(%rbp), %eax
	sall	$7, %eax
	movl	%eax, -72(%rbp)
	movl	-52(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	orl	%eax, -72(%rbp)
	movzbl	-82(%rbp), %eax
	testb	%al, %al
	je	.L25
	orl	$536870912, -72(%rbp)
	jmp	.L26
.L25:
	orl	$268435456, -72(%rbp)
.L26:
	movq	-96(%rbp), %rax
	movl	-72(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
.L27:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	set_display_from_temp, .-set_display_from_temp
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
