///scr_get_exprgain(monster_id)
var monster_id = argument[0];
var basegain = obj_model.bs[monster_id, LEVEL];
var level = obj_enemy_monster.level;
var trainer = 1;
var wild = 1;

var exprgain = ((basegain*level)*trainer*wild)/7;
return exprgain;
