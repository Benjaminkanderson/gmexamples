///scr_view_move(view)
var view = argument0;

var up = keyboard_check(ord("W"));
var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S"));
var right = keyboard_check(ord("D"));

var amount = view_wview[view]/80;

if (up) {
    view_yview[view] -= amount;
}

if (left) {
    view_xview[view] -= amount;
}

if (down) {
    view_yview[view] += amount;
}

if (right) {
    view_xview[view] += amount;
}

// Control the zoom
// scr_view_zoom(amount, view_index)
// amount is a value from -1 to 1 (0 shouldn't change the zoom)
// I recommend using smaller values
if (mouse_wheel_up()) {
    scr_view_zoom(-.1, 0);
}

if (mouse_wheel_down()) {
    scr_view_zoom(.1, 0);
}
