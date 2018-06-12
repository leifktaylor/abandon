///s_get_rstick_input(controller_index)
///@param controller_index 

var controller_index = argument0;

rxaxis = gamepad_axis_value(controller_index, gp_axisrh);
ryaxis = gamepad_axis_value(controller_index, gp_axisrv);