///scr_keyboard_controls
      
if (keyboard_check(vk_right)) {
    haxis = 1;
} else if (keyboard_check(vk_left)) {
    haxis = -1;
} else {
    haxis = 0;
}

if (keyboard_check(vk_up)) {
    vaxis = -1;
} else if (keyboard_check(vk_down)) {
    vaxis = 1;
} else {
    vaxis = 0;
}

magnitude = 1;

// Set the threshold
thresh = 1;

scr_move_direction(haxis, vaxis, magnitude, spd);

if (abs(haxis) >= abs(vaxis)) {
    if(haxis >= thresh) {
        dir = 'right';
    } else if (haxis <= -thresh) {
        dir = 'left';
    }
} else {
    if(vaxis >= thresh) {
        dir = 'down';
    } else if (vaxis <= -thresh) {
        dir = 'up';
    }
}
