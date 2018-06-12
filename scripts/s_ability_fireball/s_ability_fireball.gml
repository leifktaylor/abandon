///s_ability_fireball(dir, charge, owner)
///@param dir direction
///@param charge amount of charge
///@param owner id of lifeform object originating

var aim_dir = argument0;
var aim_charge = argument1;
var proj_owner = argument2;

// Apply recoil to caster
var xforce = lengthdir_x(2 + (aim_charge * .15), aim_dir);
var yforce = lengthdir_y(2 + (aim_charge * .15), aim_dir);
with (proj_owner)
{
	physics_apply_impulse(x, y, -xforce, -yforce);	
}

// Create fireball object with impulse at dir
var proj_o = s_fire_projectile(o_fireball_small, owner, aim_dir, 20);
proj_o.range = proj_o.range + clamp((aim_charge * .5), 1, 100);