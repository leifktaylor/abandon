/// @description Insert description here
// You can write your code in this editor
current_alpha -= decay_rate;

//draw_set_font()
if (crit)
{
	text_color = make_color_rgb(irandom(255),irandom(255),irandom(255));
	xscale += .01;
	yscale += .01;
	current_alpha += decay_rate / 2;
} else {
	xscale += .01;
	yscale += .01;
}
// Draw text
draw_text_ext_transformed_color(x, y, string(dmg_number), 5, 500, xscale, yscale, 0, text_color, text_color, text_color, text_color, current_alpha);
// Draw border
draw_text_ext_transformed_color(x, y, string(dmg_number), 5, 500, xscale+.25 * xscale, yscale+.25 * yscale, 0, back_color, back_color, back_color, back_color, current_alpha);	

if (current_alpha <= 0)
{
	instance_destroy();	
}