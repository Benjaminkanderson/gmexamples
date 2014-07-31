///scr_dir_control(animation_speed,right_image,down_image,up_image);

var animation_speed = argument0;
var right_image = argument1;
var down_image = argument2;
var up_image = argument3;

// Change sprites based on direction
image_speed = animation_speed;
if (dir=='right') {
    sprite_index = right_image;
} else if (dir=='left') {
    sprite_index = right_image;
    image_xscale = -1;
} else if (dir=='down') {
    sprite_index = down_image;
} else if (dir=='up') {
    sprite_index = up_image;
}

