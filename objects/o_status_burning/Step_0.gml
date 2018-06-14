/// @description Insert description here
// You can write your code in this editor
event_inherited();

timer_tick++;
if timer_tick == tick_rate
{
	s_deal_damage_flex(owner, 1, c_orange);
	timer_tick = 0;
}