///fire_projectile(projectile_object, projectile_creator, dir, force)
///@param projectile_object object to create
///@param projectile_creator lifeform creating this projectile
///@param dir direction to fire projectile
///@param force force to apply
// Must be called by a lifeform object
var proj_o = argument0;
var proj_creator = argument1;
var proj_dir = argument2;
var proj_force = argument3;

var p = instance_create_depth(proj_creator.x, proj_creator.y - 4, -1000, proj_o);
var xforce = lengthdir_x(proj_force, proj_dir);
var yforce = lengthdir_y(proj_force, proj_dir);
p.creator = owner;
with (p)
{
	physics_apply_impulse(x, y, xforce, yforce);	
}
return p