/// Damage player
if (state != s_state_stall)
{
	var dir = point_direction(other.x, other.y, x, y);
	var xx = lengthdir_x(1, dir);
	var yy = lengthdir_y(1, dir);
	var damage_o = instance_create_depth(other.x + xx, other.y + yy, depth, o_damage);
	damage_o.creator = id;
	damage_o.damage = stats_atk_phys;
	damage_o.knockback = stats_knockback;
	state = s_state_stall;
	timer_stall = stall_delay;
}
