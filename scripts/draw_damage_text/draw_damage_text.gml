///draw_damage_text(damage, color, back_color, crit, target_o)
var damage = argument0;
var text_color = argument1;
var back_color = argument2;
var crit = argument3;
var target_o = argument4;

dmg_text = instance_create_depth(target_o.x, target_o.y, -1000, o_damage_text);
dmg_text.text_color = text_color;
dmg_text.dmg_number = damage;
dmg_text.crit = crit;
dmg_text.back_color = back_color;