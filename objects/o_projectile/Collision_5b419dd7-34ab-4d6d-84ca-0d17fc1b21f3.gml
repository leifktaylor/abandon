/// @description Insert description here
// You can write your code in this editor
if (other.id != creator)
{
	var dir = point_direction(0, 0, phy_speed_x, phy_speed_y);
	var xforce = lengthdir_x(knockback, dir);
	var yforce = lengthdir_y(knockback, dir);
	s_deal_damage(creator, other);
	with (other)
	{
		physics_apply_impulse(x, y, xforce, yforce);
	}
	if (destroy_on_impact)
	{
		instance_destroy();	
	}
}