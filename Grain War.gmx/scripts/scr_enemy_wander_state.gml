{
    // Check to see if we can see the player
    if (distance_to_point(near.x,near.y) <= sight) {
        state = 'chase';
    }
    
    // Tell the object what sprites to use for running and standing
    scr_animate(run_image_speed,run_right_image,run_down_image,run_up_image,stand_image_speed,stand_right_image,stand_down_image,stand_up_image);
    
    if (alarm[1] <= 0) {
        alarm[1] = 15+random(75);
        haxis = choose(-50+random(100),0);
        if (haxis == 0) {
            vaxis = choose(-50+random(100),0,0,0,0,0);
        } else {
            vaxis = choose(-50+random(100),0);
        }
    }
    scr_enemy_move();
}
