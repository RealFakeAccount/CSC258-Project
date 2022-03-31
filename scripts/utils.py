from scripts.globals import *

"""
register t8 and t9 is reserved for loop function
"""


def get_source(string: str) -> str:
    """get source code.
    :rtype: object
    """

    def get_source_original(name: str) -> list:
        text_list = []

        with open(SOURCE_FILE_PATH, 'r') as f:
            while True:
                line = f.readline()
                if line.find(f'### {name}') != -1:
                    break

            while True:
                line = f.readline()
                if line.find('### ENDL') != -1:
                    break
                text_list.append(line)

        return text_list

    res = get_source_original(string)

    for i in range(len(res)):
        s = res[i]
        if s.find("*REQ_") != -1:
            res[i] = ''.join(get_source(s[s.find("*REQ_") + 5:].strip())) + '\n'

    return ''.join(res)


def generate_draw_bitmap() -> str:
    """generate draw_bitmap.
    """
    asm = ""
    asm += get_source("draw_bitmap")
    asm += "\n"
    return asm


def main_wrapper(code: str) -> str:
    """generate main_wrapper.
    """
    asm = get_source("main")
    asm = asm.replace("*arg0", code)
    asm = asm + "\n"
    return asm


def loop_wrapper(loop_name: str, times: int, func: str) -> str:
    """
    generate loop wrapper.
    :param loop_name:
    :param times:
    :param func:
    :return: the asm code
    """
    asm = ""
    asm += get_source("while_loop_wrapper")
    asm = asm.replace("*arg0", loop_name)
    asm = asm.replace("*arg1", str(times))
    asm = asm.replace("*arg2", func)

    return asm


def time_loop_wrapper(code: str):
    return get_source("game_clock_loop_wrapper").replace("*arg0", code)


def set_image_offset_wrapper(rate: int, code: str):
    asm = get_source("set_image_offset_wrapper")
    asm = asm.replace("*arg0", str(rate))
    asm = asm.replace("*arg1", code)
    return asm

def set_image_offset_wrapper_reverse(rate: int, code: str):
    asm = get_source("set_image_offset_wrapper_reverse")
    asm = asm.replace("*arg0", str(rate))
    asm = asm.replace("*arg1", code)
    return asm


def game_clock_splitter(rate: int, code: str, name: str):
    asm = get_source("game_clock_splitter")
    asm = asm.replace("*arg0", str(rate))
    asm = asm.replace("*arg1", code)
    asm = asm.replace("*arg2", name)
    return asm


def generate_draw_image_wrapper_v2():
    return get_source("draw_image_wrapper_v2")


def generate_get_current_line():
    return get_source("get_current_line")

def generate_check_frog_died_func():
    return  get_source("check_frog_died_func")
