/// @description Insert description here
// You can write your code in this editor

event_inherited();

// aiming
aim_type = "line" // line, location, self

on_charge_script = s_charge_line_ability;
on_use_script = s_ability_fireball; // s_ability_fireball takes a dir, and owner stats

// sounds
on_use_sound = snd_null;
on_charge_sound = snd_null;

// graphics
charge_fx = noone; // some particle object

 