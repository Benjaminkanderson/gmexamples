///scr_calc_stat(bs, gs, ts, level)
var bs = argument[0]; // Base stat
var gs = argument[1]; // Genetic stat
var ts = argument[2]; // Trainting stat
var lvl = argument[3]; // Level
var stat;

// Normal stat
stat=ceil(((gs+bs+ts)*lvl+5)/50);
return stat;
