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
diag_log "----------------------------------------- Version 0.4.5 --------------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
diag_log format['[IMS Server Addon] Load Interactive Mission Systems'];
diag_log format['[IMS Server Addon] Load Fortress Mission Systems'];
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidEventHandler.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidInteractionObjects.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidHoldActionScripts.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidHoldActions.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidFillSupplybox.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidBombingActionEvents.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidAlarmActionEvents.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidCompletionEvents.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidSetup.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidTasks.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidToasts.sqf");
CALLFILE("\x\addons\ims\missions\chernarus\fortress\IMS_raidObjectsCleanup.sqf");
diag_log format['[IMS Server Addon] Fortress Mission Systems loaded!'];
diag_log format['[IMS Server Addon] Interactive Mission Systems loaded!'];
diag_log "----------------------------------------------------------------------------------------------------";
diag_log format["End of Exile Interactive Mission System Server Addon Pre-Init :: Total Execution Time %1 seconds",(diag_tickTime) - _timeStamp];
diag_log "----------------------------------------------------------------------------------------------------";