///enable_combat_mode(lifeform)
///@param lifeform lifeform object

lifeform_o = argument0;
if instance_exists(lifeform_o)
{
	lifeform_o.sight = lifeform_o.sight_combat;
}