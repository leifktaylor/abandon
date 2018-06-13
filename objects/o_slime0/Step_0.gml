/// @description Insert description here
// You can write your code in this editor
event_inherited();
if (debug_messages) show_debug_message("Executing state script: " + string(state));
script_execute(state);

if instance_exists(target_o)
{
	image_blend = sprite_attack_image_blend;	
}

s_fade_in_and_out_fx();
