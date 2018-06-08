/// Move to co-ords

// subtract from wander timer
// if timer_wander >= 0
// 

timer_wander--;
if timer_wander >= 0
{
	s_move_to_coords(target_x, target_y, spd);	
} else {
	s_ai_wander_reset();	
}