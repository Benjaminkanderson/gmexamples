///scr_part_init_blood

// Initialize our global blood particle
global.pt_blood = part_type_create();
var pt = global.pt_blood;

// Set the settings for the blood particle
part_type_shape(pt,pt_shape_square);
part_type_size(pt,.025,.05,0,0);
part_type_color2(pt,c_red,c_maroon);
part_type_speed(pt,.1,1.8,-.1,0);
part_type_direction(pt,45,135,0,0);
part_type_gravity(pt,.2,270);
part_type_life(pt,16,18);
part_type_death(pt,1,global.pt_ground_blood);

