/// @description Insert description here
// You can write your code in this editor
depth = -y;
s_ai_critter_wander_state();
timer_pigment--;
if timer_pigment <= 0
{
	timer_pigment = random_range(100, 500)
	image_blend = make_color_rgb(random_range(0, 255), random_range(0, 255), random_range(0, 255))
}