///scr_part_init_blood

// Initialize our global blood particle
global.pt_specialfire = part_type_create();
var pt = global.pt_specialfire;

// Set the settings for the blood particle
part_type_shape(pt,pt_shape_square);
part_type_size(pt,.04,.07,-.005,0);
part_type_blend(pt, true);
part_type_alpha1(pt, .5);
part_type_color3(pt,c_red, c_orange, c_yellow);
part_type_speed(pt,.01,.2,-.1,0);
part_type_direction(pt,45,135,0,0);
part_type_life(pt,4,6);

