/// @description Insert description here
// You can write your code in this editor

// Handle coloring of sprite
if collision_circle(x, y, 20, o_slime0, false, true)
{
	image_blend = c_red;
} else {
	image_blend = c_white;	
}

phy_position_x += (target_x - x) * .1;
phy_position_y += (target_y - y) * .1;



/*
if point_distance(x, y, owner.x, owner.y) > max_range
{	
	// Move to player if we are too far from him
	s_move_to_target(owner, spd);
} else {
	// Move to axis direction
	var dir = point_direction(0, 0, rxaxis, ryaxis);
	var hspd = lengthdir_x(m_speed, dir);
	var vspd = lengthdir_y(m_speed, dir);
	phy_position_x += hspd;
	phy_position_y += vspd;	
}
*/