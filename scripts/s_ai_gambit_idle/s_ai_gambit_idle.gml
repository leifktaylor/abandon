///s_ai_gambit_idle
var current_gambit_conditional_script;
var current_gambit_action_script;

// Check if any gambit conditionals are satisfied, and switch state to gambit action if true
for (var i = 0; i < array_height_2d(gambits); i++;)
{
	current_gambit_conditional_script = gambits[i, 0];
	if script_execute(current_gambit_conditional_script)
	{
		timer_gambit_action = timer_gambit_action_max;
		state = gambits[i, 1];
		return
	}
}

// Since no conditionals were satisfied, perform idle action
script_execute(state_idle);
