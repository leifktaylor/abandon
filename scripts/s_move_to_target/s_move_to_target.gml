///s_move_to_target(target_object, speed)

var target_object = argument0;
var move_speed = argument1;
var dir = point_direction(x, y, target_object.x, target_object.y);
var hspd = lengthdir_x(move_speed, dir);
var vspd = lengthdir_y(move_speed, dir);

// Flip sprite to face direction moving
image_xscale = sign(hspd);


if (instance_exists(target_object))
{
	show_debug_message("Moving to target: " + string(target_object));
	phy_position_x += hspd;
	phy_position_y += vspd;
	show_debug_message("Moving complete");
}