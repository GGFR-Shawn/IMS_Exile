/*
    File: IMS_raidHoldActionScripts.sqf
    Author: Salutesh aka Steve
	www.reality-gaming.eu
    
    Description: Event scripts for the hold actions.  
*/

fortressRaid_terminal_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Close terminal and remove action.
	[fortressRaid_terminal, 0] remoteExec ["BIS_fnc_dataTerminalAnimate", -2, true];
	[fortressRaid_terminal, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Play ambient music.
	["LeadTrack01_F_EXP", 0] remoteExec ["BIS_fnc_playMusic", FortressPlayerUnits, true];
	// Succsess for third task
	[] remoteExec ["fortressRaidTask_ThreeEnd", FortressPlayerUnits, true];
	// Create the forth mission task.
	[] remoteExec ["fortressRaidTask_Four", FortressPlayerUnits, true];
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastTaskUpdated", FortressPlayerUnits, true];
	sleep 3;
	[] remoteExec ["fortressRaid_ToastBombActivated", FortressPlayerUnits, true];
	sleep 3;
	// Start timer
	[180] remoteExec ["exile_fnc_raidEndTimer", FortressPlayerUnits, true];
	[] remoteExec ["fortressRaidAlarmEvent", -2, true];
	sleep 180;
	// Start end events.
	[] remoteExec ["fortressRaidAlarmEvent", -2, true];
	sleep 2;
	[] remoteExec ["fortressRaidBombingEvent", 0, true];
	sleep 20;
	// Succsess for fourth task.
	[] remoteExec ["fortressRaidTask_FourEnd", FortressPlayerUnits, true];
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastComplete", FortressPlayerUnits, true];
	sleep 20;
	[] call fortressRaidCompletionEvent;
	[[12137,2245.81,0],"B_supplyCrate_F","Raid Loot Drop",true] remoteExec ["IMS_fnc_raidDrop", 0, true];
	// Announce the loot drop.
	[] remoteExec ["fortressRaid_ToastLoot", FortressPlayerUnits, true];
	sleep 10;
	[] remoteExec ["fortressRaidRemoveEvent", -2, true];
};

fortressRaid_laptop_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[fortressRaid_laptop, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Open central gate
	fortressRaid_gate setVariable ["ExileIsLocked", 0, true];
	// Open cetral tower doors
	((nearestobjects [[12103.6,2491.62,0], ["Land_Cargo_Tower_V1_No1_F"], 150]) select 0) setVariable ['bis_disabled_Door_1',0,true];
	((nearestobjects [[12103.6,2491.62,0], ["Land_Cargo_Tower_V1_No1_F"], 150]) select 0) setVariable ['bis_disabled_Door_2',0,true];
	((nearestobjects [[12103.6,2491.62,0], ["Land_Cargo_Tower_V1_No1_F"], 150]) select 0) setVariable ['bis_disabled_Door_3',0,true];
	// Notifiy player with toast
	[] remoteExec ["fortressRaid_ToastLaptop", FortressPlayerUnits, true];
	sleep 3;
	// Succsess for second task
	[] remoteExec ["fortressRaidTask_TwoEnd", FortressPlayerUnits, true];
	// Create the third mission task.
	[] remoteExec ["fortressRaidTask_Three", FortressPlayerUnits, true];
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastTaskUpdated", FortressPlayerUnits, true];
};

fortressRaid_supplybox_1_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[fortressRaid_supplybox_1, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Fill the crate.
	[] remoteExec ["raid_fnc_supplybox_1", -2, true];
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastSupply", FortressPlayerUnits, true];
};

fortressRaid_supplybox_2_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[fortressRaid_supplybox_2, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Fill the crate.
	[] remoteExec ["raid_fnc_supplybox_2", -2, true];
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastSupply", FortressPlayerUnits, true];
};

fortressRaid_supplybox_3_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[fortressRaid_supplybox_3, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Fill the crate.
	[] remoteExec ["raid_fnc_supplybox_3", -2, true];
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastSupply", FortressPlayerUnits, true];
};

fortressRaid_supplybox_4_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[fortressRaid_supplybox_4, 0] remoteExec ["bis_fnc_holdActionRemove", -2, true];
	// Fill the crate.
	[] remoteExec ["raid_fnc_supplybox_4", -2, true];
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastSupply", FortressPlayerUnits, true];
};

fortressRaid_supplybox_5_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action.
	[fortressRaid_supplybox_5, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Fill the crate.
	[] remoteExec ["raid_fnc_supplybox_5", -2, true];
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastSupply", FortressPlayerUnits, true];
};

fortressRaid_toilet_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastToilet", FortressPlayerUnits, true];
};

fortressRaid_dokument_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Remove action for all clients after use.
	[fortressRaid_dokument, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	// Play ambient music for players in mission area.
	["AmbientTrack01_F_EXP", 0] remoteExec ["BIS_fnc_playMusic", FortressPlayerUnits];
	// Notifiy toast for players in mission area.
	[] remoteExec ["fortressRaid_ToastDokuments", FortressPlayerUnits, true];
	// Create the first mission task for players in mission area.
	[] remoteExec ["fortressRaidTask_One", FortressPlayerUnits, true];
	// Wait 3 seconds.
	sleep 3;
	// Notifiy toast for players in mission area.
	[] remoteExec ["fortressRaid_ToastNewTask", FortressPlayerUnits, true];
};

fortressRaid_bomb_ActionScript = {
	// Put players in mission area into string
	FortressPlayerUnits = ([12103.6,2491.62,0] nearEntities ["Exile_Unit_Player", 250]);
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastActiveBomb", FortressPlayerUnits, true];
	// Wait 3 seconds.
	sleep 3;
	// Succsess for first task
	[] remoteExec ["fortressRaidTask_OneEnd", FortressPlayerUnits, true];
	// Create the second mission task.
	[] remoteExec ["fortressRaidTask_Two", FortressPlayerUnits, true];
	// Notifiy player with toast.
	[] remoteExec ["fortressRaid_ToastTaskUpdated", FortressPlayerUnits, true];
	// Remove the bomb hold actions.
	[fortressRaid_bomb_1, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[fortressRaid_bomb_2, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[fortressRaid_bomb_3, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[fortressRaid_bomb_4, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[fortressRaid_bomb_5, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[fortressRaid_bomb_6, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
	[fortressRaid_bomb_7, 0] remoteExec ["bis_fnc_holdActionRemove", 0, true];
};