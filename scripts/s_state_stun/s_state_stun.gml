// Hit state (When lifeform takes damage)
image_speed = 0;
image_blend = c_red;
timer_stun -= 1;
if (timer_stun <= 0) {
	image_blend = sprite_image_blend;
	image_speed = sprite_image_speed;
	state = state_base;	
}