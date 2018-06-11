/// @description Insert description here
// You can write your code in this editor
draw_self();

if ai_debug
{
	draw_text_transformed(x-25, y-45, name, .5, .5, 0);
	draw_text_transformed(x, y-30, script_get_name(state), .5, .5, 0);
	if instance_exists(target_o)
	{
		draw_text_transformed(x, y-20, "target: " + string(target_o.name), .5, .5, 0);
	}
}