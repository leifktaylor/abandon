image_speed = stats_cast_speed;
if image_index > image_number - 1
{	
	image_index = 0;
	image_speed = sprite_image_speed;
	sprite_index = movement_sprites[face];
	timer_casting = 0;
	state = state_base;	
}
