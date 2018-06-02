/// @Description player_attack_state

image_speed = stats_atk_speed;

if (s_is_animation_frame(2))
{
	// Get Direction
	var anim_dir = point_direction(0, 0, xaxis, yaxis);
	var anim_depth = depth;
	var ax;
	var ay;
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
}

// Handle player animation
switch (sprite_index) 
{
	case sprite_up:
		sprite_index = sprite_a_up;
		break;
		
	case sprite_down:
		sprite_index = sprite_a_down;
		break;
		
	case sprite_left:
		sprite_index = sprite_a_left;
		break;
		
	case sprite_right:
		sprite_index = sprite_a_right;
		break;
}

if (s_is_animation_frame(3))
{
	// Create Damage Object
	var anim_dir = point_direction(0, 0, xaxis, yaxis);
	var xx = lengthdir_x(stats_attack_reach, anim_dir);
	var yy = lengthdir_y(stats_attack_reach, anim_dir);
	show_debug_message("Creating Damage object");
	var damage_o = instance_create_depth(x + xx, y + yy, depth, o_damage);	
	damage_o.creator = id;
	damage_o.damage = stats_atk_phys;
	damage_o.knockback = stats_knockback;
	damage_o.owner = id
}


// timer_attack -= 1;
// if (timer_attack <= 0)
// {
//	state = state_base;
// }
