///s_target_in_range

if instance_exists(target_o)
{
	if point_distance(x, y, target_o.x, target_o.y) <= sight
	{
		return true;
	}
}
return false;	
