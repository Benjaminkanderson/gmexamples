///scr_player_move_state()
var tkey = keyboard_check_pressed(ord('Z'))
var rkey = keyboard_check(vk_right) || keyboard_check(ord('D'));
var lkey = keyboard_check(vk_left) || keyboard_check(ord('A'));
var skey = keyboard_check_pressed(ord('C'))
var jkey = keyboard_check(vk_up) || keyboard_check(ord('W'));

// Moving Right
if (rkey) {
    hspd = spd;
    // Make sure you are on the ground
    if (place_meeting(x, y+1, obj_solid)) {
        sprite_index = spr_player_run;
        image_speed = .2;
    }
    image_xscale = 1;
}
    
// Moving Left
if (lkey) {
    hspd = -spd;
    // Make sure you are on the ground
    if (place_meeting(x, y+1, obj_solid)) {
        sprite_index = spr_player_run;
        image_speed = .2;
    }
    image_xscale = -1;
}
    
// Check for not moving
if ((!rkey && !lkey) || (rkey && lkey)) {
    hspd = 0;
    // Make sure you are on the ground
    if (place_meeting(x, y+1, obj_solid)) {
        sprite_index = spr_player;
        image_speed = .1;
    }
}

//Jump image
if(jkey) {
    if(vspd <= 0) {
        image_index = 0;
    } else {
        image_index = 1;
    }
}

//Teleporting/Shooting

// By HeartBeast: I changed these check to !place_meeting because it is better than place_free
// ------------------------------------------------------------------------------------------- //

//TP Right
if (tkey && rkey && !place_meeting(x+64,y, obj_solid) && !place_meeting(x+32,y, obj_solid)) {
    // By HeartBeast: I changed this to x+=64 it commonly used instead of x=x+64
    x+=64;
}

//TP Left
if (tkey && lkey && !place_meeting(x-64,y, obj_solid) && !place_meeting(x-32,y, obj_solid)) {
    x-=64;
}

//Shoot
    
if(!jkey && skey && place_meeting(x, y+1, obj_solid)) {
    image_speed = .5;
    // This should use a state system
    state = 'fire';
    sprite_index = spr_player_shoot;
}
