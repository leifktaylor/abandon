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

xx = lengthdir_x(clamp(timer_charge * 2, 20, 200), dir);
yy = lengthdir_y(clamp(timer_charge * 2, 20, 200), dir);

draw_line(owner.x, owner.y, owner.x + xx, owner.y + yy);

// audio_play_sound(snd_beep, 100, false);