///s_gc_enemy_nearest()

var _target;

_target = s_ai_nearest_enemy_range(sight)
if instance_exists(_target)
{
	target_o = _target;
	s_enable_combat_mode(id);
	return true;
}
return false;