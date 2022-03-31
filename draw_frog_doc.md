0. add frog_up/down/left/right, frog_loc, frog_face_dir, KEYBOARD_FLAG, KEYBOARD_CONTENT, PLAYER1_KEYBOARD_UP, PLAYER1_KEYBOARD_DOWN, PLAYER1_KEYBOARD_LEFT, PLAYER1_KEYBOARD_RIGHT


1. check input (input part)
 - update frog_up/down/left/right flag

2. update frog location (logic part)
 - based on frog flag, update frog_loc and frog_face_dir
 - clear frog flag

3. draw frog (draw part)
 - draw frog based on frog_loc and frog_face_dir