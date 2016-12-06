/*
	IMS_fnc_EndTimer
	Created by Salutesh

	Usage:
	[
		_object														// [NUMBER]: Amount of seconds
	] call IMS_fnc_EndTimer;
	
	This function will simply create a visual dialog that displays a timer in [Minutes:Seconds].
*/

private "_time";
_time = _this select 0;

while {_time > 0} do {
	_time = _time - 1;  
	hintSilent parseText format["<br/><img color='#e76d00' image='textures\timer.paa' size='2'/><t color='#ffffff' font='PuristaSemiBold' size='1'>  COUNTDOWN:</t><t color='#d7374a' size='1' font='PuristaSemiBold'> %1</t><br/>", [((_time)/60)+.01,"HH:MM"] call BIS_fnc_timetostring];	
	sleep 1;
};