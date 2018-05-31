// Hit state (When lifeform takes damage)
image_speed = 0;
image_blend = c_orange;
timer_stall -= 1;
if (timer_stall <= 0) {
	image_blend = sprite_image_blend;
	image_speed = sprite_image_speed;
	state = state_base;	
}