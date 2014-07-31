///scr_enemy_chase_state
if (instance_exists(obj_player)) {
    // Move towards the player
    motion_add(point_direction(x, y, obj_player.x, obj_player.y), 1);
    if (speed > 2) speed = 2;
    friction = 0;
    
    // Attack the player if you are close enough
    if (distance_to_point(obj_player.x, obj_player.y) < 32) {
        state = "attack";
    }
} else {
    // Stop if the player is dead
    state = "stall";
}
