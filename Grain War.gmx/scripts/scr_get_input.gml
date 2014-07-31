///scr_get_input(device,threshold)

//Initialize the arguments
var device = argument0;
thresh = argument1;

// Set some variables
haxis = gamepad_axis_value(0, gp_axislh);
vaxis = gamepad_axis_value(0, gp_axislv);
magnitude = point_distance(0,0,haxis,vaxis);
dir = point_direction(0,0,haxis,vaxis);

