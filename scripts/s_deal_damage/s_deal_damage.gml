///s_deal_damage(self_o, other_o)
self_o = argument0;
other_o = argument1;

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
var variance = ceil(self_o.stats_atk_phys * .2);
var dmg_input = (ceil(self_o.stats_atk_phys + (irandom_range(-variance, variance)))) * crit_multi;
show_debug_message("input damage: " + string(dmg_input));
var dmg_actual = clamp(dmg_input - other_o.stats_def_phys, 1, 999);
other_o.stats_hp_current -= dmg_actual
other_o.hit_recently = true;

var color;
var back_color;
if (other_o.object_index == o_player)
{
	color = c_red
	back_color = c_black;
} else {
	color = c_white;	
	back_color = c_white;
}
draw_damage_text(dmg_actual, color, back_color, rolled_crit, other_o);

