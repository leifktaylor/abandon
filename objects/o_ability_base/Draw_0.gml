/// @description Insert description here
// You can write your code in this editor
if instance_exists(owner)
{
	if owner.state != s_state_cast
	{
		if !owner.ai_controlled
		{
			// If we are starting to charge / aim
			if gamepad_button_check(gamepad_device, key_use)	
			{
				// Play sound effect if beginning the charge/aim
				if timer_charge == 0
				{
					with (owner)
					{
						s_sprint_reset();
					}
					audio_play_sound(on_charge_sound, 100, false);	
				}
				script_execute(on_charge_script);
				owner.spd = owner.spd_casting;
				timer_charge += 1;
				return
			}
			// If we are done aiming, and using ability
			if gamepad_button_check_released(gamepad_device, key_use)
			{
				audio_play_sound(on_use_sound, 100, false);
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
				timer_charge = 0;
				owner.image_index = 0;
				owner.sprite_index = owner.cast_sprites[owner.face];
				owner.state = s_state_cast;
				owner.spd = owner.spd_base;
				return
			}
			owner.spd = owner.spd_base;
			timer_charge = 0;	
		}
	}
}
