///s_activate_player(player_object, controller)
var player_object = argument0;
var controller = argument1;
var camera = instance_nearest(x, y, o_camera);

camera.target_o = id;
player_object.state = _state_transition_to_input;
player_object.state_base = s_state_player_input;
player_object.ai_controlled = false;
