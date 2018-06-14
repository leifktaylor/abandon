/// @description Insert description here
// You can write your code in this editor
var swing_radius = 45;
var swing_speed = 15;

if instance_exists(owner)
{
	/// Swing the weapon
	if (image_angle >= dir - swing_radius)
	{
		image_angle -= swing_speed;
	} else {
		// If we're done swinging, destroy the weapon animation object
		with (owner)
		{
			// Cancel Sprint
			s_sprint_reset();	
		}
		instance_destroy();
	}
} else {
	// If our owner has died, or does not exist, destroy animation object
	instance_destroy();	
}