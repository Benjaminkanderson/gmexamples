///scr_player_fire_state()


if (bullets > 3 && image_index > 5) {
    //Create Bullet
    b=instance_create(x,y-5,obj_bullet);
    bullets -= 1;
    b.speed = 15;
    
    //Check Direction
    if (image_xscale = 1) {
        b.direction = 0;
    }else{
        b.direction = 180;
    }
}else if (bullets > 2 && image_index > 9) {
    //Create Bullet
    b=instance_create(x,y-5,obj_bullet);
    bullets -= 1;
    b.speed = 15;
    
    //Check Direction
    if (image_xscale = 1) {
        b.direction = 0;
    }else{
        b.direction = 180;
    }
}else if (bullets > 1 && image_index > 13) {
    //Create Bullet
    b=instance_create(x,y-5,obj_bullet);
    bullets -= 1;
    b.speed = 15;
    
    //Check Direction
    if (image_xscale = 1) {
        b.direction = 0;
    }else{
        b.direction = 180;
    }
}else if (bullets > 0 && image_index > 17) {
    //Create Bullet
    b=instance_create(x,y-5,obj_bullet);
    bullets -= 1;
    b.speed = 15;
    
    //Check Direction
    if (image_xscale = 1) {
        b.direction = 0;
    }else{
        b.direction = 180;
    }
}
