### draw_bitmap
draw_bitmap: 
    # argument: pointer to bitmap datafield, value of left up corner
    # return: none
    # use: t0-7
    
    lw $a0, ($sp) #a0 is the pointer to the bitmap datafield
    addi $sp, $sp, 4
    lw $a1, ($sp) # a1 is the value of the left up corner
    addi $sp, $sp, 4

    addi $sp, $sp, -4
    sw $t0, ($sp) # store
    addi $sp, $sp, -4
    sw $t1, ($sp) # store
    addi $sp, $sp, -4
    sw $t2, ($sp) # store
    addi $sp, $sp, -4
    sw $t3, ($sp) # store
    addi $sp, $sp, -4
    sw $t4, ($sp) # store
    addi $sp, $sp, -4
    sw $t5, ($sp) # store
    addi $sp, $sp, -4
    sw $t6, ($sp) # store
    addi $sp, $sp, -4
    sw $t7, ($sp) # store
    

    lw $t7, ($a0) # t7 is the width of the bitmap
    addiu $a0, $a0, 4 # move a0 to height of the bitmap
    lw $t6, ($a0) # t6 is the height of the bitmap
    addiu $a0, $a0, 4 # move a0 to the first pixel of the bitmap

    add $t0, $zero, $zero # t0 is i, i = 0

draw_bitmap_loop_0: # for(int i = 0; i < height; i++)
    beq $t0, $t6, draw_bitmap_loop_0_exit # i < height
    add $t1, $zero, $zero # t1 is j, j = 0

draw_bitmap_loop_1: # for(int j = 0; j < width; j++)
    beq $t1, $t7, draw_bitmap_loop_1_exit # j < width

    # t2 = a1 + 4 * (j + (i * SCREEN_WIDTH))
    # t2 will be the position of current drawing pixel
    lw $t5, SCREEN_WIDTH # t5 is the value of the screen width
    multu $t0, $t5 # lo = i * SCREEN_WIDTH
    mflo $t2 # t2 = i * SCREEN_WIDTH
    addu $t2, $t2, $t1 # t2 = i * SCREEN_WIDTH + j
    addu $t4, $zero, 4 # t4 = 4
    multu $t2, $t4
    mflo $t2 # t2 = 4 * (i * SCREEN_WIDTH + j)
    addu $t2, $t2, $a1 # t2 = a1 + 4 * (i * SCREEN_WIDTH + j)
    lw $t3, ($a0) # t3 = current pixel color
    addiu $a0, $a0, 4 # move a0 to the next pixel

    sw $t3, ($t2) # store the pixel color to the screen

    addiu $t1, $t1, 1 # j++
    j draw_bitmap_loop_1

draw_bitmap_loop_1_exit:
    addiu $t0, $t0, 1 # i++
    j draw_bitmap_loop_0
draw_bitmap_loop_0_exit:
    j draw_bitmap_exit
draw_bitmap_exit:
    lw $t7, ($sp) #restore
    addi $sp, $sp, 4
    lw $t6, ($sp) #restore
    addi $sp, $sp, 4
    lw $t5, ($sp) #restore
    addi $sp, $sp, 4
    lw $t4, ($sp) #restore
    addi $sp, $sp, 4
    lw $t3, ($sp) #restore
    addi $sp, $sp, 4
    lw $t2, ($sp) #restore
    addi $sp, $sp, 4
    lw $t1, ($sp) #restore
    addi $sp, $sp, 4
    lw $t0, ($sp) #restore
    addi $sp, $sp, 4
    
    
    jr $ra
### ENDL

### main
main:
    # argument: none
    # return: none
    # main function
    
    *arg0

    j exit_main

exit_main:
    # argument: none
    # return: none
    # exit the program
    li $v0, 10
    syscall
### ENDL

### draw_bitmap_wrapper
# code section for draw_bitmap_wrapper
# arg0: value of left up corner
# arg1: name of the bitmap
# use: t0
addi $sp, $sp, -4
sw $t0, ($sp) # store t0
addi $sp, $sp, -4
sw $ra, ($sp) # store return address

addi $sp, $sp, -4
lw $t0, displayAddress
addiu $t0, $t0, *arg0
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, *arg1
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer
### ENDL

### while_loop_wrapper
# arg0(str): loop name
# arg1(int): the looping times (i = 0, i < *arg1, i++)
# arg2(str): the main function inside loop

addi $sp, $sp, -4
sw $t8, ($sp) # store t8
addi $sp, $sp, -4
sw $t9, ($sp) # store t9

add $t8, $zero, $zero # t8 is i, i = 0
addiu $t9, $zero, *arg1 # t9 is the loop limit

*arg0_loop: # for(int i = 0; i < *arg1; i++)
    beq $t8, $t9, *arg0_loop_exit # i < *arg1

*arg2

    addiu $t8, $t8, 1 # i++
    j *arg0_loop

*arg0_loop_exit:
    lw $t9, ($sp) # load t8-9 from stack
    addi $sp, $sp, 4
    lw $t8, ($sp) 
    addi $sp, $sp, 4

### ENDL

### game_clock_loader
# load game clock into $s0
# use: $s0

lw $s0, game_clock

### ENDL

### game_clock_saver
# save $s0 into game clock 
# use: $s0, $t0

la $t0, game_clock
sw $s0, ($t0)

### ENDL

### game_clock_loop_wrapper
# main loop for game logic
# use: $s0
# arg0(str): main code

game_clock_main:

*REQ_game_clock_loader

addiu $s0, $s0, 1

# DEBUG

#li $v0, 1
#move $a0, $s0
#syscall

#li $a0, '\n'
#li $v0, 11
#syscall

*REQ_game_clock_saver

*arg0

j game_clock_main

### ENDL

### pusha
# push all s, t, ra registers into stack

addi $sp, $sp, -4
sw $t0, ($sp) 
addi $sp, $sp, -4
sw $t1, ($sp) 
addi $sp, $sp, -4
sw $t2, ($sp) 
addi $sp, $sp, -4
sw $t3, ($sp) 
addi $sp, $sp, -4
sw $t4, ($sp) 
addi $sp, $sp, -4
sw $t5, ($sp) 
addi $sp, $sp, -4
sw $t6, ($sp) 
addi $sp, $sp, -4
sw $t7, ($sp) 
addi $sp, $sp, -4
sw $t8, ($sp) 
addi $sp, $sp, -4
sw $t9, ($sp) 
addi $sp, $sp, -4
sw $s0, ($sp) 
addi $sp, $sp, -4
sw $s1, ($sp) 
addi $sp, $sp, -4
sw $s2, ($sp) 
addi $sp, $sp, -4
sw $s3, ($sp) 
addi $sp, $sp, -4
sw $s4, ($sp) 
addi $sp, $sp, -4
sw $s5, ($sp) 
addi $sp, $sp, -4
sw $s6, ($sp) 
addi $sp, $sp, -4
sw $s7, ($sp) 
addi $sp, $sp, -4
sw $ra, ($sp) # store return address

### ENDL

### popa
# restore all s, t, ra registers from stack
lw $ra, ($sp)
addi $sp, $sp, 4
lw $s7, ($sp)
addi $sp, $sp, 4
lw $s6, ($sp)
addi $sp, $sp, 4
lw $s5, ($sp)
addi $sp, $sp, 4
lw $s4, ($sp)
addi $sp, $sp, 4
lw $s3, ($sp)
addi $sp, $sp, 4
lw $s2, ($sp)
addi $sp, $sp, 4
lw $s1, ($sp)
addi $sp, $sp, 4
lw $s0, ($sp)
addi $sp, $sp, 4
lw $t9, ($sp)
addi $sp, $sp, 4
lw $t8, ($sp)
addi $sp, $sp, 4
lw $t7, ($sp)
addi $sp, $sp, 4
lw $t6, ($sp)
addi $sp, $sp, 4
lw $t5, ($sp)
addi $sp, $sp, 4
lw $t4, ($sp)
addi $sp, $sp, 4
lw $t3, ($sp)
addi $sp, $sp, 4
lw $t2, ($sp)
addi $sp, $sp, 4
lw $t1, ($sp)
addi $sp, $sp, 4
lw $t0, ($sp)
addi $sp, $sp, 4

### ENDL

### draw_bitmap_offset_wrapper
# draw_bitmap_offset
# function for draw_bitmap
# .. but will add a offset based on image_offset
# NEED TO SET image_offset TO DESIRED VALUE
# argument: 
# arg0(int): original drawing position
# arg1(int): leftmost position of the line
# arg2(int): name of the bitmap
# arg3(int): a random number
# use: $s0, $t0-1

lw $s0, image_offset

# abs(((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line
addi $t0, $zero, *arg0 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, *arg1 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_*arg3

# t0 = (st_line - (org_pos + offset))
subu $t0, $s0, $t0

lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (st_line - (org_pos + offset)) % SCREEN_WIDTH

addiu $t1, $zero, 1024
subu $s0, $t1, $s0 # 1024 - s0

addiu $s0, $s0, *arg1

j draw_bitmap_offset_wrapper_exec_*arg3

draw_bitmap_offset_wrapper_smaller_*arg3:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, *arg1 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_*arg3:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, *arg2
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap

### ENDL

### game_clock_splitter
# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, *arg0

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_*arg2

*arg1

game_clock_splitter_exit_*arg2:
    add $t0, $zero, $zero

### ENDL

### set_image_offset_wrapper
# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, *arg0

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

*arg1

### ENDL

### set_image_offset_wrapper_reverse
# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, *arg0

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

*arg1

### ENDL

### check_keyboard_input
# update frog_up/down/left/right flag
# use: t0
check_keyboard_input:
addi $sp, $sp, -4
sw $t0, ($sp) # store t0
addi $sp, $sp, -4
sw $ra, ($sp) # store return address

lw $t0, KEYBOARD_FLAG
lw $t0, ($t0)
beq $t0, 1, fetch_keyboard_input
j check_keyboard_quit

fetch_keyboard_input:
la $t0, frog_loc_changed
addiu $t1, $zero, 1
sw $t1, ($t0)

lw $t0, KEYBOARD_CONTENT
lw $t0, ($t0)

lw $t1, PLAYER1_KEYBOARD_UP
beq $t0, $t1, update_keyboard_up
lw $t1, PLAYER1_KEYBOARD_DOWN
beq $t0, $t1, update_keyboard_down
lw $t1, PLAYER1_KEYBOARD_LEFT
beq $t0, $t1, update_keyboard_left
lw $t1, PLAYER1_KEYBOARD_RIGHT
beq $t0, $t1, update_keyboard_right
j check_keyboard_quit

update_keyboard_up:
la $t0, frog_up
addiu $t1, $zero, 1 
sw $t1, ($t0)
j check_keyboard_quit

update_keyboard_down:
la $t0, frog_down
addiu $t1, $zero, 1 
sw $t1, ($t0)
j check_keyboard_quit

update_keyboard_left:
la $t0, frog_left
addiu $t1, $zero, 1 
sw $t1, ($t0)
j check_keyboard_quit

update_keyboard_right:
la $t0, frog_right
addiu $t1, $zero, 1 
sw $t1, ($t0)
j check_keyboard_quit

check_keyboard_quit:
lw $ra, ($sp) #restore
addi $sp, $sp, 4
lw $t0, ($sp) #restore
addi $sp, $sp, 4

### ENDL

### update_frog_location
# update frog location based on flags
# use: t0-1

addiu $t1, $zero, 1

lw $t0, frog_up
beq $t0, $t1, update_frog_up
lw $t0, frog_down
beq $t0, $t1, update_frog_down
lw $t0, frog_left
beq $t0, $t1, update_frog_left
lw $t0, frog_right
beq $t0, $t1, update_frog_right

j update_frog_location_quit

clear_old_frog:
addi $sp, $sp, -4
sw $ra, ($sp)

la $t0, image_pos
lw $t1, frog_loc
sw $t1, ($t0)

la $t0, image_pointer
la $t1, Black_Grid
sw $t1, ($t0)

jal draw_image_wrapper_v2

# if it is line 8 and line 14, need to redraw grass

lw $t0, frog_loc

addi $sp, $sp, -4
sw $t0, ($sp)

jal get_current_line

lw $t0, ($sp) # t0 is the line number
addi $sp, $sp, 4 

addiu $t1, $zero, 8
beq $t0, $t1, redraw_grass

addiu $t1, $zero, 14
beq $t0, $t1, redraw_grass

j clear_old_frog_exit

redraw_grass:

addi $sp, $sp, -4
sw $ra, ($sp)

la $t0, image_pos
lw $t1, frog_loc
sw $t1, ($t0)

la $t0, image_pointer
la $t1, Land
sw $t1, ($t0)

jal draw_image_wrapper_v2

lw $ra, ($sp)
addi $sp, $sp, 4

j clear_old_frog_exit

clear_old_frog_exit:

lw $ra, ($sp)
addi $sp, $sp, 4

jr $ra


update_frog_up:
jal clear_old_frog

lw $t0, frog_loc

# store the next position in $t1
# t2 = line_2_pos = (ONE_GRID_LINE) * 2 + displayAddress
# if frog_loc - (ONE_GRID_LINE) < t2 : return
# t1 = frog_loc - (ONE_GRID_LINE)
# frog_loc = t1

lw $t2, ONE_GRID_LINE # t2 = ONE_GRID_LINE
addiu $t0, $zero, 2
multu $t2, $t0
mflo $t2 # t2 = ONE_GRID_LINE * 2

lw $t0, displayAddress
addu $t2, $t2, $t0 # t2 = (ONE_GRID_LINE) * 2 + displayAddress = line_2_pos

lw $t0, frog_loc # t0 = frog_loc
lw $t1, ONE_GRID_LINE
sub $t0, $t0, $t1 # t0 = frog_loc - ONE_GRID_LINE
blt $t0, $t2, update_frog_location_quit # frog_loc - (ONE_GRID_LINE) < line_2_pos then quit

lw $t0, frog_loc
lw $t1, ONE_GRID_LINE
subu $t0, $t0, $t1 # t0 = frog_loc - ONE_GRID_LINE

la $t1, frog_loc
sw $t0, ($t1) 
j update_frog_location_quit


update_frog_down:
jal clear_old_frog

lw $t0, frog_loc

# store the next position in $t1
# t2 = line_14_pos_end = (ONE_GRID_LINE) * 15 + displayAddress - 1
# if frog_loc + (ONE_GRID_LINE) > t2: return
# t1 = frog_loc + (ONE_GRID_LINE)
# frog_loc = t1

lw $t2, ONE_GRID_LINE # t2 = ONE_GRID_LINE
addiu $t0, $zero, 15
multu $t2, $t0
mflo $t2 # t2 = ONE_GRID_LINE * 15

addiu $t0, $zero, 1
subu $t2, $t2, $t0 # t2 = ONE_GRID_LINE * 15 - 1 

lw $t0, displayAddress
addu $t2, $t2, $t0 # t2 = ONE_GRID_LINE * 15 - 1 + displayAddress = line_14_pos_end

lw $t0, frog_loc # t0 = frog_loc
lw $t1, ONE_GRID_LINE
addu $t0, $t0, $t1 # t0 = frog_loc + ONE_GRID_LINE
bgt $t0, $t2, update_frog_location_quit # t0 > line_14_pos_end then quit

lw $t0, frog_loc
lw $t1, ONE_GRID_LINE
addu $t0, $t0, $t1 # t0 = frog_loc + ONE_GRID_LINE

la $t1, frog_loc
sw $t0, ($t1) 
j update_frog_location_quit


update_frog_left:
jal clear_old_frog

lw $t0, frog_loc

# store the next position in $t1
# cur_line = get_current_line(frog_loc) * ONE_GRID_LINE
# t2 = cur_line + displayAddress
# if frog_loc - GRID_WIDTH * 4 < t2: return
# t1 = frog_loc - GRID_WIDTH * 4 
# frog_loc = t1

addi $sp, $sp, -4
sw $t0, ($sp)

jal get_current_line

lw $t2, ($sp) # t2 = get_current_line(frog_loc)
addi $sp, $sp, 4

lw $t0, ONE_GRID_LINE
multu $t2, $t0
mflo $t2 # t2 = get_current_line(frog_loc) * ONE_GRID_LINE = cur_line

lw $t0, displayAddress
addu $t2, $t2, $t0 # t2 = cur_line + displayAddress

addiu $t1, $zero, 4
lw $t0, GRID_WIDTH
multu $t0, $t1
mflo $t0 # t0 = 4 * GRID_WIDTH

lw $t1, frog_loc
subu $t1, $t1, $t0 # t1 = frog_loc - 4 * GRID_WIDTH
blt $t1, $t2, update_frog_location_quit

la $t0, frog_loc
sw $t1, ($t0) 
j update_frog_location_quit

update_frog_right:
jal clear_old_frog

lw $t0, frog_loc

# store the next position in $t1
# cur_line_end = (get_current_line(frog_loc) + 1) * ONE_GRID_LINE - 1
# t2 = cur_line_end + displayAddress
# if (frog_loc + GRID_WIDTH * 4) > t2: return
# t1 = frog_loc + GRID_WIDTH * 4 
# frog_loc = t1

addi $sp, $sp, -4
sw $t0, ($sp)

jal get_current_line

lw $t2, ($sp) # t2 = get_current_line(frog_loc)
addi $sp, $sp, 4

addiu $t2, $t2, 1 # t2 = get_current_line(frog_loc) + 1

lw $t0, ONE_GRID_LINE
multu $t2, $t0
mflo $t2 # t2 = (get_current_line(frog_loc) + 1) * ONE_GRID_LINE 

addiu $t0, $zero, 1
subu $t2, $t2, $t0 # t2 = (get_current_line(frog_loc) + 1) * ONE_GRID_LINE - 1 = cur_line_end

lw $t0, displayAddress
addu $t2, $t2, $t0 # t2 = cur_line_end + displayAddress

addiu $t1, $zero, 4
lw $t0, GRID_WIDTH
multu $t0, $t1
mflo $t0 # t0 = 4 * GRID_WIDTH

lw $t1, frog_loc
addu $t1, $t1, $t0 # t1 = frog_loc + 4 * GRID_WIDTH
bge $t1, $t2, update_frog_location_quit

la $t0, frog_loc
sw $t1, ($t0) 
j update_frog_location_quit

update_frog_location_quit:
    addiu $t0, $t0, 0


### ENDL

### update_frog_face_dir
# 0: up, 1: right, 2: down, 3: left

update_frog_face_dir:

addiu $t1, $zero, 1

lw $t0, frog_up
beq $t0, $t1, update_frog_face_dir_up
lw $t0, frog_down
beq $t0, $t1, update_frog_face_dir_down
lw $t0, frog_left
beq $t0, $t1, update_frog_face_dir_left
lw $t0, frog_right
beq $t0, $t1, update_frog_face_dir_right
j update_frog_face_dir_quit

update_frog_face_dir_up:

addiu $t0, $zero, 0
la $t1, frog_face_dir
sw $t0, ($t1)
j update_frog_face_dir_quit

update_frog_face_dir_right:

addiu $t0, $zero, 1
la $t1, frog_face_dir
sw $t0, ($t1)
j update_frog_face_dir_quit

update_frog_face_dir_down:

addiu $t0, $zero, 2
la $t1, frog_face_dir
sw $t0, ($t1)
j update_frog_face_dir_quit

update_frog_face_dir_left:

addiu $t0, $zero, 3
la $t1, frog_face_dir
sw $t0, ($t1)
j update_frog_face_dir_quit

update_frog_face_dir_quit:
addiu $t0, $t0, 0


### ENDL

### clear_frog_flag
# set frog_up/down/left/right to 0

la $t0, frog_up
sw $zero, ($t0)
la $t0, frog_down
sw $zero, ($t0)
la $t0, frog_left
sw $zero, ($t0)
la $t0, frog_right
sw $zero, ($t0)

### ENDL


### draw_image_wrapper_v2
# is a function now (include in utils)
# code section for draw_bitmap_wrapper
# set following data field before calling
# image_pos: image position (contain displayAddress)
# image_pointer: bitmap data pointer
# use: t0-1
draw_image_wrapper_v2:
addi $sp, $sp, -4
sw $t0, ($sp) # store t0
addi $sp, $sp, -4
sw $ra, ($sp) # store return address

lw $t0, image_pos
addi $sp, $sp, -4
sw $t0, 0($sp) # save left up corner to stack

lw $t0, image_pointer
addi $sp, $sp, -4
sw $t0, 0($sp) # save bitmap data pointer to stack
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

jr $ra

### ENDL

### draw_frog

lw $t0, frog_face_dir
addiu $t1, $zero, 0
beq $t0, $t1, draw_frog_face_up
addiu $t1, $zero, 1
beq $t0, $t1, draw_frog_face_right
addiu $t1, $zero, 2
beq $t0, $t1, draw_frog_face_down
addiu $t1, $zero, 3
beq $t0, $t1, draw_frog_face_left

draw_frog_face_up:
lw $t0, frog_loc
la $t1, image_pos
sw $t0, ($t1)

la $t0, Frog_Up
la $t1, image_pointer
sw $t0, ($t1)

j draw_frog_exec

draw_frog_face_down:
lw $t0, frog_loc
la $t1, image_pos
sw $t0, ($t1)

la $t0, Frog_Down
la $t1, image_pointer
sw $t0, ($t1)

j draw_frog_exec

draw_frog_face_right:
lw $t0, frog_loc
la $t1, image_pos
sw $t0, ($t1)

la $t0, Frog_Right
la $t1, image_pointer
sw $t0, ($t1)

j draw_frog_exec

draw_frog_face_left:
lw $t0, frog_loc
la $t1, image_pos
sw $t0, ($t1)

la $t0, Frog_Left
la $t1, image_pointer
sw $t0, ($t1)

j draw_frog_exec

draw_frog_exec:



# lw $t0, frog_loc_changed
# addiu $t1, $zero, 1
# bne $t0, $t1, draw_frog_exit
jal draw_image_wrapper_v2
la $t0, frog_loc_changed
sw $zero, ($t0)

draw_frog_exit:
addiu $t0, $t0, 0


### ENDL

### get_current_line 
# util function. Return address based on $ra.
# only argument is the position.
# return value is the line number.
# arg/return push through stack.
# use: t0-1


get_current_line:

lw $t0, ($sp)
addi $sp, $sp, 4

# set t1 to displayAddress
lw $t1, displayAddress
subu $t0, $t0, $t1 # t0 = t0 - displayAddress

# t1 = ONE_GRID_LINE
lw $t1, ONE_GRID_LINE
divu $t0, $t1 
mflo $t0 # t0 = t0 / ONE_GRID_LINE

# push result into stack

addi $sp, $sp, -4
sw $t0, ($sp)
jr $ra

### ENDL

### check_frog_died_func
# return 1: alive, 0: died
# check whether frog died
# based on screen data
# util function

check_frog_died_func:
addi $sp, $sp, -4
sw $ra, ($sp)

lw $t0, frog_loc

addi $sp, $sp, -4
sw $ra, ($sp)
addi $sp, $sp, -4
sw $t0, ($sp)
jal get_current_line
lw $t0, ($sp) # t0 is current line
addi $sp, $sp, 4
lw $ra, ($sp) 
addi $sp, $sp, 4

lw $ra, ($sp)
addi $sp, $sp, 4

addiu $t1, $zero, 3
beq $t0, $t1, check_frog_died_water
addiu $t1, $zero, 4
beq $t0, $t1, check_frog_died_water
addiu $t1, $zero, 5
beq $t0, $t1, check_frog_died_water
addiu $t1, $zero, 6
beq $t0, $t1, check_frog_died_water
addiu $t1, $zero, 7
beq $t0, $t1, check_frog_died_water

addiu $t1, $zero, 9
beq $t0, $t1, check_frog_died_car
addiu $t1, $zero, 10
beq $t0, $t1, check_frog_died_car
addiu $t1, $zero, 11
beq $t0, $t1, check_frog_died_car
addiu $t1, $zero, 12
beq $t0, $t1, check_frog_died_car
addiu $t1, $zero, 13
beq $t0, $t1, check_frog_died_car

j check_frog_died_return_alive

check_frog_died_water:

lw $s0, frog_loc

addiu $s1, $zero, 0 # s1 = i

check_frog_died_water_loop0:
addiu $s2, $zero, 0 # s2 = j

addiu $t1, $zero, 16
blt $s1, $t1, check_frog_died_water_loop1

# BEGIN DEBUG
la $a0, DEBUG_STR
addi $v0, $zero, 4
syscall

move $a0, $t1
addi $v0, $zero, 1
syscall

li $a0, '-'
li $v0, 11
syscall
# END DEBUG

j check_frog_died_return_died

check_frog_died_water_loop1:

# if *(frog_loc + (i * SCREEN_WIDTH + j) * 4) != BLACK_PIXEL:
# jump check_frog_died_return_alive

lw $t1, SCREEN_WIDTH
multu $s1, $t1
mflo $t0 # t0 = i * SCREEN_WIDTH

addu $t0, $t0, $s2 # t0 = i * SCREEN_WIDTH + j

addiu $t1, $t1, 4
multu $t0, $t1
mflo $t0 # t0 = (i * SCREEN_WIDTH + j) * 4

lw $t1, frog_loc
addu $t0, $t0, $t1 # t0 = frog_loc + i( * SCREEN_WIDTH + j) * 4

lw $t1, ($t0) # t1 = *(frog_loc + (i * SCREEN_WIDTH + j) * 4)

lw $t0, BLACK_PIXEL
bne $t1, $t0, check_frog_died_return_alive


addiu $t1, $zero, 16
addiu $s2, $s2, 1
blt $s2, $t1, check_frog_died_water_loop1
addu $s1, $s1, 1
j check_frog_died_water_loop0

check_frog_died_car:

lw $t0, frog_loc
lw $t1, GRID_CENTRE_OFFSET

addu $t0, $t0, $t1
lw $t1, ($t0) # t1 is the color of the centre of the grid
lw $t0, BLACK_PIXEL

bne $t1, $t0, check_frog_died_return_died

j check_frog_died_return_alive


check_frog_died_return_died:

addi $sp, $sp, -4
addiu $t0, $zero, 0
sw $t0, ($sp)

jr $ra

check_frog_died_return_alive:

addi $sp, $sp, -4
addiu $t0, $zero, 1
sw $t0, ($sp)

jr $ra

### ENDL

### frog_died_event
# main logic 
# should be placed at the top of the logic part

addi $sp, $sp, -4
sw $ra, ($sp)
jal check_frog_died_func
lw $s0, ($sp) # s0 = 1: alive, s0 = 0: died
addi $sp, $sp, 4

lw $ra, ($sp)
addi $sp, $sp, 4

beq $s0, $zero, frog_died_event_exec

j frog_died_event_exit

frog_died_event_exec:
la $t0, frog_loc
addiu $t1, $zero, 268698048 # init loc
sw $t1, ($t0)


# update Live_remain

lw $t0, Live_remain
addiu $t1, $zero, 1
subu $t0, $t0, $t1

la $t1, Live_remain
sw $t0, ($t1)

# update Highest_line

la $t0, Live_remain
addiu $t1, $zero, 14
sw $t1, ($t0)

frog_died_event_exit:
addiu $t0, $zero, 0

### ENDL

### check_frog_win

lw $t0, frog_loc
la $t1, Win_loc_1
lw $t2, ($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_1
lw $t2, 4($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_1

lw $t0, frog_loc
la $t1, Win_loc_2
lw $t2, ($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_2
lw $t2, 4($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_2

lw $t0, frog_loc
la $t1, Win_loc_3
lw $t2, ($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_3
lw $t2, 4($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_3

lw $t0, frog_loc
la $t1, Win_loc_4
lw $t2, ($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_4
lw $t2, 4($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_4

lw $t0, frog_loc
la $t1, Win_loc_5
lw $t2, ($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_5
lw $t2, 4($t1) # t2 is the win address
beq $t0, $t2, frog_win_loc_5

j check_frog_win_exit

frog_win_loc_1:

la $t0, Win_loc_1_flag
addiu $t1, $zero, 1
sw $t1, ($t0)

# update Highest_line

la $t0, Live_remain
addiu $t1, $zero, 14
sw $t1, ($t0)

la $t0, frog_loc # reset frog loc
addiu $t1, $zero, 268698048 # init loc
sw $t1, ($t0)

j check_frog_win_exit

frog_win_loc_2:

la $t0, Win_loc_2_flag
addiu $t1, $zero, 1
sw $t1, ($t0)

# update Highest_line

la $t0, Live_remain
addiu $t1, $zero, 14
sw $t1, ($t0)

la $t0, frog_loc # reset frog loc
addiu $t1, $zero, 268698048 # init loc
sw $t1, ($t0)

j check_frog_win_exit

frog_win_loc_3:

la $t0, Win_loc_3_flag
addiu $t1, $zero, 1
sw $t1, ($t0)

# update Highest_line

la $t0, Live_remain
addiu $t1, $zero, 14
sw $t1, ($t0)

la $t0, frog_loc # reset frog loc
addiu $t1, $zero, 268698048 # init loc
sw $t1, ($t0)

j check_frog_win_exit

frog_win_loc_4:

la $t0, Win_loc_4_flag
addiu $t1, $zero, 1
sw $t1, ($t0)

# update Highest_line

la $t0, Live_remain
addiu $t1, $zero, 14
sw $t1, ($t0)

la $t0, frog_loc # reset frog loc
addiu $t1, $zero, 268698048 # init loc
sw $t1, ($t0)

j check_frog_win_exit

frog_win_loc_5:

la $t0, Win_loc_5_flag
addiu $t1, $zero, 1
sw $t1, ($t0)

# update Highest_line

la $t0, Live_remain
addiu $t1, $zero, 14
sw $t1, ($t0)

la $t0, frog_loc # reset frog loc
addiu $t1, $zero, 268698048 # init loc
sw $t1, ($t0)

j check_frog_win_exit

check_frog_win_exit:

addiu $t0, $zero, 0

### ENDL

### draw_frog_win


draw_frog_win_loc_1:

lw $t0, Win_loc_1_flag
addiu $t1, $zero, 1
bne $t0, $t1, draw_frog_win_loc_2

la $t1, Win_loc_1
lw $t0, 4($t1)
la $t1, image_pos
sw $t0, ($t1)

la $t0, Frog_live
la $t1, image_pointer
sw $t0, ($t1)

jal draw_image_wrapper_v2


draw_frog_win_loc_2:

lw $t0, Win_loc_2_flag
addiu $t1, $zero, 1
bne $t0, $t1, draw_frog_win_loc_3

la $t1, Win_loc_2
lw $t0, ($t1)
la $t1, image_pos
sw $t0, ($t1)

la $t0, Frog_live
la $t1, image_pointer
sw $t0, ($t1)

jal draw_image_wrapper_v2


draw_frog_win_loc_3:

lw $t0, Win_loc_3_flag
addiu $t1, $zero, 1
bne $t0, $t1, draw_frog_win_loc_4

la $t1, Win_loc_3
lw $t0, ($t1)
la $t1, image_pos
sw $t0, 4($t1)

la $t0, Frog_live
la $t1, image_pointer
sw $t0, ($t1)

jal draw_image_wrapper_v2


draw_frog_win_loc_4:

lw $t0, Win_loc_4_flag
addiu $t1, $zero, 1
bne $t0, $t1, draw_frog_win_loc_5

la $t1, Win_loc_4
lw $t0, ($t1)
la $t1, image_pos
sw $t0, ($t1)

la $t0, Frog_live
la $t1, image_pointer
sw $t0, ($t1)

jal draw_image_wrapper_v2


draw_frog_win_loc_5:

lw $t0, Win_loc_5_flag
addiu $t1, $zero, 1
bne $t0, $t1, draw_frog_win_exit

la $t1, Win_loc_5
lw $t0, 4($t1)
la $t1, image_pos
sw $t0, ($t1)

la $t0, Frog_live
la $t1, image_pointer
sw $t0, ($t1)

jal draw_image_wrapper_v2

j draw_frog_win_exit

draw_frog_win_exit:
addiu $t0, $zero, 0

### ENDL

### check_end_game

lw $t0, Live_remain
addiu $t1, $zero, 0

beq $t0, $t1, game_over

j check_end_game_exit

game_over:

la $a0, Gameover_message
addi $v0, $zero, 4
syscall

li $a0, '\n'
li $v0, 11
syscall

j exit_main

check_end_game_exit:
addiu $t0, $t0, 0

### ENDL

### score_calc

addiu $s0, $zero, 0 # use $s0 to calc current score

lw $t0, Win_loc_1_flag
addiu $t1, $zero, 100
multu $t0, $t1
mflo $t0 # one frog loc is 100 scores

addu $s0, $s0, $t0

lw $t0, Win_loc_2_flag
addiu $t1, $zero, 100
multu $t0, $t1
mflo $t0 # one frog loc is 100 scores

addu $s0, $s0, $t0

lw $t0, Win_loc_3_flag
addiu $t1, $zero, 100
multu $t0, $t1
mflo $t0 # one frog loc is 100 scores

addu $s0, $s0, $t0

lw $t0, Win_loc_4_flag
addiu $t1, $zero, 100
multu $t0, $t1
mflo $t0 # one frog loc is 100 scores

addu $s0, $s0, $t0

lw $t0, Win_loc_5_flag
addiu $t1, $zero, 100
multu $t0, $t1
mflo $t0 # one frog loc is 100 scores

addu $s0, $s0, $t0

# calc line score

lw $t0, frog_loc
addi $sp, $sp, -4
sw $t0, ($sp)
jal get_current_line
lw $t0, ($sp) # t0 is the current line
addi $sp, $sp, 4

lw $t1, Highest_line
beq $t0, $t1, score_calc_update

# update highest line and score. 
# one line is 10 scores

la $t1, Highest_line
sw $t0, ($t1)

# s0 += (14 - t0) * 10

addiu $t1, $zero, 14
subu $t0, $t1, $t0
addiu $t1, $zero, 10
multu $t1, $t0
mflo $t0

addu $s0, $s0, $t0

score_calc_update:

lw $t0, Highest_score
ble $s0, $t0, score_calc_exit

la $t0, Highest_score
sw $s0, ($t0)

la $a0, score_message
addi $v0, $zero, 4
syscall

move $a0, $s0
addi $v0, $zero, 1
syscall

li $a0, '\n'
li $v0, 11
syscall

score_calc_exit:
addiu $s0, $zero, 0

### ENDL