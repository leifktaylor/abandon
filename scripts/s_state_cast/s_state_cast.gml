// Allow for crosshair control to continue
if !ai_controlled
{
	s_get_rstick_input(gamepad_index);
	s_control_crosshair();	
}

// Handle sprites and returning to base state at end
image_speed = stats_cast_speed;
if image_index > image_number - 1
{	
	image_index = 0;
	image_speed = sprite_image_speed;
	sprite_index = movement_sprites[face];
	timer_casting = 0;
	state = state_base;	
}
