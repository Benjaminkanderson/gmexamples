/// scr_SS_Step(type, view);

// This is where the shaking will be done. All shaking is done via VIEWS, and 
// if you have selected to shake the room, then VIEW[0] will be enabled and 
// activated for use, then it'll be deactiavated again.

// THIS SCRIPT CANNOT BE CALLED SEPERATELY AND IS PART OF THE SCREEN SHAKE OBJECT

// Check view type
if ss_view == ss_view_all
{
// Loop through all active views
for (var i = 0; i < 8; i++;)
    {
    if view_visible[i] scr_SS_Shake(ss_type, i);
    }
}
else
{
// Single view or room only
scr_SS_Shake(ss_type, ss_view);
}

// Check fade in
if ss_go
{
// Increase shake
if ss_shake < ss_magnitude
    {
    ss_shake += ss_speed_in;
    }
else
    {
    // Should we maintain the shaking?
    if alarm[0] == -1
        {
        alarm[0] = max(1, ss_delay);
        }
    }
}
else
{
// Decrease shake (if appropriate type)
if ss_fade != ss_fade_in
    {
    if ss_shake > 0
        {
        ss_shake -= ss_speed_out;
        }
    else instance_destroy();
    }
else instance_destroy();
}