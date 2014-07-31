///scr_create_room_list(num)
var num = argument0;
var rooms = ds_list_create();

for(var i=0; i<num; i++) {
    ds_list_add(rooms, scr_get_random_room());
}

return rooms;
