///scr_enemy_slide_state

mov = false;
// Check our slide direction and move accordingly
if (slide_dir == 'right') {
    if (!place_meeting(x+slide_spd,y,obj_solid)) {
        x+=slide_spd;
    }
} else if (slide_dir == 'left') {
    if (!place_meeting(x-slide_spd,y,obj_solid)) {
        x-=slide_spd;
    }
} else if (slide_dir == 'down') {
    if (!place_meeting(x,y+slide_spd,obj_solid)) {
        y+=slide_spd;
    }
} else if (slide_dir == 'up') {
    if (!place_meeting(x,y-slide_spd,obj_solid)) {
        y-=slide_spd;
    }
}

// Subtract from the speed to simulate friction
slide_spd -= .5;


// Set our speed to 0 if we have gone below zero
if (slide_spd <= 0) {
    state = 'stall';
    timeline_clear(state_tl);
    timeline_moment_add_script(state_tl, 30, scr_set_state_wander);
    scr_timeline_start();
    slide_spd = 0;
}

