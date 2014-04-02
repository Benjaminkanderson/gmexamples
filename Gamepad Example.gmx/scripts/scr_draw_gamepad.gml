/// Draw the gamepad
var yoffset = -16;
var xoffset = 0;

var vx = view_xview[0]+xoffset;
var vy = view_yview[0]+yoffset;
var vh = view_hview[0]/2;
var vw = view_wview[0]/2;

var xc = vx+vw+64;
var yc = vy+vh-16;

draw_sprite_ext(spr_gamepad,0,vx+vw,vy+vh,.5,.5,0,c_white,.35);

draw_set_alpha(.2);

// Draw the left and right analog stick bases
draw_circle_color(vx+vw-64, vy+vh-16, 20, c_black, c_black, false);
draw_circle_color(vx+vw+32, vy+vh+16, 20, c_black, c_black, false);

draw_circle_color(vx+vw-64, vy+vh-16, 14, c_black, c_black, false);
draw_circle_color(vx+vw+32, vy+vh+16, 14, c_black, c_black, false);

// Draw the center button
draw_circle(vx+vw,vy+vh-16,12,false);
draw_circle(vx+vw,vy+vh-16,8,false);

// draw the dpad
draw_circle(vx+vw-32,vy+vh+16,20,false);
draw_circle(vx+vw-32,vy+vh+16,18,false);

// Draw the analog sticks
draw_circle_color(vx+vw-64+(l_haxis*8), vy+vh-16+(l_vaxis*8), 12, c_black, c_black, false);
draw_circle_color(vx+vw+32+(r_haxis*8), vy+vh+16+(r_vaxis*8), 12, c_black, c_black, false);

//draw the start and back buttons
draw_circle(vx+vw-20,vy+vh-16,4,false);
draw_circle(vx+vw+20,vy+vh-16,4,false);

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

draw_rectangle(vx+vw-32-4,vy+vh+16-16,vx+vw-32+4,vy+vh+16-4,false); //up
draw_rectangle(vx+vw-32-16,vy+vh+16-4,vx+vw-32-4,vy+vh+16+4,false); //left
draw_rectangle(vx+vw-32+4,vy+vh+16-4,vx+vw-32+16,vy+vh+16+4,false); //right
draw_rectangle(vx+vw-32-4,vy+vh+16+4,vx+vw-32+4,vy+vh+16+16,false); //down

draw_set_alpha(1);
