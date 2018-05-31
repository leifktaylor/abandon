/// @description Lifeform Create Event

// Inherit Parent Create Event
event_inherited();

// Init
key_left = 0;
key_right = 0;
key_up = 0;
key_down = 0;
depth = -1;
image_speed = 0;
state_base = s_state_player_input;
state = state_base;

// Stats
stats_hp_max = 15;
stats_hp_current = stats_hp_max;
stats_atk_phys = 3;
stats_atk_mag = 3;
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
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
// Movement (special)
dash_length = 30;
animation_attack_speed = .8;

//Timers
timer_stun = 0;
timer_dash = 0;

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
sprite_image_blend = c_white;

// Player control
// Key Bindings
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

// Hud
show_health_bar = true;
show_health_bar_default = true;