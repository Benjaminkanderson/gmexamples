///scr_player_move
if (place_snapped(COL,ROW)) {
    // Get the input
    right = keyboard_check(vk_right);
    left = keyboard_check(vk_left);
    up = keyboard_check(vk_up);
    down = keyboard_check(vk_down);
}

if (right || left || up || down) {
    image_speed = .3;
}

if (right) {
    x+=2;
    sprite_index = spr_player_right;
} else if (left) {
    x-=2;
    sprite_index = spr_player_left;
} else if (up) {
    y-=2;
    sprite_index = spr_player_up;
} else if (down) {
    y+=2;
    sprite_index = spr_player_down;
} else {
    image_speed = 0;
    image_index = 0;
}
