timer_idle -= 1;
if (timer_idle <= 0)
{
	timer_idle = irandom_range(idle_min, idle_max);
	target_x = random(room_width);
	target_y = random(room_height);
}
s_move_to_coords(target_x, target_y, spd);