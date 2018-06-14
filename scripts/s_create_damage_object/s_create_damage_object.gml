///s_create_damage_object(creator, x, y, damage, knockback, duration, stick)
///@param creator lifeform creating damage object
///@param x x-coordinate
///@param y y-coordinate
///@param damage_amount amount of damage to inflict
///@param knockback amount of knockback force
///@param duration of damage object existing
///@param stick boolean stick onto creator's x, y for duration
///@param stun_duration amount of time for enemy target to be stunned, 0 if no stun.

// Can this be optimized by passing arguments directly into the logic without declaring temp vars?

var creator = argument0;
var xx = argument1;
var yy = argument2;
var damage_amount = argument3;
var knockback = argument4;
var duration = argument5;
var stick = argument6;
var stun_duration = argument7

var damage_o = instance_create_depth(xx, yy, 0, o_damage);	
damage_o.creator = creator;
damage_o.damage = damage_amount;
damage_o.knockback = knockback;
damage_o.owner = creator;
damage_o.duration = duration;
damage_o.stick = stick;
damage_o.stun_duration = stun_duration;
	