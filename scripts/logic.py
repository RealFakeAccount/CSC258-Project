from scripts.utils import *


def generate_check_keyboard_input():
    return get_source("check_keyboard_input")


def generate_update_frog_location():
    return get_source("update_frog_location")


def generate_update_frog_face_dir():
    return get_source("update_frog_face_dir")


def generate_clear_frog_flag():
    return get_source("clear_frog_flag")


def generate_frog_died_event():
    return get_source("frog_died_event")


def generate_check_frog_win():
    return get_source("check_frog_win")


def generate_check_frog_win():
    return get_source("check_frog_win")

def generate_check_end_game():
    return get_source("check_end_game")

def generate_score_calc():
    return get_source("score_calc")

class GameObject:
    def __init__(self, pos=(0, 0), bitmap=None, deadly=False):
        self.pos = pos
        self.bitmap = bitmap
        self.deadly = deadly


class GameState:
    def __init__(self):
        self.time = 0
        self.score = 0
        self.remain_life = 0
        self.time_left = 0
        self.frog_location = 0
