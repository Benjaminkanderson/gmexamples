///scr_get_item_value(item, prop)
var item = object_get_name(argument0);
var prop = argument1;

var item_obj = ds_map_find_value(items, item);
return ds_map_find_value(item_obj, prop);
