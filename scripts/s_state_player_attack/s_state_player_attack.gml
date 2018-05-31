/// @Description player_attack_state

image_speed = animation_attack_speed;

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

if (image_index >= 3 and switch_attacked == false)
{
	var xx = 0;
	var yy = 0;
	switch (sprite_index) 
	{
		case sprite_a_up:
			xx = x;
			yy = y - stats_attack_reach;
			break;
		
		case sprite_a_down:
			xx = x;
			yy = y + stats_attack_reach;
			break;
		
		case sprite_a_left:
			xx = x - stats_attack_reach;
			yy = y;
			break;
		
		case sprite_a_right:
			xx = x + stats_attack_reach;
			yy = y;
			break;
	}
	
	switch_attacked = true;
	s_sprint_reset();
	var damage_o = instance_create_depth(xx, yy, depth, o_damage);	
	damage_o.creator = id;
	damage_o.damage = stats_atk_phys;
	damage_o.knockback = stats_knockback;
}
// timer_attack -= 1;
// if (timer_attack <= 0)
// {
//	state = state_base;
// }
