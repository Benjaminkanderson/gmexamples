///scr_enemy_attack_state

scr_dir_control(attack_image_speed,attack_right_image,attack_down_image,attack_up_image);

if (instance_exists(obj_player_parent)) {
    var near = instance_nearest(x,y,obj_player_parent);
    
    direction = point_direction(x,y,near.x,near.y);        
    if (instance_place(x+lengthdir_x(attspd, direction), y+lengthdir_y(attspd, direction), obj_player_parent)) {
        var player = instance_place(x+lengthdir_x(attspd, direction), y+lengthdir_y(attspd, direction), obj_player_parent);
        if (!player.shield) {
            global.hp[player.p] -= att;
            instance_create(0,0,obj_flash);
            instance_create(0,0,obj_rumble);
        } else {
            player.alarm[1] = 6;
        }
        slide_spd = 4;

        // Find the direction to slide
        if (dir == 'right') {
            slide_dir = 'left';
        } else if (dir == 'down') {
            slide_dir = 'up';
        } else if (dir == 'left') {
            slide_dir = 'right';
        } else if (dir == 'up') {
            slide_dir = 'down';
        }


        // Change into the slide object
        state = "slide";
        scr_dir_control(0,stand_right_image,stand_down_image,stand_up_image);
    }
}

scr_move_direction(haxis, vaxis, magnitude, attspd);
