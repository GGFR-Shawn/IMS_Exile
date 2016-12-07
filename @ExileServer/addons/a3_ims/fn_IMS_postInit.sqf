/*
	IMS Server Addon Post-Init File
	Written by Salutesh
	www.reality-gaming.eu
*/

#define CALLFILE(FILE) call compileFinal preprocessFileLineNumbers FILE;
private ["_timeStamp"];
_timeStamp = diag_tickTime;

if (worldName == 'Tanoa') then
{
	diag_log "----------------------------------------------------------------------------------------------------";
	diag_log "---------------- Starting Exile Interactive Mission System Server Addon Post-Init ------------------";
	diag_log "----------------------------------------- Version 0.5.0 --------------------------------------------";
	diag_log "----------------------------------------------------------------------------------------------------";
	diag_log format['[IMS Server Addon] Load Interactive Mission Systems'];
	if (IMS_Fortress_MissionActive) then {
		// Mission Scripts
		CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_Fortress_GlobalVars.sqf");
		CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_Fotress_Tasks.sqf");
		CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_Fotress_Toasts.sqf");
		CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_Fortress_HoldActionEvents.sqf");
		// Mission Objects
		["tanoa\fortress\Objects"] call IMS_fnc_ImportFromExileEdenPlugin;
		["tanoa\fortress\InteractionObjects"] call IMS_fnc_ImportFromExileEdenPluginInteraction;
		["tanoa\fortress\ScriptObjects"] call IMS_fnc_ImportFromExileEdenPluginScripted;
		["tanoa\fortress\SimpleObjects"] call IMS_fnc_ImportFromExileEdenPluginSimple;
		["tanoa\fortress\CrateObjects"] call IMS_fnc_ImportInteractionCrates;
		diag_log format['[IMS Server Addon] [Tanoa] Fortress Mission active!'];
	};
	diag_log format['[IMS Server Addon] Interactive Mission Systems loaded!'];
	diag_log "----------------------------------------------------------------------------------------------------";
	diag_log format["End of Exile Interactive Mission System Server Addon Post-Init :: Total Execution Time %1 seconds",(diag_tickTime) - _timeStamp];
	diag_log "----------------------------------------------------------------------------------------------------";
};

if (worldName == 'Chernarus') then
{
	diag_log "----------------------------------------------------------------------------------------------------";
	diag_log "---------------- Starting Exile Interactive Mission System Server Addon Post-Init ------------------";
	diag_log "----------------------------------------- Version 0.5.0 --------------------------------------------";
	diag_log "----------------------------------------------------------------------------------------------------";
	diag_log format['[IMS Server Addon] Load Interactive Mission Systems'];
	if (IMS_Fortress_MissionActive) then {
		// Mission Scripts
		CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_Fortress_GlobalVars.sqf");
		CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_Fotress_Tasks.sqf");
		CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_Fotress_Toasts.sqf");
		CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_Fortress_HoldActionEvents.sqf");
		// Mission Objects
		["chernarus\fortress\Objects"] call IMS_fnc_ImportFromExileEdenPlugin;
		["chernarus\fortress\InteractionObjects"] call IMS_fnc_ImportFromExileEdenPluginInteraction;
		["chernarus\fortress\ScriptObjects"] call IMS_fnc_ImportFromExileEdenPluginScripted;
		["chernarus\fortress\SimpleObjects"] call IMS_fnc_ImportFromExileEdenPluginSimple;
		["chernarus\fortress\CrateObjects"] call IMS_fnc_ImportInteractionCrates;
		diag_log format['[IMS Server Addon] [Chernarus] Fortress Mission active!'];
	};
	diag_log format['[IMS Server Addon] Interactive Mission Systems loaded!'];
	diag_log "----------------------------------------------------------------------------------------------------";
	diag_log format["End of Exile Interactive Mission System Server Addon Post-Init :: Total Execution Time %1 seconds",(diag_tickTime) - _timeStamp];
	diag_log "----------------------------------------------------------------------------------------------------";
};

if (worldName == 'Altis') then
{
	diag_log "----------------------------------------------------------------------------------------------------";
	diag_log "---------------- Starting Exile Interactive Mission System Server Addon Post-Init ------------------";
	diag_log "----------------------------------------- Version 0.5.0 --------------------------------------------";
	diag_log "----------------------------------------------------------------------------------------------------";
	diag_log format['[IMS Server Addon] Load Interactive Mission Systems'];
	if (IMS_Overmind_MissionActive) then {
		CALLFILE("\x\addons\ims\missions\altis\overmind\IMS_Overmind_Toasts.sqf");
		CALLFILE("\x\addons\ims\missions\altis\overmind\IMS_Overmind_HoldActionEvents.sqf");
		// Mission Objects
		["altis\overmind\Objects"] call IMS_fnc_ImportFromExileEdenPlugin;
		["altis\overmind\InteractionObjects"] call IMS_fnc_ImportFromExileEdenPluginInteraction;
		["altis\overmind\ScriptObjects"] call IMS_fnc_ImportFromExileEdenPluginScripted;
		diag_log format['[IMS Server Addon] [Altis] Overmind Mission active!'];
	};
	diag_log format['[IMS Server Addon] Interactive Mission Systems loaded!'];
	diag_log "----------------------------------------------------------------------------------------------------";
	diag_log format["End of Exile Interactive Mission System Server Addon Post-Init :: Total Execution Time %1 seconds",(diag_tickTime) - _timeStamp];
	diag_log "----------------------------------------------------------------------------------------------------";
};

// This code is NECESSARY for spawning persistent vehicles. DO NOT REMOVE THIS CODE UNLESS YOU KNOW WHAT YOU ARE DOING
if !("isKnownAccount:IMS_PersistentVehicle" call ExileServer_system_database_query_selectSingleField) then
{
	"createAccount:IMS_PersistentVehicle:IMS_PersistentVehicle" call ExileServer_system_database_query_fireAndForget;
};