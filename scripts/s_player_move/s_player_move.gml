/// @Description Get Input

// Move game object
_s_player_move(spd);

// Handle sprites depending on right and left stick interaction
if (len == 0)
{
	if (rxaxis != 0 or ryaxis != 0)
	{
		// If not moving, but using the right stick
		face = s_get_face(point_direction(0, 0, rxaxis, ryaxis));
		sprite_index = s_get_movement_sprite(face)
	} else {
		// If we're not moving, and not moving the right stick
		image_index = sprite_image_index_base;
		image_speed = 0;
	}
} else {
	if (rxaxis != 0 or ryaxis != 0)
	{
		// If we're moving and using the right stick
		face = s_get_face(point_direction(0, 0, rxaxis, ryaxis));
	} else {
		// If we're moving and not using the right stick
		face = s_get_face(dir);
	}
	sprite_index = s_get_movement_sprite(face)
}

// Handle sprite animation
image_speed = sign(len) * sprite_image_speed;

// Dash Key
if (key_dash) {
	timer_dash = dash_length;
	state = s_move_dash;
}

if (key_attack) {
	image_index = 0;
	state = s_state_player_attack;
}

// Swap Key
if (key_swap)
{
	s_activate_nearest_player();	
}

// Crosshair Input
s_control_crosshair()


// DEBUG
if (keyboard_check(vk_down))
{
	timer_stun = 100;
	state = s_state_hit;	
}
