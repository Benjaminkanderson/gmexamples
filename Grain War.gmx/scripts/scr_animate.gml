///scr_animate(run_image_speed,run_right_image,run_down_image,run_up_image,stand_image_speed,stand_right_image,stand_down_image,stand_up_image)

var run_image_speed = argument0*magnitude;
var run_right_image = argument1;
var run_down_image = argument2;
var run_up_image = argument3;

var stand_image_speed = argument4;
var stand_right_image = argument5;
var stand_down_image = argument6;
var stand_up_image = argument7;

// Animate the player based on whether or not they are moving and the direction they are facing
if (mov) {
    image_xscale = 1;
    image_speed = run_image_speed;
    
    if (dir='right') {
        sprite_index = run_right_image;
    } else if (dir='left') {
        sprite_index = run_right_image;
        image_xscale = -1;
    } else if (dir='down') {
        sprite_index = run_down_image;
    } else if (dir='up') {
        sprite_index = run_up_image;
    }
} else {
    image_xscale = 1;
    image_speed = stand_image_speed;
    
    if (dir='right') {
        sprite_index = stand_right_image;
    } else if (dir='left') {
        sprite_index = stand_right_image;
        image_xscale = -1;
    } else if (dir='down') {
        sprite_index = stand_down_image;
    } else if (dir='up') {
        sprite_index = stand_up_image;
    }
}

