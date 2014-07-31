///scr_get_gp_input(gp)
var gp = argument0;
connected = gamepad_is_connected( gp );

// Make sure you are plugged in before you get input
if ( connected ) {
    xaxis = gamepad_axis_value( gp, gp_axislh );
    //yaxis = gamepad_axis_value( gp, gp_axislv );
    //magnitude = point_distance( 0, 0, xaxis, yaxis );
    abtn = gamepad_button_check_pressed( gp, gp_face1 );
    //bbtn = gamepad_button_check_pressed( gp, gp_face2 );
    //xbtn = gamepad_button_check_pressed( gp, gp_face3 );
    //ybtn = gamepad_button_check_pressed( gp, gp_face4 );
}
