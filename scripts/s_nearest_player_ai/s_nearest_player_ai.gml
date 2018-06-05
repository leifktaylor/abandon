///s_nearest_player_ai
//within range
var range = 200;
var i;
for (i = 0; i < instance_number(o_player); i += 1)
{
	current_lf = instance_find(o_player, i);
	show_debug_message("Searching for nearest AI player: ID: " + string(current_lf.id))
	// Don't count self as nearest ally
	if current_lf == id
	{
		show_debug_message("Nearest_player_ai: It's us, skipping ...")
		continue;	
	}
	if current_lf.faction == faction
	{	
		show_debug_message("Target is our faction: " + string(faction));
		if current_lf.ai_controlled == true
		{
			show_debug_message("Target is AI controlled");
			if point_distance(x, y, current_lf.x, current_lf.y) <= range
			{
				show_debug_message("Nearest_player_ai SELECTED: ID: " + string(current_lf.id));
				return current_lf;	
			}
		}
	}
}
return noone;