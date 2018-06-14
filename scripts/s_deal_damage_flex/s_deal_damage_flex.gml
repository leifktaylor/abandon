///s_deal_damage(target_lifeform, amount, text_color)
///@param target_lifeform
///@param amount
///@param text_color

target_lifeform = argument0;
amount = argument1;
var color = argument2;
var back_color = color;

if instance_exists(target_lifeform)
{
	// Enable combat mode, this may have to be removed
	s_enable_combat_mode(target_lifeform)
	
	// Factor in enemy defense stat and apply damage
	target_lifeform.stats_hp_current -= amount
	target_lifeform.hit_recently = true;

	// Draw damage text
	draw_damage_text(amount, color, back_color, false, target_lifeform);
}
