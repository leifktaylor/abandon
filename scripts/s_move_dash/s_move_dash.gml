/// @Description Get Input
//show_debug_message("Dash Executed by: " + string(id))
if (len == 0)
{
	dir = face * 90;
}
len = spd*4;

// Move
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
phy_position_x += hspd;
phy_position_y += vspd;

// Create Dash FX
var dash_fx_o = instance_create_depth(x, y, depth, o_fx_dash);
dash_fx_o.sprite_index = sprite_index;
dash_fx_o.image_index = image_index;

timer_dash -= 1
if (timer_dash <= 0)
{
	state = state_base;
}