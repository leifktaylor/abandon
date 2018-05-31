///s_enemy_choose_next_state()
//if (alarm[0] <= 0)
if (timer_idle <= 0)
{
	state = choose(s_ai_idle_state, s_ai_wander_state);
	//alarm[0] = room_speed * irandom_range(2, 4);
	timer_idle = irandom_range(idle_min, idle_max);
	target_x = random(room_width);
	target_y = random(room_height);
}