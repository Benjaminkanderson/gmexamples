///scr_roomgen(biome)


// Generate the background
var w = room_width;
var h = room_height;

var bk_temp = argument0;

switch (bk_temp) {
    case bk_arena: global.roomtype = 'grass'; break;
    case bk_firearena: global.roomtype = 'fire'; break;
}

var surf = surface_create(room_width, room_height);
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
draw_background(bk_temp, 0, 0);

var bkx = random(w-320);
var bky = random(h-209);
    
if (room_width > 360 && room_height > 280) {
    bkx = 0;
    bky = 0;
}
background_index[0] = background_create_from_surface(surf, bkx, bky, room_width, room_height, false, false);

surface_reset_target();
surface_free(surf);

// Swap the solids

if (instance_exists(obj_wall)) {
    switch (global.roomtype) {
    // Grass case
    case 'grass':
        with (obj_wall) {
            sprite_index = spr_wall;
        }
        with (obj_swall) {
            sprite_index = spr_swall;
        }
        with (obj_door) {
            sprite_index = spr_door;
        }
        with (obj_ewall) {
            sprite_index = spr_ewall;
        }
        break;
    
    // Fire case
    case 'fire':
        with (obj_wall) {
            sprite_index = spr_graywall;
        }
        with (obj_swall) {
            sprite_index = spr_grayswall;
        }
        with (obj_door) {
            sprite_index = spr_graydoor;
        }
        with (obj_ewall) {
            sprite_index = spr_grayewall;
        }
        break;
    }
}
