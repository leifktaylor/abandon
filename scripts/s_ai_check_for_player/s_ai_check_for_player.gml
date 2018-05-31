///s_check_for_player()

var targ_o = o_player;
var nearest_o = noone;
var dis = 0;

if (instance_exists(targ_o))
{
	nearest_o = instance_nearest(x, y, targ_o);
	dis = point_distance(x, y, nearest_o.x, nearest_o.y);
	if (dis < sight) 
	{
		if (debug_messages) show_debug_message("Target found: " + string(targ_o))
		// target_o = targ_o;
		target_o = nearest_o;
		state = s_ai_chase_state;
	} else {
		s_ai_choose_next_state();
	}
} else {
	s_ai_choose_next_state();
}