/// @description Insert description here
// You can write your code in this editor
if (instance_exists(owner))
{
	image_xscale = (owner.stats_hp_current / owner.stats_hp_max);
	x = owner.x
	y = owner.y - 10
} else {
	instance_destroy();	
}