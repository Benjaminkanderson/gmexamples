///scr_calc_stat(bs, gs, ts, level)
var bs = argument[0]; // Base stat
var gs = argument[1]; // Genetic stat
var ts = argument[2]; // Trainting stat
var lvl = argument[3]; // Level
var stat;

// Health stat
stat=ceil(((gs+bs+ts+50)*lvl+10)/50);
return stat;
