from PIL import Image  # pillow module is used to read the image.
from scripts.utils import *
from scripts.logic import *
import random
import os


class BitMap:
    """a class to represent a BitMap.
    """

    def __init__(self):
        self.name = ''
        self.width = None
        self.height = None
        self.data = ''

    def get_name(self):
        return self.name

    def get_width(self):
        return self.width

    def get_height(self):
        return self.height

    def get_data(self):
        return self.data

    def get_data_field(self):
        return self.name + ": .word " + str(self.width) + " " + str(self.height) + " " + self.data + "\n"

    def generate_draw_bitmap_wrapper(self, pos) -> str:
        """a function to generate the wrapper for draw_bitmap.
        pos: (line, column) or pointer
        """
        if isinstance(pos, tuple):
            pos = pos[0] * SCREEN_WIDTH + pos[1]
        pos *= 4
        print(f"drawing {self.name} on {pos}")
        code = get_source("draw_bitmap_wrapper")
        code = code.replace("*arg0", f"{pos}")
        code = code.replace("*arg1", f"{self.name}")
        code += "\n"
        return code

    def draw_bitmap_offset_wrapper(self, pos, line):
        """
        :param pos: position of bitmap
        :param line: line number of bitmap
        :return: asm code
        """
        if isinstance(pos, tuple):
            pos = pos[0] * SCREEN_WIDTH + pos[1]
        pos *= 4
        print(f"drawing {self.name} on {pos}")
        asm = get_source("draw_bitmap_offset_wrapper")
        asm = asm.replace("*arg0", str(pos))
        asm = asm.replace("*arg1", str(line * SCREEN_WIDTH * GRID_HEIGHT * 4))
        asm = asm.replace("*arg2", self.name)
        asm = asm.replace("*arg3", str(random.randint(0, 9999999)))
        return asm

    def draw_bitmap_with_speed(self, pos, line, speed):
        if speed < 0:
            speed = abs(speed)
            clock_per_action = BASE_RATE - speed
            code = self.draw_bitmap_offset_wrapper(pos, line)

            code = set_image_offset_wrapper_reverse(clock_per_action, code)
            asm = game_clock_splitter(clock_per_action, code, self.name + str(random.randint(0, 9999999)))
        else:
            clock_per_action = BASE_RATE - speed
            code = self.draw_bitmap_offset_wrapper(pos, line)

            code = set_image_offset_wrapper(clock_per_action, code)
            asm = game_clock_splitter(clock_per_action, code, self.name + str(random.randint(0, 9999999)))

        return asm


class BitmapGenerator:
    """a class to generate bitmap.
    """

    def __init__(self, path):
        self.path = path
        self.db = dict()

        bitmap_lists = self.generate_bitmaps()
        for bitmap in bitmap_lists:
            self.db[bitmap.get_name()] = bitmap

    @staticmethod
    def convert_to_hex(color) -> str:
        """convert color to hex.
        """
        color_hex = "0x" + \
                    "{0:02x}".format(color[0]) + \
                    "{0:02x}".format(color[1]) + \
                    "{0:02x}".format(color[2])
        return color_hex

    @staticmethod
    def get_image_pixel(image_path):
        """get image pixel.
        """
        image = Image.open(image_path)
        weight, height = image.size

        return weight, height, list(image.getdata())

    def generate_bitmap(self, image_name) -> BitMap:
        """generate a single bitmap.
        """
        nbitmap = BitMap()
        image_path = self.path + image_name
        width, height, pixel_list = self.get_image_pixel(image_path)
        nbitmap.width = width
        nbitmap.height = height

        file_name = image_name.split('.')[0].replace('(', '_').replace(')', '_')
        nbitmap.name = file_name

        nbitmap.data = ""
        for color in pixel_list:
            nbitmap.data += f"{self.convert_to_hex(color)} "

        return nbitmap

    def generate_bitmaps(self) -> list:
        """This function will generate data field for all drawings.
        """
        bitmap_list = []

        file_list = os.listdir(self.path)
        for file_name in file_list:
            if file_name.endswith('.png'):
                bitmap_list.append(self.generate_bitmap(file_name))

        return bitmap_list

    def get_bitmap(self, name) -> BitMap:
        return self.db[name]


class GameMap:
    """
    This class takes control of line 1.5 to line 14 (pixel 24 to pixel 240)
    """

    def __init__(self):
        self.time = 0

        # format: [objects], numbers in same screen, interval comes first?
        self.object_list = [
            (["Log_front_", "Log_middle_", "Log_end_"], 3, True),
            (["Turtle", "Turtle"], 4, True),
            (["Log_front_", "Log_middle_", "Log_middle_", "Log_end_"], 2, False),
            (["Log_front_", "Log_end_"], 3, True),
            (["Turtle", "Turtle", "Turtle"], 3, False),
            (["Land"], 16, False, 0),
            (["Car1"], 2, True,),
            (["Car2"], 1, True),
            (["Car3"], 3, True),
            (["Car4"], 3, True),
            (["Car5"], 3, False),
            (["Land"], 16, False)
        ]

    @staticmethod
    def draw_dest_line_1_2() -> str:
        asm = "# DRAW SECTION START \n"
        bitmap_generator = BitmapGenerator(IMAGE_PATH)
        dest_bitmap = bitmap_generator.get_bitmap("Dest")
        dest_middle_bitmap = bitmap_generator.get_bitmap("Dest_middle_")
        for i in range(0, 4):
            asm += dest_bitmap.generate_draw_bitmap_wrapper((GRID_HEIGHT + (GRID_HEIGHT // 2),
                                                             (dest_bitmap.width + dest_middle_bitmap.width) * i))
            asm += dest_middle_bitmap.generate_draw_bitmap_wrapper(
                (GRID_HEIGHT + (GRID_HEIGHT // 2),
                 (dest_bitmap.width + dest_middle_bitmap.width) * i + dest_bitmap.width))

        asm += dest_bitmap.generate_draw_bitmap_wrapper((GRID_HEIGHT + (GRID_HEIGHT // 2),
                                                         (dest_bitmap.width + dest_middle_bitmap.width) * 4))
        return asm

    def draw_line_3_14(self) -> str:
        asm = ""
        bitmap_generator = BitmapGenerator(IMAGE_PATH)
        black_screen = bitmap_generator.get_bitmap("Black_screen")

        for i in range(0, len(self.object_list)):
            line_num = i + 3
            data = self.object_list[i]

            bitmap_list = [bitmap_generator.get_bitmap(i) for i in data[0]]

            line_pos = GRID_WIDTH * line_num

            bitmap_width = sum(b.width for b in bitmap_list)
            bitmap_width_total = bitmap_width * data[1]

            # if data[2] is True:
            interval = (SCREEN_WIDTH - bitmap_width_total) // (data[1] + 1)
            for it in range(data[1]):
                front = interval + (bitmap_width + interval) * it

                for j in range(len(bitmap_list)):
                    bitmap = bitmap_list[j]
                    col_pos = front + (sum(k.width for k in bitmap_list[:j]))

                    if MOVE_SPEED[i][1] is True:
                        speed = MOVE_SPEED[i][0]
                        black_screen_pos = max(col_pos - 1, 0)
                        if any(line_num == i for i in [4, 7, 9, 11, 13]):
                            speed = -speed
                            black_screen_pos = front + bitmap_width

                        asm += black_screen.draw_bitmap_with_speed((line_pos, black_screen_pos),
                                                                   line_num, speed)
                        asm += bitmap.draw_bitmap_with_speed((line_pos, col_pos), line_num, speed)
                    else:
                        asm += bitmap.generate_draw_bitmap_wrapper((line_pos, col_pos))

        asm += "# DRAW SECTION END \n"
        return asm

    @staticmethod
    def draw_frog():
        asm = ""

        asm += get_source("draw_frog")
        return asm

    @staticmethod
    def draw_frog_win():
        return get_source("draw_frog_win")
