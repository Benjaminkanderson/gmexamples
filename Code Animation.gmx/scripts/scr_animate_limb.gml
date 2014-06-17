///scr_animate_limb(animation_speed,animation_magnitude)
var animation_speed = argument0;
var animation_magnitude = argument1;

input += animation_speed;
output = sin(input)*animation_magnitude;

image_angle = start_angle+output;
