///s_create_exp(dead_lifeform, recipient_lifeform, exp_obj)
dead_lf = argument0;
target_lf = argument1;
exp_obj = argument2;

exp_o = instance_create_depth(dead_lf.x, dead_lf.y, -1000, exp_obj);
exp_o.target = target_lf;
