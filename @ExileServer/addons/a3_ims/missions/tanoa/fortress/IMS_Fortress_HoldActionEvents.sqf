/*
    IMS_raidHoldActionScripts.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description: 
	Event scripts for the hold actions. 

*/

IMS_Fortress_Terminal_ActionScript = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Close terminal and remove action.
	[IMS_InteractionObject_FortressTerminal, 0] remoteExec ["BIS_fnc_dataTerminalAnimate", -2, true];
	[IMS_InteractionObject_FortressTerminal, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Play ambient music.
	["LeadTrack01_F_EXP", 0] remoteExec ["BIS_fnc_playMusic", IMS_Fortress_PlayerUnits, true];
	// Succsess for third task
	[] remoteExec ["IMS_Fortress_TaskEvent_3_End", IMS_Fortress_PlayerUnits, true];
	// Create the forth mission task.
	[] remoteExec ["IMS_Fortress_TaskEvent_4", IMS_Fortress_PlayerUnits, true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_TaskUpdate", IMS_Fortress_PlayerUnits, true];
	sleep 3;
	[] remoteExec ["IMS_Fortress_Toast_BombActivate", IMS_Fortress_PlayerUnits, true];
	sleep 3;
	// Start timer
	[IMS_Fortress_Timer] remoteExec ["exile_fnc_EndTimer", IMS_Fortress_PlayerUnits, true];
	[] remoteExec ["IMS_Fortress_AlarmEvent", -2, true];
	sleep IMS_Fortress_Timer;
	// Start end events.
	[] remoteExec ["IMS_Fortress_BombEvent", 0, true];
	sleep 20;
	// Succsess for fourth task.
	[] remoteExec ["IMS_Fortress_TaskEvent_4_End", IMS_Fortress_PlayerUnits, true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_MissionComplete", IMS_Fortress_PlayerUnits, true];
	sleep 20;
	// Completion Event.
	[] call IMS_Fortress_DMSCompletionEvent;
	// Spawn loot.
	[[12137,2245.81,0],"B_supplyCrate_F","Raid Loot Drop",true] remoteExec ["IMS_fnc_LootDrop", 0, true];
	// Announce the loot drop.
	[] remoteExec ["IMS_Fortress_Toast_Loot", IMS_Fortress_PlayerUnits, true];
	sleep 10;
	// Spawn vehicle if option is true.
	if (IMS_Fortress_VehicleLoot) then {
		// Create vehicle
		_pos = [12137,2245.81,0];
		_dir = 0;
		_height = 150;
		_type = IMS_Fortress_VehicleLootClass;
		_spawnATL = false;
		_pinCode = (1000 +(round (random 8999)));
		// Put vehicle Pincode into a variable.
		IMS_Fortress_VehiclePinCode = _pinCode;
		publicVariable "IMS_Fortress_VehiclePinCode";
		// Spawn Vehicle
		[_pos,_dir,_height,_type,_spawnATL,_pinCode] call IMS_fnc_VehicleSpawn;
		sleep 2;
		[] remoteExec ["IMS_Fortress_Toast_VehicleLoot", IMS_Fortress_PlayerUnits, true];
	};
};

IMS_Fortress_Laptop_ActionScript = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[IMS_InteractionObject_FortressLaptop, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Open central gate
	IMS_ScriptObject_FortressGate setVariable ["ExileIsLocked", 0, true];
	// Open cetral tower doors
	((nearestobjects [[12103.6,2491.62,0], ["Land_Cargo_Tower_V1_No1_F"], 150]) select 0) setVariable ['bis_disabled_Door_1',0,true];
	((nearestobjects [[12103.6,2491.62,0], ["Land_Cargo_Tower_V1_No1_F"], 150]) select 0) setVariable ['bis_disabled_Door_2',0,true];
	((nearestobjects [[12103.6,2491.62,0], ["Land_Cargo_Tower_V1_No1_F"], 150]) select 0) setVariable ['bis_disabled_Door_3',0,true];
	// Notifiy player with toast
	[] remoteExec ["IMS_Fortress_Toast_Laptop", IMS_Fortress_PlayerUnits, true];
	sleep 3;
	// Succsess for second task
	[] remoteExec ["IMS_Fortress_TaskEvent_2_End", IMS_Fortress_PlayerUnits, true];
	// Create the third mission task.
	[] remoteExec ["IMS_Fortress_TaskEvent_3", IMS_Fortress_PlayerUnits, true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_TaskUpdate", IMS_Fortress_PlayerUnits, true];
};

IMS_Fortress_SupplyBox_ActionScript_1 = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[IMS_InteractionObject_FortressSupplyBox_1, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Fill the crate.
	[IMS_InteractionObject_FortressSupplyBox_1] remoteExec ["IMS_fnc_FillSupplyBox", [0,-2], true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_Supply", IMS_Fortress_PlayerUnits, true];
};

IMS_Fortress_SupplyBox_ActionScript_2 = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[IMS_InteractionObject_FortressSupplyBox_2, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Fill the crate.
	[IMS_InteractionObject_FortressSupplyBox_2] remoteExec ["IMS_fnc_FillSupplyBox", [0,-2], true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_Supply", IMS_Fortress_PlayerUnits, true];
};

IMS_Fortress_SupplyBox_ActionScript_3 = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[IMS_InteractionObject_FortressSupplyBox_3, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Fill the crate.
	[IMS_InteractionObject_FortressSupplyBox_3] remoteExec ["IMS_fnc_FillSupplyBox", [0,-2], true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_Supply", IMS_Fortress_PlayerUnits, true];
};

IMS_Fortress_SupplyBox_ActionScript_4 = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[IMS_InteractionObject_FortressSupplyBox_4, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Fill the crate.
	[IMS_InteractionObject_FortressSupplyBox_4] remoteExec ["IMS_fnc_FillSupplyBox", [0,-2], true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_Supply", IMS_Fortress_PlayerUnits, true];
};

IMS_Fortress_SupplyBox_ActionScript_5 = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[IMS_InteractionObject_FortressSupplyBox_5, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Fill the crate.
	[IMS_InteractionObject_FortressSupplyBox_5] remoteExec ["IMS_fnc_FillSupplyBox", [0,-2], true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_Supply", IMS_Fortress_PlayerUnits, true];
};

IMS_Fortress_Toilet_ActionScript_1 = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[IMS_InteractionObject_FortressToilet_1, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_Toilet", IMS_Fortress_PlayerUnits, true];
};

IMS_Fortress_Toilet_ActionScript_2 = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[IMS_InteractionObject_FortressToilet_2, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_Toilet", IMS_Fortress_PlayerUnits, true];
};

IMS_Fortress_Dokument_ActionScript = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action for all clients after use.
	[IMS_InteractionObject_FortressDokument, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Play ambient music for players in mission area.
	["AmbientTrack01_F_EXP", 0] remoteExec ["BIS_fnc_playMusic", IMS_Fortress_PlayerUnits];
	// Notifiy toast for players in mission area.
	[] remoteExec ["IMS_Fortress_Toast_Dokuments", IMS_Fortress_PlayerUnits, true];
	// Create the first mission task for players in mission area.
	[] remoteExec ["IMS_Fortress_TaskEvent_1", IMS_Fortress_PlayerUnits, true];
	// Wait 3 seconds
	sleep 3;
	// Notifiy toast for players in mission area.
	[] remoteExec ["IMS_Fortress_Toast_NewTask", IMS_Fortress_PlayerUnits, true];
};

IMS_Fortress_Bomb_ActionScript = {
	// Define mission player units.
	IMS_Fortress_PlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_ActiveBomb", IMS_Fortress_PlayerUnits, true];
	// Wait 3 seconds.
	sleep 3;
	// Succsess for first task
	[] remoteExec ["IMS_Fortress_TaskEvent_1_End", IMS_Fortress_PlayerUnits, true];
	// Create the second mission task.
	[] remoteExec ["IMS_Fortress_TaskEvent_2", IMS_Fortress_PlayerUnits, true];
	// Notifiy player with toast.
	[] remoteExec ["IMS_Fortress_Toast_TaskUpdate", IMS_Fortress_PlayerUnits, true];
	// Remove the bomb hold actions.
	[IMS_InteractionObject_FortressBomb_1, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[IMS_InteractionObject_FortressBomb_2, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[IMS_InteractionObject_FortressBomb_3, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[IMS_InteractionObject_FortressBomb_4, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[IMS_InteractionObject_FortressBomb_5, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[IMS_InteractionObject_FortressBomb_6, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[IMS_InteractionObject_FortressBomb_7, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
};