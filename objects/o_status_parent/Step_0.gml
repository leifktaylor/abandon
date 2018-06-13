/// @description Insert description here
// You can write your code in this editor
duration--;
if duration < 0
{
	instance_destroy();	
}

if instance_exists(owner)
{
	x = owner.x
	y = owner.y
}