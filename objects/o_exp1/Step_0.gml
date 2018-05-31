/// Step

// Destroy self if timer runs out
timer -= 1;
if (timer <= 0)
{
	instance_destroy();	
}

// Move to player object who got the kill, gradually increase in speed
spd += .05
if instance_exists(target)
{
	s_move_to_target(target, spd)
} else {
	instance_destroy();	
}