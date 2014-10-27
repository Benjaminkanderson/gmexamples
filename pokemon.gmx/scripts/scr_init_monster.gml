///scr_init_monster(id, level)
monster_id = argument[0];
level = argument[1];
image_index = monster_id;
image_speed = 0;

// Create the stats by using the base stats
stats[HP] = scr_calc_hp(MODEL.bs[monster_id, HP], 31, 0, level);
for (var i=1; i<4; i++) {
    stats[i] = scr_calc_stat(MODEL.bs[monster_id, i], 31, 0, level); 
}
stats[TYPE] = MODEL.bs[monster_id, TYPE];
stats[NAME] = MODEL.bs[monster_id, NAME];
