///scr_player_attack_state

// I also want to try and us collision_rectangle instead of creating a new object.... or maybe combined with the new object.
// Check if we are at an attacking image and then create the attack object relative to the direction we are facing
if (image_index >= 3 && attacked == false) {
    if (dir == "down") {
        a = instance_create(x,y,obj_damage);
        a.sprite_index = spr_attack_down;
    } else if (dir == "up") {
        a = instance_create(x,y,obj_damage);
        a.sprite_index = spr_attack_up;
    } else {
        a = instance_create(x,y,obj_damage);
        a.sprite_index = spr_attack_right;
    }
    a.image_xscale = image_xscale;
    attacked = true;
}
