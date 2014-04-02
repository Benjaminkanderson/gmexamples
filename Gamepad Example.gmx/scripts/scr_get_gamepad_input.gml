///scr_get_gamepad_input(device)
var device = argument0;

// Grab the view data
vx = view_xview[0];
vy = view_yview[0];
vw = view_wview[0];
vh = view_hview[0];

// Grab all the button data

l_haxis = gamepad_axis_value(device, gp_axislh);
l_vaxis = gamepad_axis_value(device, gp_axislv);
l_press = gamepad_button_check(device,gp_stickl);
l_magnitude = point_distance(0,0,l_haxis,l_vaxis);
if (l_magnitude > 1) l_magnitude = 1;

r_haxis = gamepad_axis_value(device, gp_axisrh);
r_vaxis = gamepad_axis_value(device, gp_axisrv);
r_press = gamepad_button_check(device,gp_stickr);
r_magnitude = point_distance(0,0,r_haxis,r_vaxis);
if (r_magnitude > 1) r_magnitude = 1;

a_btn = gamepad_button_check(device,gp_face3);
b_btn = gamepad_button_check(device,gp_face2);
x_btn = gamepad_button_check(device,gp_face1);
y_btn = gamepad_button_check(device,gp_face4);

r_btn = gamepad_button_check(device,gp_shoulderr);
l_btn = gamepad_button_check(device,gp_shoulderl);

r_trg = gamepad_button_check(device,gp_shoulderrb);
l_trg = gamepad_button_check(device,gp_shoulderlb);

start = gamepad_button_check(device,gp_start);
select = gamepad_button_check(device,gp_select);

up = gamepad_button_check(device,gp_padu);
down = gamepad_button_check(device,gp_padd);
left = gamepad_button_check(device,gp_padl);
right = gamepad_button_check(device,gp_padr);
