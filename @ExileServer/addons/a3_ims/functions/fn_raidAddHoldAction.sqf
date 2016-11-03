/*
    File: fn_raidAddHoldAction.sqf
    Author: Salutesh aka Steve
    
    Description:
	Function to create a hold action on target. Just a smarter version for our needs of the BI function.
*/

params [["_object", player], ["_label", "Search"], ["_type", "search"], ["_active", "true"], ["_completeCode", {hint 'Nothing found'}], ["_args", []], ["_duration", 2], ["_remove", "true"]];

// Change icon based on _type input.
_idleIcon = switch (_type) do {
	case "data": {"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa"};
	case "launcher": {"icons\holdAction_launcher.paa"};
	case "pc": {"icons\holdAction_laptop.paa"};
	case "crate": {"icons\holdAction_search.paa"};
	case "charge": {"icons\holdAction_terminal.paa"};
	case "connect": {"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa"};
	default {"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa"};		
};


[
/* 0 object */							_object,
/* 1 action title */					_label,
/* 2 idle icon */						_idleIcon,
/* 3 progress icon */					_idleIcon,
/* 4 condition to show */				_active,
/* 5 condition for action */			"true",
/* 6 code executed on start */			{},
/* 7 code executed per tick */			{},
/* 8 code executed on completion */		_completeCode,
/* 9 code executed on interruption */	{},
/* 10 arguments */						_args,
/* 11 action duration */				_duration,
/* 12 priority */						0,
/* 13 remove on completion */			_remove,
/* 14 show unconscious */				false
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];