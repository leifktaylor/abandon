///s_state_ai_follow_ally
ally_o = s_ai_nearest_ally_range(sight);
if instance_exists(ally_o)
{
	if (point_distance(x, y, ally_o.x, ally_o.y) > 50)
	{
		s_move_to_target(ally_o, spd_chase);	
	}
}
