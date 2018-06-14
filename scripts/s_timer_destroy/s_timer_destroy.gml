///s_timer_destroy

duration--;
if duration < 1
{
	instance_destroy();
	return true;
}
return false;
