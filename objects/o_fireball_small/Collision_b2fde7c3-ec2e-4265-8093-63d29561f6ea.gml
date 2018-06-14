/// @description Insert description here
// You can write your code in this editor
if instance_exists(other)
{
	if (other.id != creator)
	{
		// Apply burning status effect 50% of the time
		if irandom_range(1, 2) == 1
		{
			s_inflict_status(other, o_status_burning)	
		}
		
		// Do damage knockback etc
		var dir = point_direction(0, 0, phy_speed_x, phy_speed_y);
		var xforce = lengthdir_x(knockback, dir);
		var yforce = lengthdir_y(knockback, dir);
		s_deal_damage_flex(other, 3, c_orange);
		with (other)
		{
			s_color_object_fx(id, c_red, 10);
			physics_apply_impulse(x, y, xforce, yforce);
		}
		if (destroy_on_impact)
		{
			instance_destroy();	
		}
	}
}