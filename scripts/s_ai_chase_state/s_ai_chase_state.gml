s_ai_check_for_player();
// s_move_to_target(target_o, spd);
if (instance_exists(target_o))
{
	s_move_to_target(target_o, spd_chase);
	//phy_position_x += sign(target_x - x) * spd_chase;
	//phy_position_y += sign(target_y - y) * spd_chase;
} else {
	target_o = noone;	
}