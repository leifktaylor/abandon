///s_move_to_coords(x, y, spd)
var xx = argument0;
var yy = argument1;
var m_speed = argument2;
var dir = point_direction(x, y, xx, yy);
var hspd = lengthdir_x(m_speed, dir);
var vspd = lengthdir_y(m_speed, dir);

// Flip sprite to face direction moving
image_xscale = sign(hspd);

// Move self
phy_position_x += hspd;
phy_position_y += vspd;