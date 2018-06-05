/// @description Lifeform Create Event

// Inherit Parent Create Event (lifeform)
event_inherited();

// ai
sight = 200;

// Init
key_left = 0;
key_right = 0;
key_up = 0;
key_down = 0;
depth = -1;
image_speed = 0;

if ai_controlled
{ 
	state_base = s_ai_state_follow_ally;
} else {
	state_base = s_state_player_input;
}
state = state_base;

// Crosshair
crosshair_o = noone;

// Stats
stats_hp_max = 15;
stats_hp_current = stats_hp_max;
stats_atk_phys = 3;
stats_atk_mag = 3;
stats_atk_speed = .7;
stats_crit_chance = .1;
stats_crit_multi = 2;
stats_def_phys = 1;
stats_def_mag = 1;
stats_knockback = 10;
stats_attack_reach = 25;

// Movement
spd = 1;
xaxis = 0;
yaxis = 0;
rxaxis = 0;
ryaxis = 0;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
// Movement (special)
dash_length = 30;
animation_attack_speed = .8;
spd_chase = spd * 2;

//Timers
timer_stun = 0;
timer_dash = 0;
timer_transition = 10;

// Visuals (required)
sprite_up = s_player_up;
sprite_down = s_player_down;
sprite_left = s_player_left;
sprite_right = s_player_right;
sprite_a_down = s_player_attack_down;
sprite_a_up = s_player_attack_up;
sprite_a_left = s_player_attack_left;
sprite_a_right = s_player_attack_right;
sprite_image_speed = .5; 
sprite_image_index_base = 0;
sprite_shadow = s_player_shadow;

// Faction (99 is player default faction)
faction = 99;

// Player control
// Key Bindings
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

// Hud
show_health_bar = true;
show_health_bar_default = true;