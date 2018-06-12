///s_get_input(controller_index)
///@param controller_index

var controller_index = argument0;

// Inputs
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_dash = keyboard_check_pressed(ord("J"));
key_attack = keyboard_check(ord("I"));
key_range = keyboard_check_pressed(ord("O"));
key_swap = keyboard_check_pressed(vk_tab);

// Get Axis
xaxis = key_right - key_left;
yaxis = key_down - key_up;

// Gamepad input
if (gamepad_is_connected(controller_index))
{
	gamepad_set_axis_deadzone(controller_index, .4)
	xaxis = gamepad_axis_value(controller_index, gp_axislh);
	yaxis = gamepad_axis_value(controller_index, gp_axislv);
	s_get_rstick_input(controller_index);
	key_dash = gamepad_button_check_pressed(controller_index, gp_face1);
	key_attack = gamepad_button_check(controller_index, gp_shoulderr);
	key_range = gamepad_button_check_pressed(controller_index, gp_face2);
	key_swap = gamepad_button_check_pressed(controller_index, gp_face3);
}


// Buttons / Keychecks
