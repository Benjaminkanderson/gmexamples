///scr_enemy_move     
     
// The code grabs the input from the gamepad and moves the character if it can
scr_move_direction(haxis,vaxis,magnitude,spd);

// Control the direction
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
