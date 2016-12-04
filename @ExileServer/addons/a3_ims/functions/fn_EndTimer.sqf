/*
    File: fn_raidEndTimer.sqf
    Written by Salutesh
    www.reality-gaming.eu
	
    Description:
	
	//////////////////////////////////////////////////////////////////
	//
	//	Example of the function:
	//	[180] remoteExec ["IMS_fnc_EndTimer", FortressPlayerUnits, true];
	//
	//////////////////////////////////////////////////////////////////
	//
	//	[VALUE] [180] is the amount of seconds for the timer.
	//	"IMS_fnc_EndTimer"  ist the function name.
	//	FortressPlayerUnits are the target, in this case a definied variable for units in a special area.
	//
	//////////////////////////////////////////////////////////////////
*/

private "_time";
_time = _this select 0;

while {_time > 0} do {
	_time = _time - 1;  
	hintSilent parseText format ["<br/><img color='#e76d00' image='textures\explosion.paa' size='4'/><br/><br/><t color='#ffffff' font='PuristaSemiBold' size='1'>  TIME UNTIL DETORNATION:</t><t color='#d7374a' size='1' font='PuristaSemiBold'> %1</t><br/>", [((_time)/60)+.01,"HH:MM"] remoteExec ["BIS_fnc_timetostring",[0,-2] ,true]];
	sleep 1;
};