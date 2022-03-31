#include <stdio.h>

SCREEN_WIDTH = 256;
SCREEN_HEIGHT = 256;

void draw(int pos, int color) {
    return;
}

int main() {
    int width = 5, height = 6, p = 0x10008000;
    for(int i = 0; i < height; i++) {
        for(int j = 0; j < width; j++) {
            int color = 0xFF0000;
            draw(p + (j + (i * SCREEN_WIDTH)), color);
        }
    }
}