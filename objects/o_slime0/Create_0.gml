/// @description Insert description here
// You can write your code in this editor
event_inherited()

name = "Slime";
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
movement_sprites = [s_slime0, s_slime0, s_slime0, s_slime0];
attack_sprites = [s_slime0, s_slime0, s_slime0, s_slime0];

// faction
faction = 0;
sight = 128;

/// Gambits
gambits[0, 0] = s_gc_enemy_lowest_hp;
gambits[0, 1] = s_ga_attack;

// sight / targetting
state_attack = s_ai_attack_normal;
sight = 128;
sight_attack_range = 50;
target_x = 0;
target_y = 0;
target_o = noone;

// states
state_base = s_ai_gambit_idle;
state = state_base;
// action
state_idle = s_ai_wander;

// counters
// alarm[0] = room_speed * irandom_range(2, 5);
timer_idle = 100;
hostile = true;

// Healthbar
health_bar_x_offset = -4;