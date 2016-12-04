/*
	IMS Server Addon Post-Init File
	Written by Salutesh
	www.reality-gaming.eu
*/

#define CALLFILE(FILE) call compileFinal preprocessFileLineNumbers FILE;
private ["_timeStamp"];
_timeStamp = diag_tickTime;
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "---------------- Starting Exile Interactive Mission System Server Addon Pre-Init -------------------";
diag_log "----------------------------------------- Version 0.5.0 --------------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
diag_log format['[IMS Server Addon] Load Interactive Mission Systems'];
diag_log format['[IMS Server Addon] Load Fortress Mission Systems'];

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
	diag_log format['[IMS Server Addon] Fortress Mission loaded!'];
};

diag_log format['[IMS Server Addon] Interactive Mission Systems loaded!'];
diag_log "----------------------------------------------------------------------------------------------------";
diag_log format["End of Exile Interactive Mission System Server Addon Pre-Init :: Total Execution Time %1 seconds",(diag_tickTime) - _timeStamp];
diag_log "----------------------------------------------------------------------------------------------------";