///scr_draw_gamepad(pad_color,btn_color)
var yoffset = -16;
var xoffset = 0;

draw_set_color(argument1);

var vx = view_xview[0]+xoffset;
var vy = view_yview[0]+yoffset;
var vh = view_hview[0]/2;
var vw = view_wview[0]/2;

var xc = vx+vw+64;
var yc = vy+vh-16;

draw_sprite_ext(spr_gamepad,0,vx+vw,vy+vh,.5,.5,0,argument0,.35);

/*
if (r_btn) {
    draw_sprite_ext(spr_right_button,0,vx+vw,vy+vh,.5,.5,0,argument1,.5);
} else {
    draw_sprite_ext(spr_right_button,0,vx+vw,vy+vh,.5,.5,0,argument1,.2);
}

if (l_btn) {
    draw_sprite_ext(spr_left_button,0,vx+vw,vy+vh,.5,.5,0,argument1,.5);
} else {
    draw_sprite_ext(spr_left_button,0,vx+vw,vy+vh,.5,.5,0,argument1,.2);
}*/

draw_set_alpha(.2);

// Draw the left and right analog stick bases
draw_circle(vx+vw-64, vy+vh-16, 20, false);
draw_circle(vx+vw+32, vy+vh+16, 20, false);

draw_circle(vx+vw-64, vy+vh-16, 14, false);
draw_circle(vx+vw+32, vy+vh+16, 14, false);

// Draw the center button
draw_circle(vx+vw,vy+vh-16,12,false);
draw_circle(vx+vw,vy+vh-16,8,false);

// draw the dpad
draw_circle(vx+vw-32,vy+vh+16,20,false);
draw_circle(vx+vw-32,vy+vh+16,18,false);

// Draw the analog sticks
draw_circle(vx+vw-64+(l_haxis*8), vy+vh-16+(l_vaxis*8), 12, false);
draw_circle(vx+vw+32+(r_haxis*8), vy+vh+16+(r_vaxis*8), 12, false);

// START
if (start) {
    draw_set_alpha(.5);
    draw_circle(vx+vw+20,vy+vh-16,4,false);
} else {
    draw_circle(vx+vw+20,vy+vh-16,4,false);
}
draw_set_alpha(.2);

// SELECT
if (select) {
    draw_set_alpha(.5);
    draw_circle(vx+vw-20,vy+vh-16,4,false);
} else {
    draw_circle(vx+vw-20,vy+vh-16,4,false);
}
draw_set_alpha(.2);

// A
if (a_btn) {
    draw_set_alpha(.5);
    draw_circle(xc-12,yc,6,false);
} else {
    draw_circle(xc-12,yc,6,false);
}
draw_set_alpha(.2);

// B
if (b_btn) {
    draw_set_alpha(.5);
    draw_circle(xc+12,yc,6,false);
} else {
    draw_circle(xc+12,yc,6,false);
}
draw_set_alpha(.2);

// X
if (x_btn) {
    draw_set_alpha(.5);
    draw_circle(xc,yc+12,6,false);
} else {
    draw_circle(xc,yc+12,6,false);
}
draw_set_alpha(.2);

// Y
if (y_btn) {
    draw_set_alpha(.5);
    draw_circle(xc,yc-12,6,false);
} else {
    draw_circle(xc,yc-12,6,false);
}
draw_set_alpha(.2);

// Draw the rest of the d pad
draw_rectangle(vx+vw-32-3,vy+vh+16-3,vx+vw-32+3,vy+vh+16+3,false); //center

if (up) {
    draw_set_alpha(.5);
    draw_rectangle(vx+vw-32-4,vy+vh+16-16,vx+vw-32+4,vy+vh+16-4,false);
} else {
    draw_rectangle(vx+vw-32-4,vy+vh+16-16,vx+vw-32+4,vy+vh+16-4,false);
}
draw_set_alpha(.2);

// LEFT
if (left) {
    draw_set_alpha(.5);
    draw_rectangle(vx+vw-32-16,vy+vh+16-4,vx+vw-32-4,vy+vh+16+4,false);
} else {
    draw_rectangle(vx+vw-32-16,vy+vh+16-4,vx+vw-32-4,vy+vh+16+4,false);
}
draw_set_alpha(.2);

// RIGHT
if (right) {
    draw_set_alpha(.5);
    draw_rectangle(vx+vw-32+4,vy+vh+16-4,vx+vw-32+16,vy+vh+16+4,false);
} else {
    draw_rectangle(vx+vw-32+4,vy+vh+16-4,vx+vw-32+16,vy+vh+16+4,false);
}
draw_set_alpha(.2);

// DOWN
if (down) {
    draw_set_alpha(.5);
    draw_rectangle(vx+vw-32-4,vy+vh+16+4,vx+vw-32+4,vy+vh+16+16,false);
} else {
    draw_rectangle(vx+vw-32-4,vy+vh+16+4,vx+vw-32+4,vy+vh+16+16,false);
}
draw_set_alpha(.2);

draw_set_alpha(1);

























