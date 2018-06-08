///s_target_in_attack_range()

if instance_exists(target_o)
{
	if point_distance(x, y, target_o.x, target_o.y) <= sight_attack_range
	{
		return true;
	}
}
return false;