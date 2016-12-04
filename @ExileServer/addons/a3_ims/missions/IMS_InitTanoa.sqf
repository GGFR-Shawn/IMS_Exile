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
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_Fortress_GlobalVars.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_Fotress_Tasks.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_Fotress_Toasts.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_Fortress_HoldActionScripts.sqf");
	diag_log format['[IMS Server Addon] Fortress Mission loaded!'];
};

diag_log format['[IMS Server Addon] Interactive Mission Systems loaded!'];
diag_log "----------------------------------------------------------------------------------------------------";
diag_log format["End of Exile Interactive Mission System Server Addon Pre-Init :: Total Execution Time %1 seconds",(diag_tickTime) - _timeStamp];
diag_log "----------------------------------------------------------------------------------------------------";