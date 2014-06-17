///scr_part_laser_init()

global.pt_laser = part_type_create();
var pt = global.pt_laser;

part_type_shape(pt, pt_shape_explosion);
part_type_size(pt, .05, .075, 0, 0);
part_type_color3(pt, c_white, c_lime, c_green);
part_type_blend(pt, true);
part_type_life(pt, 3, 10);
part_type_alpha2(pt, 1, .5);
