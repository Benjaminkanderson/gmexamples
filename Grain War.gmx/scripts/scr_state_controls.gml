///scr_state_controls

// Check for the attack button
if (keyboard_check_pressed(ord('C')) || gamepad_button_check_pressed(0,gp_face3)) {
    image_index = 0;
    state = 'attack';
    scr_dir_control(.4, spr_attack_right, spr_attack_down, spr_attack_up);
}

// Check for shield button
if (keyboard_check_pressed(ord('Z')) || gamepad_button_check_pressed(0,gp_face2)) {
    if (alarm[0] <= 0) {
        shield = true;
        alarm[0] = 25;
    }
}

// Check for special button
if (keyboard_check_pressed(ord('V')) || gamepad_button_check_pressed(0,gp_face4)) {
    if (artifact_obj != -1) {
        state = 'artifact';
        
        //This should be temporary
        scr_dir_control(.4, spr_stand_right, spr_stand_down, spr_stand_up);
        
        scr_artifact(artifact_type);
    }
}

// Check for the dodge button
if (keyboard_check_pressed(ord('X')) || gamepad_button_check_pressed(0,gp_face1) && !keyboard_check_pressed(ord('C')) && !gamepad_button_check_pressed(0,gp_face3)) {
    image_index = 0;
    state = 'dodge';
    magnitude = 1;
    shield = false;
    scr_dir_control(.4,spr_dodge_right,spr_dodge_down,spr_dodge_up);
    if (haxis < thresh && vaxis < thresh) {
        if (dir == 'right') {
            haxis = 1;
        } else if (dir == 'left') {
            haxis = -1;
        } else if (dir == 'up') {
            vaxis = -1;
        } else if (dir == 'down') {
            vaxis = 1;
        }
    }
}
