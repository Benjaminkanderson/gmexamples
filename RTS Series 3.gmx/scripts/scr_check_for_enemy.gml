///scr_check_for_enemy()

if (instance_exists(foe)) {
    if (distance_to_point(foe.x, foe.y) <= range) {
        state = 'attack';
    }
}
