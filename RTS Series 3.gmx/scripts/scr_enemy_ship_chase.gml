///scr_ship_chase

// Set the friction to 0
friction = 0;

// Move towards the target if it exists
if (instance_exists(foe)) {
    // Attack the target when we reach it
    if (distance_to_point(foe.x, foe.y) <= range) {
        state = 'attack';
    } else {
        motion_add(point_direction(x, y, foe.x, foe.y), acc);
    }
}

// Don't go faster than the max speed
if (speed > spd) speed = spd;


