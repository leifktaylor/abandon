/// @description Insert description here
// You can write your code in this editor
if !owner.ai_controlled
{
	// If we are starting to charge / aim
	if gamepad_button_check(gamepad_device, key_use)	
	{
		// Play sound effect if beginning the charge/aim
		if timer_charge == 0
		{
			audio_play_sound(on_charge_sound, 100, false);	
		}
		script_execute(on_charge_script);
		timer_charge += 1;
		return
	}
	// If we are done aiming, and using ability
	if gamepad_button_check_released(gamepad_device, key_use)
	{
		audio_play_sound(on_use_sound, 100, false);
		timer_charge = 0;
		// Use ability	
		switch (aim_type)
		{
			case "line":
				script_execute(on_use_script, dir, timer_charge, owner);
				break;
			case "location":
				script_execute(on_use_script, xx, yy, timer_charge, owner);
				break;
			case "self":
				script_execute(on_use_script, timer_charge, owner);
				break;
		}
		return
	}
	timer_charge = 0;	
}