///scr_take_damage(fobject)
o = argument[0];
var movepower = 40;
var stab = 1.5;
var weakres = 1;
var damage = ((((2*lvl/5+2)*o.att*movepower/def)/50)+2)*stab*weakres*irandom_range(85, 100)/100;
hp -= damage;
