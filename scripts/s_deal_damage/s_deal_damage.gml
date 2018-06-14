///s_deal_damage(self_o, other_o, amount, text_color)
///@param self_o
///@param other_o
///@param (optional)amount
///@param (optional)text_color

self_o = argument0;
other_o = argument1;

// Handle optional / default text color
if argument_count > 3
{
	var back_color = argument[3];
	var color = argument[3];
} else {
	if (other_o.object_index == o_player)
	{
		var color = c_red
		var back_color = c_black;
	} else {
		var color = c_white;	
		var back_color = c_white;
	}
}

// Initiate aggro on dealer of damage, if not aggrod
s_enable_combat_mode(other_o);	

// Calculate if we crit or not
var crit_multi;
var rolled_crit;
// if (crit_roll <= self_o.stats_crit_chance)
if (random_range(0, 1) <= self_o.stats_crit_chance)
{
	rolled_crit = true;
	crit_multi = self_o.stats_crit_multi;	
} else {
	rolled_crit = false;
	crit_multi = 1;	
}

// Factor in enemy defense stat and apply damage
// Handle optional / default damage
var variance = ceil(self_o.stats_atk_phys * .2);
if argument_count > 2
{
	var dmg_input = argument[2];
} else {
	var dmg_input = (ceil(self_o.stats_atk_phys + (irandom_range(-variance, variance)))) * crit_multi;	
}

show_debug_message("input damage: " + string(dmg_input));
var dmg_actual = clamp(dmg_input - other_o.stats_def_phys, 1, 999);
other_o.stats_hp_current -= dmg_actual
other_o.hit_recently = true;

// Draw damage text
draw_damage_text(dmg_actual, color, back_color, rolled_crit, other_o);

