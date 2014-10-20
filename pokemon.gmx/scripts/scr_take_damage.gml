///scr_take_damage(fobject)
o = argument[0];
var movepower = 40;
var stab = 1.5;
var weakres = 1;
var damage = floor((((2*lvl+10)/250)*(o.att/def)*movepower+2)*stab*weakres*random_range(.85,1));
hp -= damage;
