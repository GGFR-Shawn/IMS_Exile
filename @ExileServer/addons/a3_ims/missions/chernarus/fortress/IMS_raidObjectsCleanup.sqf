/*
    IMS_raidObjectsCleanup.sqf
	
	Created with Exile Mod 3DEN Plugin
	www.exilemod.com
	
    Written by Salutesh
    www.reality-gaming.eu
	
    Description:
    Spawns the fortress raid mission objects.
*/

fortessRaidObjectCleanup = {	
	{deleteVehicle _x;} forEach allDead;
	{deleteVehicle _x;} forEach nearestObjects [[6896.07,11434.2,0],["WeaponHolder","GroundWeaponHolder"],200];
	// Remove left hold actions.
	[fortressRaid_toilet_1, 0] remoteExec ["BIS_fnc_holdActionRemove", 0];
	[fortressRaid_supplybox_1, 0] remoteExec ["BIS_fnc_holdActionRemove", 0];
	[fortressRaid_supplybox_2, 0] remoteExec ["BIS_fnc_holdActionRemove", 0];
	[fortressRaid_supplybox_2, 0] remoteExec ["BIS_fnc_holdActionRemove", 0];
	[fortressRaid_supplybox_4, 0] remoteExec ["BIS_fnc_holdActionRemove", 0];
	[fortressRaid_supplybox_5, 0] remoteExec ["BIS_fnc_holdActionRemove", 0];
	// Delete interaction objects.
	deleteVehicle fortressRaid_dokument;
	deleteVehicle fortressRaid_laptop;
	deleteVehicle fortressRaid_terminal;
	deleteVehicle fortressRaid_bomb_1;
	deleteVehicle fortressRaid_bomb_2;
	deleteVehicle fortressRaid_bomb_3;
	deleteVehicle fortressRaid_bomb_4;
	deleteVehicle fortressRaid_bomb_5;
	deleteVehicle fortressRaid_charge_1;
	deleteVehicle fortressRaid_charge_2;
	deleteVehicle fortressRaid_charge_3;
	deleteVehicle fortressRaid_charge_4;
	deleteVehicle fortressRaid_charge_5;
	deleteVehicle fortressRaid_supplybox_1;
	deleteVehicle fortressRaid_supplybox_2;
	deleteVehicle fortressRaid_supplybox_3;
	deleteVehicle fortressRaid_supplybox_4;
	deleteVehicle fortressRaid_supplybox_5;
};
publicVariable "fortessRaidObjectCleanup";