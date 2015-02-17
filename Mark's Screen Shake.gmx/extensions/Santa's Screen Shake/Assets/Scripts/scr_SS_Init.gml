/// scr_SS_Init();

// Initialise all the vars that out screenshake object requires to default values

ss_magnitude = 0;               // Maximum magnitude of shake
ss_shake = 0;                   // This is the current shake magnitude
ss_speed_in = 0.001;            // Fade in amount (per step)
ss_speed_out = 0.002;           // Fade out amount (per step)
ss_delay = 0;                   // Delay before fading out (in steps)
ss_go = true;                   // Screen shake controller variable

// Set the type of screen shake. Can be either 
//      ss_type_radial      - The view will shake around it's center point
//      ss_type_positional  - The view will shake up/down/left/right randomly
//      ss_type_horizontal  - The view will shake along the horizontal axis only
//      ss_type_vertical    - The view will shake along the vertical axis only
//      ss_type_all         - The view will shake using both positional and rotational values

ss_type = ss_type_radial;

// Set the type of fade. Can be either 
//      ss_fade_in          - Shake will fade in to maximum magnitude then continue for the specified delay before stopping
//      ss_fade_out         - Shake will start at maximum magnitude, then fade out after the specified delay 
//      ss_fade_in_out      - Shake fades in to maximum magnitude, then maintains for the delay value, then fades out again 

ss_fade = ss_fade_in_out;       

// Set the view to use for the shake. Can be either:
//      ss_view_room        - no views active so shake whole room (view 0 will be used, but deactivated again later)
//      ss_view_all         - all active views (scripts will check all views and shake those that are active)
//      0 - 7               - Only the given view (shake only one view)
 
ss_view = ss_view_room;  

// Create an array of values for the views
for (var i = 0; i < 8; i++;)
{
ss_base_a[i] = view_angle[i];
ss_base_x[i] = view_xview[i];
ss_base_y[i] = view_yview[i];
}

// Prepare the delay alarm
alarm[0] = -1;

show_debug_message("Screenshake started!");
     