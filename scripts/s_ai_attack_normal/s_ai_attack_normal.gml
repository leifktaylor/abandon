///s_ai_attack_normal
// Run into the player, doing damage

// if the player is in melee range, run into them
state_attack_timer--;

if state_attack_timer >= 0
{
	if point_distance(x, y, target_o.x, target_o.y) <= sight_attack_range + .5 * sight_attack_range
	{
		s_move_to_target(target_o, spd_chase + .5 * spd_chase)	
	} else {
		state = state_base;	
	}
} else {
	state = state_base;	
}
