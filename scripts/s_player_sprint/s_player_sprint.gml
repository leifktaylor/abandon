if (hspd == 0 and vspd == 0)
{
	s_sprint_reset();
} else {
	show_debug_message("timer_sprint: " + string(timer_sprint));
	timer_sprint -= 1;	
}

if (timer_sprint <= 0)
{
	sprint_current += sprint_acceleration;
	image_speed = sprite_image_speed + (sprint_current * .7);
	sprint_current = clamp(sprint_current, 0, sprint_max);
}
