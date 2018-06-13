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
spd_chase = 2.0;

// Slime visuals (fade in and out)
stall_delay = 70;
alpha_fading = true;
alpha_switch = 0;
alpha_max = 1;
alpha_min = 0;
alpha_timer_max_rnd = 500;
alpha_timer = random_range(100, alpha_timer_max_rnd);

// Visuals (required)
image_blend = make_color_rgb(20, 20, 60);
sprite_attack_image_blend = make_color_rgb(255, 20, 20);
sprite_image_blend = image_blend;
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
sight_attack_range = 80;
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