///scr_ship_move

// Make sure to set the friction to zero
friction = 0;

// Move towards the target
if (instance_exists(target)) {
    motion_add(point_direction(x, y, target.x, target.y), acc);
    
    // Delete the target if we have reached it.
    if (position_meeting(x, y, target)) {
        with (target) instance_destroy();
        state = 'idle';
    }
}

// Make sure we don't go faster than the max speed.
if (speed >= spd) speed = spd;
