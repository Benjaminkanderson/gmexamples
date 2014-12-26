///scr_create_type_chart()

// Modifier list;
var double = 2;
var half = .5;
var normal = 1;
var none = 0;

// (attack_type, modifiers...)
scr_create_type(FIRE, half, half, double);
scr_create_type(WATER, double, half, half);
scr_create_type(GRASS, half, double, half);
