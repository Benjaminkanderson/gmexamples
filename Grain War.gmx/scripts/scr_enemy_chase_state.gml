{
    if (instance_exists(obj_player_parent)) {
        near = instance_nearest(x,y,obj_player_parent);
        haxis = near.x-x;
        vaxis = near.y-y;
    }
    
    // Move the enemy
    scr_enemy_move();
    
    // Tell the object what sprites to use for running and standing
    scr_animate(run_image_speed,run_right_image,run_down_image,run_up_image,stand_image_speed,stand_right_image,stand_down_image,stand_up_image);
    
    if (distance_to_point(near.x,near.y) <= 24 && state != 'attack') {
        state = 'stall';
        timeline_clear(state_tl);
        
        timeline_moment_add_script(state_tl, 82, scr_set_state_wander);
        timeline_moment_add_script(state_tl, 22, scr_set_state_stall);
        timeline_moment_add_script(state_tl, 8, scr_set_state_attack);
        scr_timeline_start();
    }
}
