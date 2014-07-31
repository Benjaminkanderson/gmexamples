///scr_view_follow()

// Check to make sure the players parent object exists
if(instance_exists(obj_player_parent)) {

    var near = instance_nearest(x,y,obj_player_parent);
    
    x=near.x;
    y=near.y;
}

// Move the view towards the view object
view_xview[0] += ((x-(view_wview[0]/2)-view_xview[0]))*.125;
view_yview[0] += ((y-(view_hview[0]/2)-view_yview[0]))*.125;
