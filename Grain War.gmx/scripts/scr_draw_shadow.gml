///scr_draw_shadow(w,h)

// Grab the height and width of the current sprite, divide by to, and assign to vars
var w = argument0;
var h = argument1;

// Set the alpha lower, draw the shadow, and the set it back
draw_set_alpha(.25);
draw_ellipse(x-w, y+2, x+w, y+h+2, false);
draw_set_alpha(1);
