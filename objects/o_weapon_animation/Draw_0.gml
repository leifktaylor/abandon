/// @description Insert description here
// You can write your code in this editor
draw_self();
if instance_exists(owner)
{
	draw_text(owner.x, owner.y, string(object_get_name(owner)));	
}