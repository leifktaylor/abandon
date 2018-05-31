/// @description Insert description here
// You can write your code in this editor
depth = -y;
timer_idle -= 1;
if (timer_idle <= -10000)
{
	timer_idle = 0;	
}

if (stats_hp_current <= 0)
{
	instance_destroy();	
}

// Handle showing health bar when hit
if (hit_recently)
{
	show_health_bar = true;
	timer_hit_recent -= 1;
	if (timer_hit_recent <= 0)
	{
		hit_recently = false;
		timer_hit_recent = 300;
		show_health_bar = show_health_bar_default;
	}
}


script_execute(state_substate);