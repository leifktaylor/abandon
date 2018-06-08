///s_ga_attack()


// count down ga_timer
// verify ga_timer > 0
//	 verify if target exists
//     verify if target is in sight range
//       verify if target is in range for autoattack
//	       if in range for attack, go to attack state
//         if not in range for attack, move to target
// return to state_base;    

timer_gambit_action -= 1;
if timer_gambit_action > 0
{
	if instance_exists(target_o)
	{
		if s_target_in_range()
		{
			if s_target_in_attack_range()
			{
				state_attack_timer = state_attack_timer_max;
				state = state_attack;
				return
			} else {
				s_move_to_target(target_o, spd_chase);	
				return
			}
		}
	}
} 
state = state_base;