///s_ai_nearest_ally_range(range)
///@param range max range to find ally
var range = argument0;

// Actually finds first ally within the specified range
var i;
for (i = 0; i < instance_number(o_lifeform); i += 1)
{
	current_lf = instance_find(o_lifeform, i);
	// Don't count self as nearest ally
	if current_lf == id
	{
		continue;	
	}
	if current_lf.faction == faction
	{		
		if point_distance(x, y, current_lf.x, current_lf.y) <= range
		{
			return current_lf;	
		}
	}
}
return noone;
   