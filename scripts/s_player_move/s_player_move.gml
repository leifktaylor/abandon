/// @Description Get Input

// Get Direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if (xaxis == 0 and yaxis == 0)
{
	len = 0;	
} else {
	len = (spd + sprint_current);
	show_debug_message("Total Len: " + string(spd) + " + " + string(sprint_current));
}

// Move
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
phy_position_x += hspd;
phy_position_y += vspd;


// Handle sprite animation
image_speed = sign(len) * sprite_image_speed;

if (len == 0)
{
	image_index = sprite_image_index_base;
	image_speed = 0;
} else {
	face = s_get_face(dir);
	switch (face) 
	{
		case RIGHT:
			sprite_index = sprite_right;
			break;
		case UP:
			sprite_index = sprite_up;
			break;
		case LEFT:
			sprite_index = sprite_left;
			break;
		case DOWN:
			sprite_index = sprite_down;
			break;
	}
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

// DEBUG
if (keyboard_check(vk_down))
{
	timer_stun = 100;
	state = s_state_hit;	
}
