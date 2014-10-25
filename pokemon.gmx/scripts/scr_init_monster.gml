///scr_init_monster(id, level)
monster_id = argument0;
level = argument1;
image_index = monster_id-1;
image_speed = 0;

// Get a reference to the model
var m = instance_find(obj_model, 0);

// Create the stats by using the base stats
stats[HP] = scr_calc_hp(m.bs[monster_id, HP], 31, 0, level);
for (var i=1; i<4; i++) {
    stats[i] = scr_calc_stat(m.bs[monster_id, i], 31, 0, level); 
}
stats[TYPE] = m.bs[monster_id, TYPE];
stats[NAME] = m.bs[monster_id, NAME];
