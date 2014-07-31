///scr_enemy_stall_state
friction = 1;


if (instance_exists(obj_player) && speed <= 0) {
    state = "chase";
}
