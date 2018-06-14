///s_iframes_activate(target_lifeform, duration)
///@param target_lifeform
///@param duration

target_lifeform = argument0;
duration = argument1;

var iframes_o = instance_create_depth(0, 0, 0, o_iframes);
iframes_o.duration = duration;
target_lifeform.iframes = iframes_o;
