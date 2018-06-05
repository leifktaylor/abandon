/// @description Insert description here
// You can write your code in this editor
event_inherited()

stats_hp_current = 10;
stats_hp_max = 10;
stats_atk_phys = 1;
stats_def_phys = 0;
stats_crit_chance = 0;
image_speed = .1;
target = o_player;
spd = .4;
spd_chase = 1.5;

// Visuals (required)
sprite_up = s_slime0;
sprite_down = s_slime0;
sprite_left = s_slime0;
sprite_right = s_slime0;
sprite_a_down = s_slime0;
sprite_a_up = s_slime0;
sprite_a_left = s_slime0;
sprite_a_right = s_slime0;

// faction
faction = 0;
sight = 128;

// state
state_base = s_ai_idle_state;
state = state_base;

// counters
// alarm[0] = room_speed * irandom_range(2, 5);
timer_idle = 100;
hostile = true;

// Healthbar
health_bar_x_offset = -4;