/// scr_SS_Globalvars();

// Since the Marketplace doesn't permit packages with constants, you need to 
// run this script at the start of your game, from the Game Start event of the 
// first object in your game, or in the Room Create Code in the room editor of the 
// first room in your game.

// I would recommend that you actually create your own constants in the "Macros" 
// window using these global vars so that you can remove this script and get them 
// colour coded in the room editor.

// In the demo, the room "rm_SS_0" calls this script in the Room Creation Code.

globalvar ss_type_radial, ss_type_positional, ss_type_horizontal, ss_type_vertical, ss_type_all;
globalvar ss_fade_in, ss_fade_out, ss_fade_in_out;
globalvar ss_view_all, ss_view_room;

ss_type_radial = 0;
ss_type_positional = 1;
ss_type_horizontal = 2;
ss_type_vertical = 3;
ss_type_all = 4;

ss_fade_in = 0;
ss_fade_out = 1;
ss_fade_in_out = 2;

ss_view_all = -1;
ss_view_room = -2;


