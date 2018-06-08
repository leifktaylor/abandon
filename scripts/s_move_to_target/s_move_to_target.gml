///s_move_to_target(target_object, speed)
///@param target_object
///@param speed

var target_object = argument0;
var move_speed = argument1;
var dir = point_direction(x, y, target_object.x, target_object.y);
var hspd = lengthdir_x(move_speed, dir);
var vspd = lengthdir_y(move_speed, dir);

// Flip sprite to face direction moving
if object_is_ancestor(object_index, o_lifeform)
{
	if sprite_left == sprite_right
	{
		image_xscale = sign(hspd);
	} else {
		var facing = s_get_face(dir)
		sprite_index = s_get_movement_sprite(facing)	
	}
}


if (instance_exists(target_object))
{
	show_debug_message("Moving to target: " + string(target_object));
	phy_position_x += hspd;
	phy_position_y += vspd;
	show_debug_message("Moving complete");
}