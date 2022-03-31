import os
from scripts.image import *
from scripts.utils import *
from scripts.globals import *
from scripts.logic import *

"""
Assembly code generator for CSC258 Final Project.

Write the assembly code all by hands simply takes too much time.
but writing python code also takes too much time.
BLOW UP CSC258 AND UOFT!!!!!

Screen Resolution: 256 x 256
Please set unit width in pixel as 4 x 4 and set Display width in pixel as 1024 x 1024.
One base grid is 16 x 16. The whole map is 256 x 256.

The pixel drawing's copyright goes to SEGA. 
I copied the drawing from the original game one pixel by one pixel (except the grass lol).

Author: RealFakeAccount
"""

AssemblyPreamble = """
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
"""

def generate_data_field(bitmap_list) -> str:
    """generate data field.
    drawings format: width, height, data
    """
    data_field = ""
    data_field += ".data\n"
    data_field += f"display_offset: .space {DISPLAY_OFFSET}\n"
    data_field += f"displayAddress: .word {DISPLAY_ADDRESS}\n"
    data_field += f"SCREEN_WIDTH: .word {SCREEN_WIDTH}\n"
    data_field += f"SCREEN_HEIGHT: .word {SCREEN_HEIGHT}\n"
    data_field += f"GRID_WIDTH: .word {GRID_WIDTH}\n"
    data_field += f"GRID_HEIGHT: .word {GRID_HEIGHT}\n"
    data_field += f"GRID_CENTRE_OFFSET: .word {SCREEN_WIDTH * 8 * 4 + 8 * 4}\n"
    data_field += f"BLACK_PIXEL: .word 0x000000\n"

    one_grid_add = GRID_WIDTH * 4
    st_loc = DISPLAY_ADDRESS + 2 * ONE_GRID_LINE
    data_field += f"Win_loc_1: .word {st_loc}, {st_loc + one_grid_add}\n"
    data_field += f"Win_loc_2: .word {st_loc + 4 * one_grid_add}, {st_loc + 5 * one_grid_add}\n"
    data_field += f"Win_loc_3: .word {st_loc + 7 * one_grid_add}, {st_loc + 8 * one_grid_add}\n"
    data_field += f"Win_loc_4: .word {st_loc + 11 * one_grid_add}, {st_loc + 12 * one_grid_add}\n"
    data_field += f"Win_loc_5: .word {st_loc + 14 * one_grid_add}, {st_loc + 15 * one_grid_add}\n"

    data_field += "Win_loc_1_flag: .word 0\n"
    data_field += "Win_loc_2_flag: .word 0\n"
    data_field += "Win_loc_3_flag: .word 0\n"
    data_field += "Win_loc_4_flag: .word 0\n"
    data_field += "Win_loc_5_flag: .word 0\n"

    data_field += "Win_loc_1_drawn_flag: .word 0\n"
    data_field += "Win_loc_2_drawn_flag: .word 0\n"
    data_field += "Win_loc_3_drawn_flag: .word 0\n"
    data_field += "Win_loc_4_drawn_flag: .word 0\n"
    data_field += "Win_loc_5_drawn_flag: .word 0\n"

    data_field += f"ONE_GRID_LINE: .word {4 * SCREEN_WIDTH * GRID_HEIGHT}\n"
    data_field += f"frog_up: .word 0\n"
    data_field += f"frog_down: .word 0\n"
    data_field += f"frog_left: .word 0\n"
    data_field += f"frog_right: .word 0\n"
    data_field += f"frog_loc: .word {14 * ONE_GRID_LINE + 7 * GRID_WIDTH * 4 + 0x10008000}\n"
    data_field += f"frog_loc_changed: .word 1\n"
    data_field += f"frog_face_dir: .word 0\n"
    data_field += f"KEYBOARD_FLAG: .word 0xffff0000\n"
    data_field += f"KEYBOARD_CONTENT: .word 0xffff0004\n"
    data_field += "PLAYER1_KEYBOARD_UP: .word 0x77\n"
    data_field += "PLAYER1_KEYBOARD_DOWN: .word 0x73\n"
    data_field += "PLAYER1_KEYBOARD_LEFT: .word 0x61\n"
    data_field += "PLAYER1_KEYBOARD_RIGHT: .word 0x64\n"

    data_field += "Live_remain: .word 3\n"
    data_field += "Highest_line: .word 14\n"
    data_field += "Highest_score: .word 0\n"

    data_field += "game_clock: .word 0\n"
    data_field += "image_offset: .word 0\n"

    data_field += "image_pos: .word 0\n"
    data_field += "image_pointer: .word 0\n"

    data_field += "DEBUG_STR: .asciiz \"DEBUG: \"\n"
    data_field += "Gameover_message: .asciiz \"GameOver!\"\n"
    data_field += "score_message: .asciiz \"Highest_Score: \"\n"

    for bitmap in bitmap_list:
        data_field += bitmap.get_data_field()
    return data_field


def generate_main() -> str:
    """generate the main function.
    """

    game_input = generate_check_keyboard_input()
    asm = GameMap().draw_dest_line_1_2()
    asm += game_input + generate_logic() + generate_drawings()

    asm = time_loop_wrapper(asm)

    asm = main_wrapper(asm)
    return asm

def generate_logic() -> str:
    game_logic = ""
    game_logic += generate_check_end_game()
    game_logic += generate_update_frog_location()
    game_logic += generate_update_frog_face_dir()
    game_logic += generate_clear_frog_flag()
    game_logic += generate_check_frog_win()
    game_logic += generate_score_calc()
    return game_logic

def generate_utils() -> str:
    """generate utils.
    """
    asm = ""
    asm += generate_draw_bitmap()
    asm += generate_draw_image_wrapper_v2()
    asm += generate_get_current_line()
    asm += generate_check_frog_died_func()
    return asm


def generate_drawings() -> str:
    asm = ""
    asm += GameMap().draw_frog_win()
    asm += GameMap().draw_line_3_14()
    asm += generate_frog_died_event()
    asm += GameMap().draw_frog()
    return asm


def generate_final() -> str:
    """generate final assembly code.
    0. generate functions and data
    1. take user input
    3. check game logic
    4. update screen accordingly
    """
    asm = ""
    asm += ".text\n"
    asm += generate_main()
    asm += generate_utils()
    asm += generate_data_field(BitmapGenerator(IMAGE_PATH).generate_bitmaps())
    return asm


def run():
    """run the program.
    """
    global AssemblyPreamble
    asm = AssemblyPreamble
    asm += generate_final()
    with open(OUTPUT_FILE, 'w') as f:
        f.write(asm)


if __name__ == "__main__":
    run()
    # print(str(14 * ONE_GRID_LINE + 7 * GRID_WIDTH * 4 + 0x10008000))
