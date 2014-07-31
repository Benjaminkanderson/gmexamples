///scr_draw_light(xoff,yoff,rad,color_in,color_out,alpha)

var xoff = argument0;
var yoff = argument1;
var rad = argument2;
var color_in = argument3;
var color_out = argument4;
var alpha = argument5;

draw_set_blend_mode(bm_add);
draw_set_alpha(alpha);
draw_ellipse_color(x-rad+xoff, y-rad+yoff, x+rad+xoff, y+rad+yoff, color_in, color_out, false);
draw_set_alpha(1);
draw_set_blend_mode(bm_normal);
