/// scr_SS_Create(magnitude, speed_in, speed_out, delay, type, fade, view);

// This is the only script you need to use. This will create the screen shake effect with the parameters you give.
// The arguments are as follows:

/*

magnitude   - The maximum amount of shake to use.

speed_in    - The fade-in speed for the effect (if you have enabled fading in... see the "type" argument)

speed_out   - The fade-out time for the effect (if you have enabled fading out... see the "type" argument)

delay       - The delay (in steps) between the end of fade-in and the start of fade-out. If you don't have fading in then the 
            delay will be applied at the start before fading out (so the screen will shake at max magnitude until the delay 
            ends then fade out), and if you don't have fading out then the effect will end after the delay.
            
type        - There are various types of screenshake available to you, and they are accessed using the following constants:

            ss_type_radial      - The view will shake around it's center point
            ss_type_positional  - The view will shake up/down/left/right randomly
            ss_type_horizontal  - The view will shake along the horizontal axis only
            ss_type_vertical    - The view will shake along the vertical axis only
            ss_type_all         - The view will shake using both positional and rotational values
            
fade        - The type of fading for the effect. Can be any of the following constants:

            ss_fade_in          - Shake will fade in to maximum magnitude then continue for the specified delay before stopping
            ss_fade_out         - Shake will start at maximum magnitude, then fade out after the specified delay 
            ss_fade_in_out      - Shake fades in to maximum magnitude, then maintains for the delay value, then fades out again
            
view        - The view that the effect should be applied to. Should be a view number [0 - 7] or one of the following constants:

            ss_view_room        - no views active so shake whole room (view 0 will be used, but deactivated again later)
            ss_view_all         - all active views (scripts will check all views and shake those that are active)
*/


// Check to see if instance of screen shake already exists
if !instance_exists(obj_ScreenShake)
{
// Create new shake object
var inst = instance_create(0, 0, obj_ScreenShake);
}
else
{
// Check to see if the current shaker instance matches the given view
var inst = noone;
with (obj_ScreenShake)
    {
    if ss_view == argument6
        {
        inst = id;
        }
    }
// A different view has been selected and no shaker instance exists so create one
if inst == noone inst = instance_create(0, 0, obj_ScreenShake);
}

// Set shaker instance variables
with(inst)
{
ss_magnitude = argument0;
ss_speed_in = argument1;
ss_speed_out = argument2;
ss_delay = argument3;
ss_type = argument4;
ss_fade = argument5;
ss_view = argument6;
if ss_speed_in == 0
    {
    ss_speed_in = ss_magnitude;
    }
if ss_speed_out == 0
    {
    ss_speed_out = ss_magnitude;
    }
// If type is fade-out, then fix alarm issues and set shake to maximum magnitude
if ss_fade == ss_fade_out
    {
    ss_shake = ss_magnitude;
    if ss_delay <= 0
        {
        alarm[0] = -1;
        ss_go = false;
        }
    else
        {
        ss_go = true;
        alarm[0] = ss_delay;
        }
    }
else
    {
    ss_go = true;
    alarm[0] = -1;
    }
}