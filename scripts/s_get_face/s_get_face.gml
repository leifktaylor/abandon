/// @Description s_get_face(int) return: degrees
var o_dir = argument0
var o_facing = 0;

o_facing = round(o_dir / 90);
if (o_facing == 4)
{
	o_facing = 0;	
}

return o_facing