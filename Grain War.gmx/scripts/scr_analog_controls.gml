///scr_analog_controls

// Set some variables
haxis = gamepad_axis_value(0, gp_axislh);
vaxis = gamepad_axis_value(0, gp_axislv);
magnitude = point_distance(0,0,haxis,vaxis);
thresh = .25;

// The code grabs the input from the gamepad and moves the character if it can
scr_move_direction(haxis, vaxis, magnitude, spd);

// This code controls the direction of the object
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

