SCREEN_WIDTH = 256
SCREEN_HEIGHT = 256
GRID_WIDTH = 16
GRID_HEIGHT: int = 16
DISPLAY_ADDRESS = 0x10008000
DISPLAY_OFFSET = 256 * 256 * 4

ONE_GRID_LINE = SCREEN_WIDTH * 4 * GRID_HEIGHT

SOURCE_FILE_PATH = "./scripts/compile.asm"
IMAGE_PATH = "./Images/Output/"
OUTPUT_FILE = "frogger.asm"

SOURCE_LIST = [
    "draw_bitmap",
    # argument: pointer to bitmap datafield, value of left up corner
    # return: none
    "exit_main",
    # argument: none
    # return: none
    "main"
    # argument: none
    # return: none
]
SOURCE_SECTION = [
    "draw_bitmap_wrapper"
]
MOVE_SPEED = [(1, True), (2, True), (2, True), (1, True), (1, True), (0, False),
              (1, True), (2, True), (2, True), (1, True), (1, True), (0, False)]  # line 3-15, (speed, CanMove?)
BASE_RATE = 3
