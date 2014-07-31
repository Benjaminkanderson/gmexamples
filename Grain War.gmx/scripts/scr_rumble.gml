///scr_rumble(device,amount)

var device = argument0;
var amount = argument1;

if (global.rumble) {
    gamepad_set_vibration(device,amount,amount);
}
