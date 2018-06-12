///s_charge_line_ability
var xx;
var yy;

if owner.rxaxis == 0 and owner.ryaxis == 0
{
	if owner.xaxis == 0 and owner.yaxis == 0
	{
		dir = owner.face * 90;	
	} else {
		dir = owner.dir;	
	}
} else {
	dir = point_direction(0, 0, owner.rxaxis, owner.ryaxis);		
}

xx = lengthdir_x(clamp(timer_charge * 3, 20, 400), dir);
yy = lengthdir_y(clamp(timer_charge * 3, 20, 400), dir);

// draw_line(owner.x, owner.y, owner.x + xx, owner.y + yy);
draw_set_alpha(.5);
draw_set_color(owner.sprite_hue);
draw_arrow(owner.x, owner.y, owner.x + xx, owner.y + yy, 10);
draw_set_color(c_white);
draw_set_alpha(1);
// audio_play_sound(snd_beep, 100, false);