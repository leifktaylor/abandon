/// @description Insert description here
// You can write your code in this editor
var swing_radius = 45;
var swing_speed = 15;

if (image_angle >= dir - swing_radius)
{
	image_angle -= swing_speed;
} else {
	if instance_exists(owner)
	{
		with (owner)
		{
			// Cancel Sprint
			s_sprint_reset();	
		}
		instance_destroy()
	}
}