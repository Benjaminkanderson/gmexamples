///scr_direct_artifact();

if (sprite_index == spr_run_up || sprite_index == spr_stand_up) {
    var s = instance_create(x, y-1, artifact_obj);
} else {
    var s = instance_create(x, y+1, artifact_obj);
}

var d = point_direction(0, 0, haxis, vaxis);

s.direction = d;

state = 'movement';
