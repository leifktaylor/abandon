/// @Description Get Input

// Move game object
_s_player_move(spd);

// Handle sprite animation
image_speed = sign(len) * sprite_image_speed;

if (len == 0)
{
	image_index = sprite_image_index_base;
	image_speed = 0;
} else {
	if (rxaxis != 0 or ryaxis != 0)
	{
		face = s_get_face(point_direction(0, 0, rxaxis, ryaxis));
	} else {
		face = s_get_face(dir);
	}
	sprite_index = s_get_movement_sprite(face)
}

// Dash Key
if (key_dash) {
	timer_dash = dash_length;
	state = s_move_dash;
}

if (key_attack) {
	image_index = 0;
	state = s_state_player_attack;
}

// Projectile 
if (key_range)
{
	s_fire_projectile(o_projectile, 10);
}

// Crosshair
s_control_crosshair()


// DEBUG
if (keyboard_check(vk_down))
{
	timer_stun = 100;
	state = s_state_hit;	
}
