	.file	1 "test.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"%d\012\000"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$17,28($sp)
	sw	$16,24($sp)
	sw	$18,32($sp)
	.cprestore	16
	sw	$31,36($sp)
	lw	$16,%got(a)($28)
	lw	$17,%got($LC0)($28)
	addiu	$18,$16,40
	addiu	$17,$17,%lo($LC0)
$L2:
	lw	$25,%call16(printf)($28)
	addiu	$16,$16,4
	lw	$5,-4($16)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	move	$4,$17

	bne	$16,$18,$L2
	lw	$28,16($sp)

	lw	$31,36($sp)
	move	$2,$0
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.globl	a
	.data
	.align	2
	.type	a, @object
	.size	a, 40
a:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
