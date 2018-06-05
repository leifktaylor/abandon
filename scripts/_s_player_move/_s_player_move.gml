// Get Direction
var current_speed = argument0;

dir = point_direction(0, 0, xaxis, yaxis);

if (xaxis == 0 and yaxis == 0)
{
	len = 0;	
} else {
	len = (current_speed + sprint_current);
	show_debug_message("Total Len: " + string(spd) + " + " + string(sprint_current));
}

// Move
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
phy_position_x += hspd;
phy_position_y += vspd;

