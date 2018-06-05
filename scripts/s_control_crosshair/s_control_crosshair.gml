if (rxaxis != 0 or ryaxis != 0) {
	sprint_current = 0;
	var crosshair_range = 120;
	var crosshair_dir = point_direction(0, 0, rxaxis, ryaxis);
	var r_target_x = lengthdir_x(crosshair_range, crosshair_dir);
	var r_target_y = lengthdir_y(crosshair_range, crosshair_dir);
	if !instance_exists(crosshair_o)
	{
		crosshair_o = instance_create_depth(x, y, -1000, o_crosshair)
		crosshair_o.owner = id;
	} else {
		crosshair_o.image_alpha = 1;
		crosshair_o.target_x = x + r_target_x;
		crosshair_o.target_y = y + r_target_y;	
	}
} else {
	if instance_exists(crosshair_o)
	{
		crosshair_o.image_alpha -= .01;
		if (crosshair_o.image_alpha <= 0)
		{
			with (crosshair_o)
			{
				instance_destroy();	
			}
		}
	}
}