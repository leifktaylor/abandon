if alpha_fading
	{
	alpha_timer--;
	if alpha_timer < 0
	{
		alpha_timer = random_range(100, alpha_timer_max_rnd);
		alpha_switch++;
	}
	if alpha_switch mod 2 == 0
	{
		alpha_max += .1;
		clamp(alpha_max, alpha_min, alpha_max);
	} else {
		alpha_max -= .1;
		clamp(alpha_max, alpha_min, alpha_max);	
	}
}