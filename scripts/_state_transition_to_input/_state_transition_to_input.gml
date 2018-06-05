timer_transition -= 1;
if timer_transition < 0
{
	timer_transition = 10;	
	state = s_state_player_input;
} 
