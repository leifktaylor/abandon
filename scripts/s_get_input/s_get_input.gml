// Inputs
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_dash = keyboard_check_pressed(ord("J"));
key_attack = keyboard_check(ord("I"));
key_range = keyboard_check_pressed(ord("O"));

// Get Axis
xaxis = key_right - key_left;
yaxis = key_down - key_up;

// Gamepad input
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, .4)
	xaxis = gamepad_axis_value(0, gp_axislh);
	yaxis = gamepad_axis_value(0, gp_axislv);
	rxaxis = gamepad_axis_value(0, gp_axisrh);
	ryaxis = gamepad_axis_value(0, gp_axisrv);
	key_dash = gamepad_button_check_pressed(0, gp_face1);
	key_attack = gamepad_button_check(0, gp_shoulderr);
	key_range = gamepad_button_check_pressed(0, gp_face2);
}


// Buttons / Keychecks
