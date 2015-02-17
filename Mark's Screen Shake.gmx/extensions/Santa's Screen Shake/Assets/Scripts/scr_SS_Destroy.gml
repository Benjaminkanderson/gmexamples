/// scr_SS_Destroy();

// Destroy the shaker instance

switch (ss_view)
{
// If more than one view is visible...
case ss_view_all:
    for (var i = 0; i < 8; i++;)
        {
        if view_visible[i]
            {
            view_angle[i] = ss_base_a[i];
            view_xview[i] = ss_base_x[i];
            view_yview[i] = ss_base_y[i];
            }
        }
    break;
// Room, so no views active, meaing we deactivate the view we activated for the shaker instance
case ss_view_room:
    if view_visible[0]
        {
        view_angle[0] = ss_base_a[0];
        view_xview[0] = ss_base_x[0];
        view_yview[0] = ss_base_y[0];
        view_visible[0] = false;
        view_enabled = false;
        }
    break;
// Default value is that a view is visible and that we need to reset that view only
default:
    view_angle[ss_view] = ss_base_a[ss_view];
    view_xview[ss_view] = ss_base_x[ss_view];
    view_yview[ss_view] = ss_base_y[ss_view];
    break;
}
show_debug_message("Screenshake destroyed!");
