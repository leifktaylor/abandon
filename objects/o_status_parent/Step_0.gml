/// @description Insert description here
// You can write your code in this editor

if instance_exists(owner)
{
	duration--;
	if duration < 1
	{
		instance_destroy();	
	}
	x = owner.x
	y = owner.y
} else {
	instance_destroy();	
}

