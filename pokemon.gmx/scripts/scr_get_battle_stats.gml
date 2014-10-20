///scr_get_battle_stats(monster)
var mon = argument[0];
var bs = mon[? "bs"];
var gs = mon[? "gs"];
var ts = mon[? "ts"];
var lvl = mon[? "level"];
hp = scr_calc_hp(bs[? "health"], gs[? "health"], ts[? "health"], lvl);
att = scr_calc_stat(bs[? "attack"], gs[? "attack"], ts[? "attack"], lvl);
def = scr_calc_stat(bs[? "defense"], gs[? "defense"], ts[? "defense"], lvl);
spd = scr_calc_stat(bs[? "speed"], gs[? "speed"], ts[? "speed"], lvl);
if (x < room_width/2) {
    oo = obj_test_grass;
} else {
    oo = obj_test_fire;
}
