///s_state_ai_follow_ally
ally_o = s_ai_nearest_ally_range(sight);

if instance_exists(ally_o)
{
	// Match image speed of ally (target)
	image_speed = ally_o.image_speed;
	
	// Move to target if we're not already too close
	var max_proximity = 100;
	if (point_distance(x, y, ally_o.x, ally_o.y) > max_proximity)
	{
		// Move to target ally
		s_move_to_target(ally_o, spd_chase);	
		return true;
	} else {
		return false;	
	}
} else {
	// Do something idle here (no ally in range to follow)
	return false
}
