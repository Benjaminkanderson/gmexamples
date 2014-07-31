///scr_move_direction(haxis, vaxis, magnitude, spd)

// Make sure that these variables are local.
var haxis = argument0;
var vaxis = argument1;
var magnitude = argument2;
if (magnitude > 1) magnitude = 1;

// Move speed
var spd = argument3*magnitude;
var yspd = spd * .9*magnitude;

// Move the player where you can
if (abs(haxis) >= thresh || abs(vaxis) >= thresh) {
    direction = point_direction(0, 0, haxis, vaxis);
    if (!place_meeting(x+lengthdir_x(spd, direction), y+lengthdir_y(spd, direction), obj_solid)) {
        if (abs(haxis) >= abs(vaxis)) {
            x += lengthdir_x(spd, direction);
            y += lengthdir_y(spd, direction);
        } else {
            x += lengthdir_x(yspd, direction);
            y += lengthdir_y(yspd, direction);
        }
        mov = true;
    } else if (!place_meeting(x+lengthdir_x(spd, direction),y,obj_solid)) {
        x += lengthdir_x(spd,direction);
        mov = true;
    } else if (!place_meeting(x,y+lengthdir_y(yspd, direction),obj_solid)) {
        y += lengthdir_y(yspd,direction);
        mov = true;
    } else {
        mov = false;
    }
} else {
    mov = false;
}

