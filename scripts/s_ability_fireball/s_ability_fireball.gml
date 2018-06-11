///s_ability_fireball(dir, charge, owner)
///@param dir direction
///@param charge amount of charge
///@param owner id of lifeform object originating

var aim_dir = argument0;
var aim_charge = argument1;
var proj_owner = argument2;

// Create fireball object with impulse at dir
s_fire_projectile(o_projectile, owner, aim_dir, 20);