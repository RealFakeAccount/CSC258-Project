.data
    displayAddress: .word 0x10008000
    Red: .word 0xff0000
.text
    lw $t0, displayAddress
    lw $t1, Red
    sw $t1, 0($t0)
    sw $t1, 4($t0)
    sw $t1, 8($t0)
Exit:
    li $v0, 10 # terminate the program gracefully
    syscall
