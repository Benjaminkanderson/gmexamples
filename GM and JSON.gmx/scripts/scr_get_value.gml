///scr_get_value(map, item, prop)
var map = argument0;
var item = argument1;
var prop = argument2;

// Grab the item object (in a ds_map format)
var item_obj = ds_map_find_value(map, item);

// Search the item for the value
var val = ds_map_find_value(item_obj, prop);

// Return the value
return val;
