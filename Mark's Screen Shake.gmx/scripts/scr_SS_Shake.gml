/// scr_SS_Shake(type, view);

// This script creates the shaking effect by moving the view around based on the type 
// of shaking chosen to use.

// THIS SCRIPT CANNOT BE CALLED SEPERATELY AND IS PART OF THE SCREEN SHAKE OBJECT

var ss_vv = argument1;

// Check to see if we have a view enabled
if ss_view = ss_view_room
    {
    ss_vv = 0;
    if (!view_visible[0] || !view_enabled)
        {
        show_debug_message("View Enabled!");
        view_enabled = true;
        view_visible[0] = true;
        view_xview[0] = 0;
        view_yview[0] = 0;
        view_wview[0] = room_width;
        view_hview[0] = room_height;
        }        
    }

// Shake the view!
switch(argument0)
    {
    case ss_type_radial:
        view_angle[ss_vv] = ss_base_a[ss_vv] + ss_shake - random(ss_shake * 2);
        break;
    case ss_type_horizontal:
        view_xview[ss_vv] = ss_base_x[ss_vv] + ss_shake - random(ss_shake * 2);
        break;
    case ss_type_vertical:
        view_yview[ss_vv] = ss_base_y[ss_vv] + ss_shake - random(ss_shake * 2);
        break;
    case ss_type_positional:
        view_xview[ss_vv] = ss_base_x[ss_vv] + ss_shake - random(ss_shake * 2);
        view_yview[ss_vv] = ss_base_y[ss_vv] + ss_shake - random(ss_shake * 2);
        break;
    case ss_type_all:
        view_xview[ss_vv] = ss_base_x[ss_vv] + ss_shake - random(ss_shake * 2);
        view_yview[ss_vv] = ss_base_y[ss_vv] + ss_shake - random(ss_shake * 2);
        view_angle[ss_vv] = ss_base_a[ss_vv] + ss_shake - random(ss_shake * 2);
        break;
    }