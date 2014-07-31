/// scr_player_movement_state

// Run either the analog controls or the keyboard controls depending on if there is an xbox controller
if (global.gamepad) {
    scr_analog_controls();
} else {
    scr_keyboard_controls();
}

// Animate the character depending on input
scr_animate(.5,spr_run_right,spr_run_down,spr_run_up,.1,spr_stand_right,spr_stand_down,spr_stand_up);

// !Attacking and dodging have to be last so that the other scripts don't execute after changing objects
// Run the attack control script
scr_state_controls();
