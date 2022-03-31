# test file for keyboard input
.data 

KEYBOARD_FLAG: .word 0xffff0000
KEYBOARD_CONTENT: .word 0xffff0004

.text

main:
	lw $t8, KEYBOARD_FLAG
	lw $t8, ($t8)
	beq $t8, 1, check_keyboard_input
	j main

check_keyboard_input:
	lw $t2, KEYBOARD_CONTENT
	lw $t2, ($t2)

	li $v0, 11
	move $a0, $t2
	syscall

	li $v0, 11
	li $a0, '\n'
	syscall

	j main