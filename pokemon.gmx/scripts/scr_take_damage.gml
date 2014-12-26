///scr_take_damage()
var o = obj_my_monster
var movepower = MODEL.moves[o.move_id, ATT_POWER];

if (MODEL.moves[o.move_id, ATT_TYPE] == MODEL.bs[o.monster_id, TYPE]) {
    var stab = 1.5;
} else {
    var stab = 1;
}

var weakres = MODEL.tc[MODEL.moves[o.move_id, ATT_TYPE], MODEL.bs[monster_id, TYPE]];
var damage = floor((((2*level+10)/250)*(o.stats[ATTACK]/stats[DEFENSE])*movepower+2)*stab*weakres*random_range(.85,1));
hp -= damage;
