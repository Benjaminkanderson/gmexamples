///scr_enemy_die()

// Die when you don't have any more health
if (hp <= 0) {
    // Set the depth for the particle systems.
    part_system_depth(global.ps,(y+8)*-1);
    
    repeat(gold) instance_create(x,y,obj_gold);
    if (item != -1) {
        instance_create(x,y,item);
    }

    // Create the blood particle
    part_emitter_region(global.ps,em,x-sprite_width/3,x+sprite_width/3,y-sprite_height/3,y+sprite_height/32,ps_shape_ellipse,ps_distr_gaussian);
    part_emitter_burst(global.ps,em,global.pt_blood,8);
    
    instance_destroy();
}

