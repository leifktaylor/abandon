/// @description Insert description here
// You can write your code in this editor
x_offset = owner.health_bar_x_offset;
var x_origin = x - owner.sprite_base_width / 2 - x_offset;
var y_origin = y - owner.sprite_base_height / 2;
var hp_per_segment = 5;
// var health_bar_size = owner.sprite_base_width * .75;
var health_bar_size = 20;
var segment_size = 0;
var last_segment_size = 0;
var segment_gap_size = 2;
var segments = ceil(owner.stats_hp_max / hp_per_segment) - 1;
var segments_to_draw = ceil(owner.stats_hp_current / hp_per_segment) - 1;
segment_size = health_bar_size / segments;
var i;
var current_x;
for (i = 0; i < segments_to_draw + 1; i += 1)
{
	current_x = x_origin + (segment_gap_size * i) + (segment_size * i)
	if (i == segments_to_draw)
	{
		var hp_in_last_seg = owner.stats_hp_current - ((segments_to_draw) * hp_per_segment)
		last_segment_size = segment_size * (hp_in_last_seg / hp_per_segment);
		// show_debug_message("segment_size: " + string(segment_size));
		// show_debug_message("last segment size: " + string(last_segment_size));
		draw_rectangle_color(current_x, y_origin, current_x+last_segment_size - 1, y_origin+1, c_red, c_red, c_red, c_red, false);
	} else {
		draw_rectangle_color(current_x, y_origin, current_x+segment_size - 1, y_origin+1, c_red, c_red, c_red, c_red, false);
	}
}
// Draw frame
draw_rectangle_color(x_origin, y_origin - 1, x_origin + ((segments + 1) * segment_size) + (segments * segment_gap_size), y_origin + 1, c_silver, c_gray, c_black, c_black, true); 
