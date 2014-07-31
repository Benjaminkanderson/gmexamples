///scr_player_move

var r = keyboard_check(vk_right) && !place_meeting(x+4, y, obj_solid);
var l = keyboard_check(vk_left) && !place_meeting(x-4, y, obj_solid);
var u = keyboard_check(vk_up) && !place_meeting(x, y-4, obj_solid);
var d = keyboard_check(vk_down) && !place_meeting(x, y+4, obj_solid);


if (r) x+=4;
if (l) x-=4;
if (u) y-=4;
if (d) y+=4;
