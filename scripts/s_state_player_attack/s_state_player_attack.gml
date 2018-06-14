/// @Description player_attack_state

image_speed = stats_atk_speed;

if (s_is_animation_frame(2))
{
	// Get Direction
	if (rxaxis != 0 or ryaxis != 0)
	{
		var anim_dir = point_direction(0, 0, rxaxis, ryaxis);
	} else {
		var anim_dir = point_direction(0, 0, xaxis, yaxis);
	}
	var anim_depth = depth;
	var ax;
	var ay;
	face = s_get_face(anim_dir);
	switch (face)
	{
		case 0:
			anim_depth -= 2;
			ax = x + 2;
			ay = y
			break;
		// UP
		case 1:
			ax = x
			ay = y - 5;
			break;
		case 2:
			ax = x - 2;
			ay = y
			break;
		// DOWN
		case 3:
			anim_depth -= 2;
			ax = x
			ay = y + 10;
			break;
	}
	show_debug_message("Creating weapon object");
	var attack_animation_o = instance_create_depth(ax, ay, anim_depth, o_weapon_animation);
	attack_animation_o.dir = anim_dir;
	attack_animation_o.image_angle = anim_dir + 45;
	attack_animation_o.owner = id;
}

// Handle player animation
/*
switch (face) 
{
	case 0:
		sprite_index = sprite_a_right;
		break;
		
	case 1:
		sprite_index = sprite_a_up;
		break;
		
	case 2:
		sprite_index = sprite_a_left;
		break;
		
	case 3:
		sprite_index = sprite_a_down;
		break;
		
}
*/
sprite_index = attack_sprites[face];

if (s_is_animation_frame(3))
{
	// Create Damage Object
	if (rxaxis == 0 and ryaxis == 0)
	{
		var dmg_dir = point_direction(0, 0, xaxis, yaxis);
	} else {
		var dmg_dir = point_direction(0, 0, rxaxis, ryaxis);
	}
	var xx = lengthdir_x(stats_attack_reach, dmg_dir);
	var yy = lengthdir_y(stats_attack_reach, dmg_dir);
	show_debug_message("Creating Damage object");
	var damage_o = instance_create_depth(x + xx, y + yy, depth, o_damage);	
	damage_o.creator = id;
	damage_o.damage = stats_atk_phys;
	damage_o.knockback = stats_knockback;
	damage_o.owner = id
}


s_get_input(gamepad_index);
s_control_crosshair();
_s_player_move(spd * .5);

// timer_attack -= 1;
// if (timer_attack <= 0)
// {
//	state = state_base;
// }
