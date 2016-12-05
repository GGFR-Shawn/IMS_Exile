/*
	IMS_fnc_ImportInteractionCrates
	Created by Salutesh

	Check out Exile Eden Plugin: http://www.exilemod.com/devblog/exile-3den-plugin/

	Usage:
	[
		_file																// String: The filename (or filepath under the objects folder) that contains the exported Exile Eden Plugin objects
	] call IMS_fnc_ImportInteractionCrates;

	_file call IMS_fnc_ImportInteractionCrates; 							// This also works

	This function will simply create the objects from a file that is included to the addons objects folder.
*/

if !(params
[
	["_file","",[""]]
])
exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportInteractionCrates with invalid parameters: %1",_this];
	[]
};

// The next few lines checks to see if the static base has been spawned previously, in order to avoid spawning duplicate objects.
private _varname = format ["IMS_InteractionCrateSpawned_%1",_file];

if (missionNamespace getVariable [_varname,false]) exitWith
{
	diag_log format ["IMS ERROR :: Attempting to spawn supply crate objects with file ""%1"" after it has already been spawned!",_file];
};

missionNamespace setVariable [_varname,true];


private _export = call compile preprocessFileLineNumbers (format ["\x\addons\IMS\objects\%1.sqf",_file]);

if ((isNil "_export") || {!(_export isEqualType [])}) exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportInteractionCrates with invalid file/filepath: %1 | _export: %2",_file,_export];
	[]
};

private _crates = _export apply
{
	// Create the objects.
	private _crate = (_x select 0) createVehicle (_x select 1);
	_crate allowDamage false;
	_crate setPosWorld (_x select 1);
	_crate setVectorDirAndUp [_x select 2, _x select 3];
	_crate enableSimulationGlobal (_x select 4);
	// Remove crate content if there is one.
	clearWeaponCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	// Add needed variables
	_crate setVariable ["ExileIsPersistent", true];
	_crate setVariable ["permaLoot", true];
	_crate setVariable ["ExileIsLocked", -1,true];
	_crate call ExileServer_system_simulationMonitor_addVehicle;
	// Add items to crates.
	_weaponLoot = selectRandom ["SMG_05_F","hgun_PDW2000_F","hgun_ACPC2_F","hgun_P07_F","arifle_ARX_ghex_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F","arifle_MXC_khk_F"];
	_medecineLoot = selectRandom ["Exile_Item_InstaDoc","Exile_Item_Bandage"];
	_magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
	_crate addWeaponCargoGlobal [_weaponLoot, 1];
	_crate addMagazineCargoGlobal [_magazineLoot, (1 + floor(random 3))];
	_crate addItemCargoGlobal [_medecineLoot, (1 + floor(random 3))];
	// Hold action parameters selection.
	_holdActionTitle = _x select 5;
	_holdActionIcon = _x select 6;
	_holdActionConditions = _x select 7;
	_holdActionEvent = _x select 8;
	_objectName = _x select 9;
	private _scriptName = format ["IMS_CrateObject_%1",_objectName];
	
	// Add hold action to object.
	[_crate, _holdActionTitle, _holdActionIcon, _holdActionConditions, _holdActionEvent, [], 2, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];
	
	// Give the object a variable name to work with.
	missionNamespace setVariable [_scriptName, _crate, true];
	publicVariable _scriptName;
	
	_crate;
};

_crates
