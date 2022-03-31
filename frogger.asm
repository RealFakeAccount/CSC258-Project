
# CSC258H5S Fall 2021 Assembly Final Project
# University of Toronto, St. George
#
# Student: Letian Cheng, 1006857046
#
# Bitmap Display Configuration:
# - Unit width in pixels: 1
# - Unit height in pixels: 1
# - Display width in pixels: 256
# - Display height in pixels: 256
# - Base Address for Display: 0x10008000 ($gp)
#
# Which milestone is reached in this submission?
# - Milestone 5 (choose the one the applies)

# Which approved additional features have been implemented?
# (See the assignment handout for the list of additional features)
# Easy:
# 1. Have objects in different rows move at different speeds.
# 2. Add a third row in each of the water and road sections.
# 3. Make the frog point in the direction that it’s traveling.
# Hard:
# 1. Make objects (frog, logs, turtles, vehicles, etc) look more like the arcade version.
# 2. Display the player’s score at the top of the screen.
.text
main:
    # argument: none
    # return: none
    # main function
    
    # main loop for game logic
# use: $s0
# arg0(str): main code

game_clock_main:

# load game clock into $s0
# use: $s0

lw $s0, game_clock



addiu $s0, $s0, 1

# DEBUG

#li $v0, 1
#move $a0, $s0
#syscall

#li $a0, '\n'
#li $v0, 11
#syscall

# save $s0 into game clock 
# use: $s0, $t0

la $t0, game_clock
sw $s0, ($t0)



# DRAW SECTION START 
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
addiu $t0, $t0, 24576
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Dest
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 24704
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Dest_middle_
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 24800
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Dest
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 24928
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Dest_middle_
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 25024
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Dest
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 25152
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Dest_middle_
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 25248
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Dest
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 25376
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Dest_middle_
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 25472
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Dest
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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


# set frog_up/down/left/right to 0

la $t0, frog_up
sw $zero, ($t0)
la $t0, frog_down
sw $zero, ($t0)
la $t0, frog_left
sw $zero, ($t0)
la $t0, frog_right
sw $zero, ($t0)


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

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3703533

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49228 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_746225

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_746225

draw_bitmap_offset_wrapper_smaller_746225:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_746225:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3703533:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_front_9369030

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49232 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8988337

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_8988337

draw_bitmap_offset_wrapper_smaller_8988337:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8988337:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_front_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_front_9369030:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen2012179

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49288 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4931427

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_4931427

draw_bitmap_offset_wrapper_smaller_4931427:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4931427:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen2012179:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_middle_8258900

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49292 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7042343

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_7042343

draw_bitmap_offset_wrapper_smaller_7042343:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7042343:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_middle_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_middle_8258900:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3597387

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49352 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8544042

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_8544042

draw_bitmap_offset_wrapper_smaller_8544042:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8544042:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3597387:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_end_8795366

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49356 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_5967355

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_5967355

draw_bitmap_offset_wrapper_smaller_5967355:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_5967355:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_end_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_end_8795366:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen9483522

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49540 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4986222

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_4986222

draw_bitmap_offset_wrapper_smaller_4986222:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4986222:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen9483522:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_front_5719648

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49544 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8701792

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_8701792

draw_bitmap_offset_wrapper_smaller_8701792:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8701792:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_front_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_front_5719648:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen6822308

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49600 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7078610

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_7078610

draw_bitmap_offset_wrapper_smaller_7078610:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7078610:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen6822308:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_middle_2162642

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49604 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4034642

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_4034642

draw_bitmap_offset_wrapper_smaller_4034642:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4034642:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_middle_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_middle_2162642:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen9025191

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49664 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9962071

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_9962071

draw_bitmap_offset_wrapper_smaller_9962071:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9962071:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen9025191:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_end_9612329

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49668 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3143918

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_3143918

draw_bitmap_offset_wrapper_smaller_3143918:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3143918:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_end_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_end_9612329:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen6666224

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49852 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4850408

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_4850408

draw_bitmap_offset_wrapper_smaller_4850408:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4850408:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen6666224:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_front_3894018

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49856 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_2517741

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_2517741

draw_bitmap_offset_wrapper_smaller_2517741:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_2517741:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_front_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_front_3894018:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3890493

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49912 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_6105012

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_6105012

draw_bitmap_offset_wrapper_smaller_6105012:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_6105012:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3890493:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_middle_1140443

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49916 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7686759

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_7686759

draw_bitmap_offset_wrapper_smaller_7686759:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7686759:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_middle_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_middle_1140443:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen2650982

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49976 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8237377

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_8237377

draw_bitmap_offset_wrapper_smaller_8237377:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8237377:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen2650982:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_end_5252663

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 49980 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 49152 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3506547

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

addiu $s0, $s0, 49152

j draw_bitmap_offset_wrapper_exec_3506547

draw_bitmap_offset_wrapper_smaller_3506547:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 49152 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3506547:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_end_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_end_5252663:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen2965510

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 65764 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7737716

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_7737716

draw_bitmap_offset_wrapper_smaller_7737716:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7737716:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen2965510:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle898755

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 65636 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7252977

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_7252977

draw_bitmap_offset_wrapper_smaller_7252977:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7252977:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle898755:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen4752801

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 65764 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9940385

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_9940385

draw_bitmap_offset_wrapper_smaller_9940385:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9940385:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen4752801:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle7258674

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 65700 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_6205503

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_6205503

draw_bitmap_offset_wrapper_smaller_6205503:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_6205503:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle7258674:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3512236

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 65992 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_6589884

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_6589884

draw_bitmap_offset_wrapper_smaller_6589884:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_6589884:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3512236:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle2499204

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 65864 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_2462083

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_2462083

draw_bitmap_offset_wrapper_smaller_2462083:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_2462083:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle2499204:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen8857136

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 65992 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_2129768

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_2129768

draw_bitmap_offset_wrapper_smaller_2129768:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_2129768:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen8857136:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle6123454

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 65928 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_5704389

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_5704389

draw_bitmap_offset_wrapper_smaller_5704389:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_5704389:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle6123454:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen2680916

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 66220 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7910788

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_7910788

draw_bitmap_offset_wrapper_smaller_7910788:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7910788:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen2680916:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle4551897

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 66092 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_827424

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_827424

draw_bitmap_offset_wrapper_smaller_827424:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_827424:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle4551897:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen9351901

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 66220 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8098746

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_8098746

draw_bitmap_offset_wrapper_smaller_8098746:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8098746:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen9351901:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle5455283

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 66156 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3259445

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_3259445

draw_bitmap_offset_wrapper_smaller_3259445:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3259445:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle5455283:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen9142004

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 66448 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_1303241

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_1303241

draw_bitmap_offset_wrapper_smaller_1303241:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_1303241:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen9142004:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle9349002

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 66320 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4516554

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_4516554

draw_bitmap_offset_wrapper_smaller_4516554:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4516554:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle9349002:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen6429643

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 66448 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9225500

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_9225500

draw_bitmap_offset_wrapper_smaller_9225500:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9225500:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen6429643:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle9258519

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 66384 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 65536 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_1099507

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

addiu $s0, $s0, 65536

j draw_bitmap_offset_wrapper_exec_1099507

draw_bitmap_offset_wrapper_smaller_1099507:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 65536 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_1099507:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle9258519:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen8909426

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82060 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_6833560

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_6833560

draw_bitmap_offset_wrapper_smaller_6833560:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_6833560:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen8909426:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_front_4903603

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82064 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_1598224

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_1598224

draw_bitmap_offset_wrapper_smaller_1598224:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_1598224:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_front_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_front_4903603:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen4438518

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82120 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_504226

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_504226

draw_bitmap_offset_wrapper_smaller_504226:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_504226:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen4438518:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_middle_4162139

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82124 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3448798

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_3448798

draw_bitmap_offset_wrapper_smaller_3448798:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3448798:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_middle_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_middle_4162139:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen9430474

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82184 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_5840186

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_5840186

draw_bitmap_offset_wrapper_smaller_5840186:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_5840186:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen9430474:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_middle_9834858

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82188 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_1593813

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_1593813

draw_bitmap_offset_wrapper_smaller_1593813:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_1593813:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_middle_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_middle_9834858:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen9513855

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82248 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7900029

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_7900029

draw_bitmap_offset_wrapper_smaller_7900029:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7900029:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen9513855:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_end_3072326

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82252 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3781837

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_3781837

draw_bitmap_offset_wrapper_smaller_3781837:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3781837:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_end_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_end_3072326:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen4006782

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82500 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7144305

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_7144305

draw_bitmap_offset_wrapper_smaller_7144305:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7144305:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen4006782:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_front_6548763

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82504 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7174914

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_7174914

draw_bitmap_offset_wrapper_smaller_7174914:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7174914:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_front_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_front_6548763:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen4456711

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82560 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_6247317

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_6247317

draw_bitmap_offset_wrapper_smaller_6247317:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_6247317:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen4456711:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_middle_8645970

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82564 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9651142

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_9651142

draw_bitmap_offset_wrapper_smaller_9651142:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9651142:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_middle_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_middle_8645970:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen7719795

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82624 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3978610

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_3978610

draw_bitmap_offset_wrapper_smaller_3978610:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3978610:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen7719795:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_middle_3150880

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82628 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_273057

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_273057

draw_bitmap_offset_wrapper_smaller_273057:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_273057:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_middle_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_middle_3150880:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3111646

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82688 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3578006

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_3578006

draw_bitmap_offset_wrapper_smaller_3578006:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3578006:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3111646:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_end_2164519

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 82692 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 81920 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_83785

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

addiu $s0, $s0, 81920

j draw_bitmap_offset_wrapper_exec_83785

draw_bitmap_offset_wrapper_smaller_83785:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 81920 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_83785:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_end_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_end_2164519:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen2803985

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 98428 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_6377020

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_6377020

draw_bitmap_offset_wrapper_smaller_6377020:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_6377020:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen2803985:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_front_7002443

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 98432 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4764077

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_4764077

draw_bitmap_offset_wrapper_smaller_4764077:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4764077:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_front_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_front_7002443:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3534840

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 98488 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8987209

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_8987209

draw_bitmap_offset_wrapper_smaller_8987209:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8987209:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3534840:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_end_4937773

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 98492 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8286346

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_8286346

draw_bitmap_offset_wrapper_smaller_8286346:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8286346:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_end_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_end_4937773:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen4021572

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 98724 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9672312

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_9672312

draw_bitmap_offset_wrapper_smaller_9672312:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9672312:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen4021572:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_front_7787867

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 98728 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_1031205

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_1031205

draw_bitmap_offset_wrapper_smaller_1031205:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_1031205:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_front_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_front_7787867:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen4852060

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 98784 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3925291

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_3925291

draw_bitmap_offset_wrapper_smaller_3925291:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3925291:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen4852060:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_end_1996539

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 98788 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9981287

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_9981287

draw_bitmap_offset_wrapper_smaller_9981287:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9981287:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_end_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_end_1996539:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen1136143

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 99020 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7619698

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_7619698

draw_bitmap_offset_wrapper_smaller_7619698:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7619698:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen1136143:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_front_9781831

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 99024 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4316766

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_4316766

draw_bitmap_offset_wrapper_smaller_4316766:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4316766:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_front_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_front_9781831:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen9887738

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 99080 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4421830

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_4421830

draw_bitmap_offset_wrapper_smaller_4421830:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4421830:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen9887738:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Log_end_9532388

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 99084 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 98304 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4782394

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

addiu $s0, $s0, 98304

j draw_bitmap_offset_wrapper_exec_4782394

draw_bitmap_offset_wrapper_smaller_4782394:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 98304 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4782394:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Log_end_
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Log_end_9532388:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen383195

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 114992 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3848172

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_3848172

draw_bitmap_offset_wrapper_smaller_3848172:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3848172:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen383195:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle6950220

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 114800 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_6246614

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_6246614

draw_bitmap_offset_wrapper_smaller_6246614:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_6246614:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle6950220:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen4172614

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 114992 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8947401

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_8947401

draw_bitmap_offset_wrapper_smaller_8947401:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8947401:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen4172614:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle9405645

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 114864 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7719292

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_7719292

draw_bitmap_offset_wrapper_smaller_7719292:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7719292:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle9405645:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen4441810

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 114992 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8548985

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_8548985

draw_bitmap_offset_wrapper_smaller_8548985:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8548985:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen4441810:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle6521228

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 114928 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7770142

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_7770142

draw_bitmap_offset_wrapper_smaller_7770142:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7770142:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle6521228:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen2002779

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115296 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_5086832

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_5086832

draw_bitmap_offset_wrapper_smaller_5086832:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_5086832:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen2002779:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle1189690

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115104 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_5597772

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_5597772

draw_bitmap_offset_wrapper_smaller_5597772:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_5597772:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle1189690:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3040712

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115296 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8663386

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_8663386

draw_bitmap_offset_wrapper_smaller_8663386:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8663386:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3040712:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle727696

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115168 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_2580391

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_2580391

draw_bitmap_offset_wrapper_smaller_2580391:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_2580391:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle727696:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen5171501

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115296 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3805051

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_3805051

draw_bitmap_offset_wrapper_smaller_3805051:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3805051:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen5171501:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle5148837

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115232 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7655982

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_7655982

draw_bitmap_offset_wrapper_smaller_7655982:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7655982:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle5148837:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3792172

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115600 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8537713

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_8537713

draw_bitmap_offset_wrapper_smaller_8537713:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8537713:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3792172:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle9544162

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115408 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_751677

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_751677

draw_bitmap_offset_wrapper_smaller_751677:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_751677:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle9544162:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen8735577

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115600 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_5873213

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_5873213

draw_bitmap_offset_wrapper_smaller_5873213:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_5873213:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen8735577:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle2705637

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115472 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_224718

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_224718

draw_bitmap_offset_wrapper_smaller_224718:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_224718:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle2705637:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen4478725

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115600 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_2859756

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_2859756

draw_bitmap_offset_wrapper_smaller_2859756:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_2859756:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen4478725:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Turtle5645166

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 115536 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 114688 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_2034668

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

addiu $s0, $s0, 114688

j draw_bitmap_offset_wrapper_exec_2034668

draw_bitmap_offset_wrapper_smaller_2034668:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 114688 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_2034668:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Turtle
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Turtle5645166:
    add $t0, $zero, $zero

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
addiu $t0, $t0, 131072
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131136
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131200
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131264
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131328
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131392
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131456
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131520
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131584
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131648
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131712
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131776
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131840
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131904
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 131968
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 132032
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3294687

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 147832 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 147456 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_241688

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

addiu $s0, $s0, 147456

j draw_bitmap_offset_wrapper_exec_241688

draw_bitmap_offset_wrapper_smaller_241688:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 147456 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_241688:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3294687:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car1149173

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 147724 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 147456 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9146471

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

addiu $s0, $s0, 147456

j draw_bitmap_offset_wrapper_exec_9146471

draw_bitmap_offset_wrapper_smaller_9146471:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 147456 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9146471:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car1
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car1149173:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen8523398

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 148208 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 147456 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8668057

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

addiu $s0, $s0, 147456

j draw_bitmap_offset_wrapper_exec_8668057

draw_bitmap_offset_wrapper_smaller_8668057:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 147456 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8668057:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen8523398:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car1156123

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 148100 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 147456 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8985701

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

addiu $s0, $s0, 147456

j draw_bitmap_offset_wrapper_exec_8985701

draw_bitmap_offset_wrapper_smaller_8985701:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 147456 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8985701:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car1
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car1156123:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen5482394

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 164316 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 163840 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_2915586

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

addiu $s0, $s0, 163840

j draw_bitmap_offset_wrapper_exec_2915586

draw_bitmap_offset_wrapper_smaller_2915586:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 163840 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_2915586:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen5482394:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car27965527

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 164320 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 163840 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9350601

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

addiu $s0, $s0, 163840

j draw_bitmap_offset_wrapper_exec_9350601

draw_bitmap_offset_wrapper_smaller_9350601:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 163840 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9350601:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car2
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car27965527:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen2955243

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 180492 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 180224 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_6497388

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

addiu $s0, $s0, 180224

j draw_bitmap_offset_wrapper_exec_6497388

draw_bitmap_offset_wrapper_smaller_6497388:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 180224 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_6497388:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen2955243:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car34912263

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 180432 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 180224 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8264559

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

addiu $s0, $s0, 180224

j draw_bitmap_offset_wrapper_exec_8264559

draw_bitmap_offset_wrapper_smaller_8264559:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 180224 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8264559:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car3
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car34912263:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen9085274

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 180760 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 180224 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3631021

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

addiu $s0, $s0, 180224

j draw_bitmap_offset_wrapper_exec_3631021

draw_bitmap_offset_wrapper_smaller_3631021:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 180224 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3631021:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen9085274:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car37199656

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 180700 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 180224 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3986774

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

addiu $s0, $s0, 180224

j draw_bitmap_offset_wrapper_exec_3986774

draw_bitmap_offset_wrapper_smaller_3986774:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 180224 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3986774:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car3
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car37199656:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3404759

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 181028 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 180224 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9108373

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

addiu $s0, $s0, 180224

j draw_bitmap_offset_wrapper_exec_9108373

draw_bitmap_offset_wrapper_smaller_9108373:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 180224 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9108373:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3404759:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car38578882

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 1

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 180968 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 180224 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_9954932

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

addiu $s0, $s0, 180224

j draw_bitmap_offset_wrapper_exec_9954932

draw_bitmap_offset_wrapper_smaller_9954932:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 180224 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_9954932:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car3
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car38578882:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen8489121

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 196816 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 196608 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7339764

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

addiu $s0, $s0, 196608

j draw_bitmap_offset_wrapper_exec_7339764

draw_bitmap_offset_wrapper_smaller_7339764:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 196608 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7339764:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen8489121:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car44406374

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 196820 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 196608 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_1547153

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

addiu $s0, $s0, 196608

j draw_bitmap_offset_wrapper_exec_1547153

draw_bitmap_offset_wrapper_smaller_1547153:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 196608 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_1547153:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car4
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car44406374:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen5729674

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 197084 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 196608 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_2944099

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

addiu $s0, $s0, 196608

j draw_bitmap_offset_wrapper_exec_2944099

draw_bitmap_offset_wrapper_smaller_2944099:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 196608 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_2944099:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen5729674:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car44499095

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 197088 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 196608 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3405376

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

addiu $s0, $s0, 196608

j draw_bitmap_offset_wrapper_exec_3405376

draw_bitmap_offset_wrapper_smaller_3405376:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 196608 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3405376:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car4
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car44499095:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen3235346

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 197352 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 196608 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_6481239

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

addiu $s0, $s0, 196608

j draw_bitmap_offset_wrapper_exec_6481239

draw_bitmap_offset_wrapper_smaller_6481239:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 196608 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_6481239:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen3235346:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car41324405

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 197356 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 196608 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_3300729

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

addiu $s0, $s0, 196608

j draw_bitmap_offset_wrapper_exec_3300729

draw_bitmap_offset_wrapper_smaller_3300729:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 196608 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_3300729:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car4
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car41324405:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen1091117

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 213264 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 212992 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_8460774

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

addiu $s0, $s0, 212992

j draw_bitmap_offset_wrapper_exec_8460774

draw_bitmap_offset_wrapper_smaller_8460774:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 212992 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_8460774:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen1091117:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car53257398

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 213200 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 212992 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_7546114

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

addiu $s0, $s0, 212992

j draw_bitmap_offset_wrapper_exec_7546114

draw_bitmap_offset_wrapper_smaller_7546114:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 212992 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_7546114:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car5
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car53257398:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen292817

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 213536 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 212992 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4778514

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

addiu $s0, $s0, 212992

j draw_bitmap_offset_wrapper_exec_4778514

draw_bitmap_offset_wrapper_smaller_4778514:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 212992 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4778514:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen292817:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car53290266

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 213472 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 212992 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_4282917

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

addiu $s0, $s0, 212992

j draw_bitmap_offset_wrapper_exec_4282917

draw_bitmap_offset_wrapper_smaller_4282917:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 212992 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_4282917:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car5
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car53290266:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Black_screen8813728

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 213808 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 212992 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_2656064

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

addiu $s0, $s0, 212992

j draw_bitmap_offset_wrapper_exec_2656064

draw_bitmap_offset_wrapper_smaller_2656064:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 212992 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_2656064:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Black_screen
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Black_screen8813728:
    add $t0, $zero, $zero

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# arg2: bitmap name
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

div $t0, $t1
mfhi $t0

bne $t0, $zero, game_clock_splitter_exit_Car59387773

# arguments:
# arg0: how many clock time per action
# arg1: action asm
# use: t0-1

lw $t0, game_clock
addiu $t1, $zero, 2

divu $t0, $t1
mflo $t1 # t1 is the offset original value

addiu $t0, $zero, 4 # t1 should x4
multu $t1, $t0
mflo $t1

sub $t1, $zero, $t1

la $t0, image_offset
sw $t1, ($t0)

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
addi $t0, $zero, 213744 # t0 = org_pos
add $t0, $t0, $s0 # t0 = org_pos + offset
addi $s0, $zero, 212992 # s0 = st_line

bge $t0, $s0, draw_bitmap_offset_wrapper_smaller_581264

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

addiu $s0, $s0, 212992

j draw_bitmap_offset_wrapper_exec_581264

draw_bitmap_offset_wrapper_smaller_581264:

subu $t0, $t0, $s0 # t0 = abs(org_pos + offset - st_line)
lw $s0, SCREEN_WIDTH # s0 = SCREEN_WIDTH
addu $t1, $zero, 4
multu $s0, $t1
mflo $s0 # s0 *= 4
div $t0, $s0 
mfhi $s0 # s0 = (org_pos + offset - st_line) % SCREEN_WIDTH

addiu $s0, $s0, 212992 # s0 = (((org_pos + offset) - st_line) % SCREEN_WIDTH) + st_line

draw_bitmap_offset_wrapper_exec_581264:

lw $t0, displayAddress
addu $t0, $t0, $s0


addi $sp, $sp, -4
sw $t0, 0($sp)

la $t0, Car5
addi $sp, $sp, -4
sw $t0, 0($sp)
jal draw_bitmap





game_clock_splitter_exit_Car59387773:
    add $t0, $zero, $zero

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
addiu $t0, $t0, 229376
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 229440
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 229504
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 229568
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 229632
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 229696
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 229760
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 229824
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 229888
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 229952
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 230016
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 230080
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 230144
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 230208
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 230272
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

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
addiu $t0, $t0, 230336
sw $t0, 0($sp)
addi $sp, $sp, -4
la $t0, Land
sw $t0, 0($sp)
jal draw_bitmap

lw $ra, 0($sp) # restore return address
addi $sp, $sp, 4 # restore stack pointer
lw $t0, 0($sp) # restore t0
addi $sp, $sp, 4 # restore stack pointer

# DRAW SECTION END 
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




j game_clock_main



    j exit_main

exit_main:
    # argument: none
    # return: none
    # exit the program
    li $v0, 10
    syscall

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

.data
display_offset: .space 262144
displayAddress: .word 268468224
SCREEN_WIDTH: .word 256
SCREEN_HEIGHT: .word 256
GRID_WIDTH: .word 16
GRID_HEIGHT: .word 16
GRID_CENTRE_OFFSET: .word 8224
BLACK_PIXEL: .word 0x000000
Win_loc_1: .word 268500992, 268501056
Win_loc_2: .word 268501248, 268501312
Win_loc_3: .word 268501440, 268501504
Win_loc_4: .word 268501696, 268501760
Win_loc_5: .word 268501888, 268501952
Win_loc_1_flag: .word 0
Win_loc_2_flag: .word 0
Win_loc_3_flag: .word 0
Win_loc_4_flag: .word 0
Win_loc_5_flag: .word 0
Win_loc_1_drawn_flag: .word 0
Win_loc_2_drawn_flag: .word 0
Win_loc_3_drawn_flag: .word 0
Win_loc_4_drawn_flag: .word 0
Win_loc_5_drawn_flag: .word 0
ONE_GRID_LINE: .word 16384
frog_up: .word 0
frog_down: .word 0
frog_left: .word 0
frog_right: .word 0
frog_loc: .word 268698048
frog_loc_changed: .word 1
frog_face_dir: .word 0
KEYBOARD_FLAG: .word 0xffff0000
KEYBOARD_CONTENT: .word 0xffff0004
PLAYER1_KEYBOARD_UP: .word 0x77
PLAYER1_KEYBOARD_DOWN: .word 0x73
PLAYER1_KEYBOARD_LEFT: .word 0x61
PLAYER1_KEYBOARD_RIGHT: .word 0x64
Live_remain: .word 3
Highest_line: .word 14
Highest_score: .word 0
game_clock: .word 0
image_offset: .word 0
image_pos: .word 0
image_pointer: .word 0
DEBUG_STR: .asciiz "DEBUG: "
Gameover_message: .asciiz "GameOver!"
score_message: .asciiz "Highest_Score: "
Yellow_I: .word 8 8 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
White_O: .word 8 8 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Frog_live: .word 7 7 0x20df00 0x000000 0xfd27fa 0xf4f702 0xfd27fa 0x000000 0x20df00 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x20df00 0x20df00 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x20df00 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 
Yellow_E: .word 8 8 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Red_1: .word 8 8 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Car5: .word 16 14 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0x000000 0x000000 0x9400f9 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x9400f9 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x9400f9 0x9400f9 0x9400f9 0xf4f702 0xf4f702 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x9400f9 0x9400f9 0x9400f9 0xf4f702 0xf4f702 0xfd0201 0xf4f702 0xfd0201 0xf4f702 0xfd0201 0xf4f702 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x9400f9 0x9400f9 0x9400f9 0xf4f702 0xf4f702 0xfd0201 0xf4f702 0xfd0201 0xf4f702 0xfd0201 0xf4f702 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x9400f9 0x9400f9 0x9400f9 0xf4f702 0xf4f702 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x9400f9 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x9400f9 0x000000 0x000000 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 
White_E: .word 8 8 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Red_9: .word 8 8 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Car3: .word 15 10 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x000000 0x000000 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x000000 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0xf944fa 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0xf4f702 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0x0cdff7 0xf944fa 0x000000 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0x0cdff7 0xf944fa 0x000000 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0x0cdff7 0xf944fa 0x000000 0x0cdff7 0xf4f702 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0x0cdff7 0xf944fa 0x000000 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x0cdff7 0xf944fa 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x0cdff7 0x000000 0x0cdff7 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x000000 0x000000 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0xf944fa 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 
Car1: .word 27 10 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 
White_U: .word 8 8 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 
White_C: .word 8 8 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Dest: .word 32 23 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x000000 0x000000 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0xf14703 0xf14703 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0xf14703 0x1ee102 0x000000 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xf14703 0xf14703 0x000000 0xf14703 0x000000 0xf14703 0xf14703 0x000000 0xf14703 0x000000 0xf14703 0xf14703 0x000000 0xf14703 0xf14703 0x000000 0xf14703 0x000000 0xf14703 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xf14703 0xf14703 0xf14703 0x1ee102 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0xf14703 0x000000 0x000000 
Frog_Right: .word 9 12 0x000000 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 0x000000 0x20df00 0x20df00 0x20df00 0x20df00 0x000000 0x20df00 0x20df00 0x20df00 0x20df00 0x000000 0x000000 0x000000 0x20df00 0x000000 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 0xf4f702 0xf4f702 0xf4f702 0x20df00 0xfd27fa 0x000000 0x000000 0x20df00 0xf4f702 0x20df00 0x20df00 0xf4f702 0x20df00 0x20df00 0xf4f702 0x000000 0xf4f702 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x20df00 0xf4f702 0x000000 0x000000 0x20df00 0xf4f702 0xf4f702 0xf4f702 0x20df00 0xfd27fa 0x000000 0x000000 0x000000 0x000000 0x20df00 0x000000 0x20df00 0x000000 0x000000 0x000000 0x20df00 0x20df00 0x20df00 0x20df00 0x000000 0x20df00 0x20df00 0x20df00 0x20df00 0x000000 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 0x000000 
Turtle: .word 16 11 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0xe3e2f3 0x000000 0x000000 0x000000 0x1ee102 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x1ee102 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x1ee102 0x000000 0x000000 0x000000 0xe3e2f3 0x1ee102 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xe3e2f3 0xfd0201 0x000000 0x000000 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0xfd0201 0xe3e2f3 0xfd0201 0xfd0201 0xfd0201 0xe3e2f3 0xfd0201 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0xfd0201 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x1ee102 0xe3e2f3 0x000000 0x000000 0x000000 0x1ee102 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 
Car2: .word 16 14 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0xe3e2f3 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0xfd0201 0xe3e2f3 0xfd0201 0x000000 0xfd0201 0xe3e2f3 0xe3e2f3 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xe3e2f3 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0xe3e2f3 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x1ee102 0x000000 0x000000 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0xfd0201 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Red_4: .word 8 8 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Red_7: .word 8 8 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Dest_middle_: .word 24 23 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0xf14703 0xf14703 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x000000 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0x1ee102 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0x1ee102 0x000000 0xf14703 0xf14703 0xf14703 0x000000 0xf14703 0x000000 0xf14703 0x000000 0x000000 0xf14703 0x000000 0xf14703 0xf14703 0x000000 0xf14703 0x000000 0xf14703 0xf14703 0x000000 0xf14703 0xf14703 0xf14703 0x000000 0xf14703 0x000000 0x000000 0xf14703 0x000000 
Log_middle_: .word 16 10 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0x966748 0x966748 0x966748 0x966748 0x966748 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x000000 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x000000 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 
Yellow_M: .word 8 8 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0xf4f702 0xf4f702 0xf4f702 0x000000 0xf4f702 0xf4f702 0xf4f702 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0xf4f702 0xf4f702 0x000000 0xf4f702 0x000000 0xf4f702 0xf4f702 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 
Car4: .word 14 12 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xfd0201 0x000000 0x000000 0x1ee102 0x000000 0x000000 0x000000 0x1ee102 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xfd0201 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x1ee102 0x1ee102 0xe3e2f3 0x1ee102 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0x1ee102 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xfd0201 0x000000 0xe3e2f3 0xe3e2f3 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0x1ee102 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xfd0201 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x1ee102 0x1ee102 0xe3e2f3 0x1ee102 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xfd0201 0x000000 0x000000 0x1ee102 0x000000 0x000000 0x000000 0x1ee102 0x000000 0x000000 0x1ee102 0x1ee102 0x1ee102 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xfd0201 0x000000 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0xe3e2f3 0xfd0201 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 
White_1: .word 8 8 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 
Log_end_: .word 27 10 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe3e2f3 0xe26d4b 0xe3e2f3 0xe3e2f3 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0x000000 0x966748 0x966748 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0xe3e2f3 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0x000000 0x966748 0x000000 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x000000 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x000000 0x966748 0x966748 0x966748 0xe26d4b 0xe3e2f3 0xe3e2f3 0x000000 0x000000 
Red_2: .word 8 8 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Frog_Down: .word 12 9 0x000000 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 0x000000 0x20df00 0x20df00 0x000000 0x000000 0x20df00 0xf4f702 0xf4f702 0x20df00 0x000000 0x000000 0x20df00 0x20df00 0x000000 0x20df00 0x000000 0x20df00 0xf4f702 0xf4f702 0x20df00 0xf4f702 0x20df00 0x000000 0x20df00 0x000000 0x000000 0x20df00 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0xf4f702 0x20df00 0x20df00 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x20df00 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x20df00 0x000000 0x000000 0x20df00 0x000000 0x20df00 0x20df00 0xf4f702 0xf4f702 0x20df00 0x20df00 0x000000 0x20df00 0x000000 0x20df00 0x20df00 0x000000 0xfd27fa 0x20df00 0xf4f702 0xf4f702 0x20df00 0xfd27fa 0x000000 0x20df00 0x20df00 0x000000 0x20df00 0x000000 0x000000 0xf4f702 0xf4f702 0x20df00 0xf4f702 0x000000 0x000000 0x20df00 0x000000 
White_S: .word 8 8 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xe3e2f3 0x000000 0x000000 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0xe3e2f3 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Yellow_T: .word 8 8 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Red_8: .word 8 8 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Black_Grid: .word 16 16 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Log_front_: .word 15 10 0x000000 0x000000 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0x000000 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe3e2f3 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0xe26d4b 0x966748 0x000000 0x966748 0xe3e2f3 0x966748 0x966748 0x966748 0x000000 0x000000 0x000000 0x966748 0x000000 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x966748 0x000000 0x000000 0xe26d4b 0xe26d4b 0xe26d4b 0x966748 0x966748 0x000000 0x000000 0x000000 0x966748 0x966748 0x966748 0x966748 0x966748 
Black_screen: .word 1 16 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Frog_Up: .word 12 9 0x000000 0x20df00 0x000000 0x000000 0xf4f702 0x20df00 0xf4f702 0xf4f702 0x000000 0x000000 0x20df00 0x000000 0x20df00 0x20df00 0x000000 0xfd27fa 0x20df00 0xf4f702 0xf4f702 0x20df00 0xfd27fa 0x000000 0x20df00 0x20df00 0x000000 0x20df00 0x000000 0x20df00 0x20df00 0xf4f702 0xf4f702 0x20df00 0x20df00 0x000000 0x20df00 0x000000 0x000000 0x20df00 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x20df00 0x000000 0x000000 0x000000 0x000000 0xf4f702 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x000000 0x000000 0x000000 0x20df00 0x20df00 0xf4f702 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x20df00 0x000000 0x000000 0x20df00 0x000000 0x20df00 0xf4f702 0x20df00 0xf4f702 0xf4f702 0x20df00 0x000000 0x20df00 0x000000 0x20df00 0x20df00 0x000000 0x000000 0x20df00 0xf4f702 0xf4f702 0x20df00 0x000000 0x000000 0x20df00 0x20df00 0x000000 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 0x000000 
Land: .word 16 16 0x000000 0x9400f9 0x000000 0x000000 0x9400f9 0x9400f9 0x000000 0x000000 0x9400f9 0x000000 0x000000 0x9400f9 0x9400f9 0x000000 0x000000 0x000000 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x000000 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0xfd0201 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0xfd0201 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0xfd0201 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x000000 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0xfd0201 0x1600f7 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x9400f9 0x1600f7 0x9400f9 0x9400f9 0x000000 0x000000 0x9400f9 0x000000 0x000000 0x9400f9 0x000000 0x000000 0x000000 0x000000 0x000000 
Red_6: .word 8 8 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Frog_Left: .word 9 12 0x000000 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 0x000000 0x20df00 0x20df00 0x20df00 0x20df00 0x000000 0x20df00 0x20df00 0x20df00 0x20df00 0x000000 0x000000 0x000000 0x20df00 0x000000 0x20df00 0x000000 0x000000 0x000000 0x000000 0xfd27fa 0x20df00 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x000000 0x000000 0xf4f702 0x20df00 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x000000 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x000000 0x20df00 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0xf4f702 0x20df00 0xf4f702 0x000000 0xf4f702 0x20df00 0x20df00 0xf4f702 0x20df00 0x20df00 0xf4f702 0x20df00 0x000000 0x000000 0xfd27fa 0x20df00 0xf4f702 0xf4f702 0xf4f702 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 0x000000 0x20df00 0x000000 0x000000 0x000000 0x20df00 0x20df00 0x20df00 0x20df00 0x000000 0x20df00 0x20df00 0x20df00 0x20df00 0x000000 0x20df00 0x000000 0x000000 0x000000 0x000000 0x000000 0x20df00 0x000000 
Red_5: .word 8 8 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
Red_3: .word 8 8 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0xf14703 0xf14703 0x000000 0x000000 0x000000 0xf14703 0xf14703 0x000000 0x000000 0xf14703 0xf14703 0xf14703 0xf14703 0xf14703 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 0x000000 
