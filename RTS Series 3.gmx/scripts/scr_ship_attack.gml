///scr_ship_attack()

friction = .5;
if (distance_to_point(foe.x, foe.y) <= range) {
    if (alarm[0] == -1) {
        var laser = instance_create(x, y, obj_laser);
        laser.direction = image_angle;
        laser.image_angle = image_angle;
        alarm[0] = cooldown;
    }

    image_angle = point_direction(x, y, foe.x, foe.y);
} else {
    state = 'idle';
}
