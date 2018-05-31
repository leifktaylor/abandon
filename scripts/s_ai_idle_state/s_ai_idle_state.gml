/// @Description s_enemy_idle_state
if (debug_messages) show_debug_message("Idle state, timer: " + string(timer_idle));
if (hostile)
{
	s_ai_check_for_player();
} else {
	s_ai_choose_next_state();	
}