///fire_projectile(projectile_object, force)
// Must be called by a lifeform object
var proj_o = argument0;
var force = argument1;

var p = instance_create_depth(x, y, -1000, proj_o);
var xforce = lengthdir_x(force, face*90);
var yforce = lengthdir_y(force, face*90);
p.creator = id;
with (p)
{
	physics_apply_impulse(x, y, xforce, yforce);	
}