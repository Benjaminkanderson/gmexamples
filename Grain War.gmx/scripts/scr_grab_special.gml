///scr_grab_special()

var near = argument0;

// Grab the new special
special_scr = near.special_scr;
with (near) instance_destroy();

// Toss the old special
instance_create(x, y+8, special_obj);
