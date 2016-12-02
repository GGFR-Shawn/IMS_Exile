/*
    IMS_raidCompletionEvents.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description:
    This file triggers after the mission to coplete the DMS mission also and remove the interaction objects until the server restarts.
*/

fortressRaidCompletionEvent = {
	// End the DMS mission The Fortress after raid event completion.
	// This grabs the array that contains information about the mission.
	// If you want to use this script on a static mission, then replace "DMS_Mission_Arr" with "DMS_StaticMission_Arr".
	private _missionInfo = DMS_StaticMission_Arr select IMS_FortressSaticMission_Arr;
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