///scr_player_move
if (place_snapped(COL,ROW)) {
    // Check for a battle
    if (place_meeting(x, y, obj_grass) && !checked) {
        scr_check_battle();
        checked = true;
    }

    // Get the input
    right = keyboard_check(vk_right) && !place_meeting(x+COL, y, obj_solid);
    left = keyboard_check(vk_left) && !place_meeting(x-COL, y, obj_solid);
    up = keyboard_check(vk_up) && !place_meeting(x, y-ROW, obj_solid);
    down = keyboard_check(vk_down) && !place_meeting(x, y+ROW, obj_solid);
}

if (right || left || up || down) {
    image_speed = .3;
    checked = false
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
