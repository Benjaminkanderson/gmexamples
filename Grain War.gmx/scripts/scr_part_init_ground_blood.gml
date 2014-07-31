///scr_part_init_ground_blood

// Initialize the global ground blood particle
global.pt_ground_blood = part_type_create();
var pt = global.pt_ground_blood;

// Set the settings for the ground blood particles
part_type_shape(pt,pt_shape_square);
part_type_size(pt,.04,.07,0,0);
part_type_color1(pt,c_maroon);
part_type_speed(pt,0,0,0,0);
part_type_alpha2(pt,1,0);
part_type_life(pt,30,60);

