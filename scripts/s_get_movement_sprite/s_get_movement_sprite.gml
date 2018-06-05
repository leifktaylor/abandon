var facing = argument0;
var s_index = 0;

switch (facing) 
{
	case RIGHT:
		s_index = sprite_right;
		break;
	case UP:
		s_index = sprite_up;
		break;
	case LEFT:
		s_index = sprite_left;
		break;
	case DOWN:
		s_index = sprite_down;
		break;
}

return s_index