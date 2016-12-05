/*
    IMS_Fortress_GlobalVars.sqf
    Written by Salutesh
    www.reality-gaming.eu
	
*/

// Alarm Sound
IMS_Fortress_AlarmEvent = {
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
	sleep 10;
	{_x say "air_raid"} foreach [IMS_ScriptObject_FortressSpeaker_1,IMS_ScriptObject_FortressSpeaker_2,IMS_ScriptObject_FortressSpeaker_3,IMS_ScriptObject_FortressSpeaker_4];
};

// Bombing Event
IMS_Fortress_BombEvent = {
	[[6889.92,11387,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
	sleep 5;
	[[6848.4,11474.8,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];	
	sleep 5;
	[[6887.06,11510.9,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];	
	sleep 5;
	[[6927.39,11384,0],70,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
	sleep 5;
	[[6889.35,11415.5,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
	sleep 5;
	[[6892.14,11450.7,0],30,1,2] remoteExec ["IMS_fnc_EndBombing",0,true];
};

// DMS Mission Handling
IMS_Fortress_DMSCompletionEvent = {
	// End the DMS mission The Fortress after raid event completion.
	// This grabs the array that contains information about the mission.
	// If you want to use this script on a static mission, then replace "DMS_Mission_Arr" with "DMS_StaticMission_Arr".
	private _missionInfo = DMS_StaticMission_Arr select IMS_Fortress_SaticMission_Arr;
	{
		_x setDamage 1;				// Kill all units
	} forEach ((_missionInfo select 4) call DMS_fnc_GetAllUnits);
	// AI groups/units are stored in the 3rd index of each mission.
	// The DMS function returns an array of all units, so we can loop over them and kill them.

	// The mission completion info is stored in the 1st index of each mission.
	// This wipes any previous completion info and replaces it with the "external" completion type, which is specifically for cases like this
	// where you want to trigger a mission completion "externally" using a script.
	_missionInfo set [1, [["external",true]]];	
};

publicVariable "IMS_Fortress_AlarmEvent";