/*
    File: IMS_raidCompletionEvents.sqf
    Author: Salutesh aka Steve
    
    Description:
    This file triggers after the mission to coplete the DMS mission also and remove the interaction objects until the server restarts.
*/

fortressRaidCompletionEvent = {
	// End the DMS mission The Fortress after raid event completion.
	// This grabs the array that contains information about the mission.
	// If you want to use this script on a static mission, then replace "DMS_Mission_Arr" with "DMS_StaticMission_Arr".
	private _missionInfo = DMS_StaticMission_Arr select 1;
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

fortressRaidRemoveEvent = {
	// Remove left hold actions.
	// There are possibly actions left on the supply crates if they are not used.
	// We just leafe them as loot crates for area visitors :)
	[fortressRaid_toilet_1, 0] remoteExec ["BIS_fnc_holdActionRemove", 0];
	[fortressRaid_toilet_2, 0] remoteExec ["BIS_fnc_holdActionRemove", 0];
	// Delete interaction objects.
	// There are possibly objects left like the supply crates if they are not used.
	// We just leafe them as loot crates for area visitors :)
	deleteVehicle fortressRaid_dokument;
	deleteVehicle fortressRaid_laptop;
	deleteVehicle fortressRaid_terminal;
	deleteVehicle fortressRaid_bomb_1;
	deleteVehicle fortressRaid_bomb_2;
	deleteVehicle fortressRaid_bomb_3;
	deleteVehicle fortressRaid_bomb_4;
	deleteVehicle fortressRaid_bomb_5;
	deleteVehicle fortressRaid_bomb_6;
	deleteVehicle fortressRaid_bomb_7;
	deleteVehicle fortressRaid_charge_1;
	deleteVehicle fortressRaid_charge_2;
	deleteVehicle fortressRaid_charge_3;
	deleteVehicle fortressRaid_charge_4;
	deleteVehicle fortressRaid_charge_5;
	deleteVehicle fortressRaid_charge_6;
	deleteVehicle fortressRaid_charge_7;
};
publicVariable "fortressRaidRemoveEvent";