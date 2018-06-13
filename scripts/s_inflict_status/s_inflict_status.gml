///s_inflict_status(target_lifeform, status_object)
///@param target_lifeform
///@param status_object

target_lifeform = argument0;
status_object = argument1;

// Check through the lifeform's statuses array and see if we can apply this status effect
var current_status = noone;
var empty_index = false;
for (var i = 0; i < 10; i++)
{
	current_status = target_lifeform.statuses[i];
	if instance_exists(current_status)
	{
		// If target already has this status, refresh it
		if current_status.object_index = status_object
		{
			with (current_status)
			{
				instance_destroy()
			}
			var status_instance = instance_create_depth(target_lifeform.x, target_lifeform.y, target_lifeform.depth, status_object);
			status_instance.owner = target_lifeform
			status_instance.statuses_index = i;
			target_lifeform.statuses[i] = status_instance
			return
		}
	} else {
	// If we find an empty bucket in the statuses array, save that index number for later
		empty_index = i; 
	}
}
// If target does not have this status, and there is an empty bucket in the statuses array, apply it
if empty_index != false
{
	var status_instance = instance_create_depth(target_lifeform.x, target_lifeform.y, target_lifeform.depth, status_object);
	status_instance.owner = target_lifeform
	status_instance.statuses_index = empty_index;
	target_lifeform.statuses[empty_index] = status_instance
}
// If we already have the maximum number of statuses allowed, do nothing
show_debug_message("Lifeform already has maximum amount of status effects; doing nothing")
