///scr_draw_real_shadow(yoff, yscale)
var yoff = argument0;
var yscale = -argument1;

draw_sprite_ext(sprite_index, image_index, x, y+yoff, image_xscale, yscale, 0, c_black, .30);
draw_self();
