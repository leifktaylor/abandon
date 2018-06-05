///s_activate_nearest_player
show_debug_message("DEBUG: s_activate_nearest_player being called by object: " + string(id));
var nearest_ai_player = s_nearest_player_ai();
if instance_exists(nearest_ai_player)
{
	// Switch control to this ai player and de-activate control on current
	s_deactivate_player(id);
	s_activate_player(nearest_ai_player, 0);
} else {
	// Fail to swap player message or whatever	
	show_debug_message("Activate_nearest_player: WARN: failed to swap to nearest ai")
}