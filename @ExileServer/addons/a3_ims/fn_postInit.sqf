/*
	IMS Server Addon Pre-init
	Written by Salutesh
	www.reality-gaming.eu
*/

#define CALLFILE(FILE) call compileFinal preprocessFileLineNumbers FILE;
private ["_timeStamp"];
_timeStamp = diag_tickTime;
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "---------------- Starting Exile Interactive Mission System Server Addon Pre-Init -------------------";
diag_log "------------------------------------------- Version 0.4 --------------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
if (worldName == 'Tanoa') then
{
	diag_log format['[IMS Server Addon] Load Interactive Mission Systems'];
	diag_log format['[IMS Server Addon] Load Fortress Mission Systems'];
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidObjects.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidHoldActionScripts.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidHoldActions.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidFillSupplybox.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidBombingActionEvents.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidAlarmActionEvents.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidCompletionEvents.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidSetup.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidTasks.sqf");
	CALLFILE("\x\addons\ims\missions\tanoa\fortress\IMS_raidToasts.sqf");
	diag_log format['[IMS Server Addon] Fortress Mission Systems loaded!'];
	diag_log format['[IMS Server Addon] Interactive Mission Systems loaded!'];
};
diag_log "----------------------------------------------------------------------------------------------------";
diag_log format["End of Exile Interactive Mission System Server Addon Pre-Init :: Total Execution Time %1 seconds",(diag_tickTime) - _timeStamp];
diag_log "----------------------------------------------------------------------------------------------------";