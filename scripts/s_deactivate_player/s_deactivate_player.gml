///s_deactivate_player(player_o)
var player_o = argument0;

// Switch to AI base state (WIP)
player_o.state = s_ai_state_follow_ally;
player_o.state_base = s_ai_state_follow_ally;
player_o.ai_controlled = true;