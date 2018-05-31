/// Status effect parent step event
if instance_exists(owner)
{
	owner.image_blend = fx_color;
}

timer_duration -= 1;
if (timer_duration <= 0)
{
	instance_destroy();
}
