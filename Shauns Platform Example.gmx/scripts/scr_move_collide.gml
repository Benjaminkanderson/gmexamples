///scr_move_collide(hspd,vspd,collision_obj)
var hspd = argument0;
var vspd = argument1;
var collision_obj = argument2;

// Horizontal collisions
if (place_meeting(x+hspd, y, collision_obj)) {
    while (!place_meeting(x+sign(hspd), y, collision_obj)) {
        x += sign(hspd);
    }
    hspd = 0;
}

// Move the object horizontally
// This MUST be before any vertical collisions and movement
x += hspd;

// Vertical collisions
if (place_meeting(x, y+vspd, collision_obj)) {
    while (!place_meeting(x, y+sign(vspd), collision_obj)) {
        y += sign(vspd);
    }
    vspd = 0;
}

// Move the vertically
y += vspd;
