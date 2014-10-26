///scr_take_damage()
var o = obj_my_monster
var movepower = obj_model.moves[o.move_id, ATT_POWER];

if (obj_model.moves[o.move_id, ATT_TYPE] == obj_model.bs[o.monster_id, TYPE]) {
    var stab = 1.5;
} else {
    var stab = 1;
}

var weakres = obj_model.tc[obj_model.moves[o.move_id, ATT_TYPE], obj_model.bs[monster_id, TYPE]];
var damage = floor((((2*level+10)/250)*(o.stats[ATTACK]/stats[DEFENSE])*movepower+2)*stab*weakres*random_range(.85,1));
hp -= damage;
