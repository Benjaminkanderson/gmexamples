///scr_enemy_chase_state
if (instance_exists(obj_player)) {
    direction = point_direction(x, y, obj_player.x, obj_player.y);
    speed = 6;
} else {
    // Stop if the player is dead
    state = "stall";
}
