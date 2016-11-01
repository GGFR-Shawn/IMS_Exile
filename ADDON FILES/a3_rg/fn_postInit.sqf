/*
	RG Server Addon Pre-init
	Written by Salutesh
	www.reality-gaming.eu
*/

#define CALLFILE(FILE) call compileFinal preprocessFileLineNumbers FILE;
private ["_timeStamp"];
_timeStamp = diag_tickTime;
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "--------------------------- Starting Exile Tanoa Server Addon Pre-Init -----------------------------";
diag_log "------------------------------------------- Version 0.6 --------------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
if (worldName == 'Tanoa') then
{
	diag_log format['[RG Server Addon] Delete terrain objects'];
	CALLFILE("\x\addons\rg\objects\RG_deleteTerrainObjects.sqf");
	diag_log format['[RG Server Addon] Definded Tanoa terrain objects deleted!'];
	diag_log format['[RG Server Addon] Load Tanoa objects'];
	CALLFILE("\x\addons\rg\objects\RG_mapObjects.sqf");
	CALLFILE("\x\addons\rg\objects\RG_buildingObjects.sqf");
	diag_log format['[RG Server Addon] Tanoa objects loaded!'];
	diag_log format['[RG Server Addon] Load Fortress Mission Systems'];
	CALLFILE("\x\addons\rg\missions\fortress\RG_raidObjects.sqf");
	CALLFILE("\x\addons\rg\missions\fortress\RG_raidHoldActionScripts.sqf");
	CALLFILE("\x\addons\rg\missions\fortress\RG_raidHoldActions.sqf");
	CALLFILE("\x\addons\rg\missions\fortress\RG_raidFillSupplybox.sqf");
	CALLFILE("\x\addons\rg\missions\fortress\RG_raidBombingActionEvents.sqf");
	CALLFILE("\x\addons\rg\missions\fortress\RG_raidCompletionEvents.sqf");
	CALLFILE("\x\addons\rg\missions\fortress\RG_raidSetup.sqf");
	CALLFILE("\x\addons\rg\missions\fortress\RG_raidTasks.sqf");
	CALLFILE("\x\addons\rg\missions\fortress\RG_raidToasts.sqf");
	diag_log format['[RG Server Addon] Raid Mission Systems loaded!'];
};
diag_log "----------------------------------------------------------------------------------------------------";
diag_log format["		End of Exile Tanoa Server Addon Pre-Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "----------------------------------------------------------------------------------------------------";