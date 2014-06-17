///scr_player_move_state()


// Get input and move
var up_key = keyboard_check(ord('W'));
var right_key = keyboard_check(ord('D'));
var down_key = keyboard_check(ord('S'));
var left_key = keyboard_check(ord('A'));

if (up_key) {
    motion_add(90, 1);
}

if (right_key) {
    motion_add(0, 1);
}

if (down_key) {
    motion_add(270, 1);
}

if (left_key) {
    motion_add(180, 1);
}

if (!up_key && !right_key && !down_key && !left_key) {
    friction = 1;
} else {
    friction = 0;
}

if (speed > 4) speed = 4;

// Face the mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);
