///s_ai_enemy_lowest_hp(range)
///@param range
///@description Returns lifeform object enemy with lowest HP

// !!!! BUG !!!! If one potential target lifeform exists, enemy will remain in idle state and will always return
// noone.

var range = argument0;
var instance_with_lowest_hp = noone;

for (var i = 0; i < instance_number(o_lifeform); i += 1)
{
	current_lf = instance_find(o_lifeform, i);
	if current_lf.faction != faction
	{		
		if point_distance(x, y, current_lf.x, current_lf.y) <= range
		{
			//if i == 0
			if instance_with_lowest_hp == noone
			{
				instance_with_lowest_hp = current_lf	
			} else {
				if instance_exists(instance_with_lowest_hp)
				{
					if current_lf.stats_hp_current < instance_with_lowest_hp.stats_hp_current
					{
						instance_with_lowest_hp = current_lf;
						continue
					}
				} else {
					continue	
				}
			}
		}
	}
}
return instance_with_lowest_hp;
   