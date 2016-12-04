/*
	IMS_fnc_ImportFromExileEdenPluginInteraction
	Created by Salutesh

	Check out Exile Eden Plugin: http://www.exilemod.com/devblog/exile-3den-plugin/

	Usage:
	[
		_file																// String: The filename (or filepath under the objects folder) that contains the exported Exile Eden Plugin objects
	] call IMS_fnc_ImportFromExileEdenPluginInteraction;

	_file call IMS_fnc_ImportFromExileEdenPluginInteraction; 				// This also works

	This function will simply create the objects from a file that is included to the addons objects folder.
*/

if !(params
[
	["_file","",[""]]
])
exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportFromExileEdenPluginInteraction with invalid parameters: %1",_this];
	[]
};

// The next few lines checks to see if the static base has been spawned previously, in order to avoid spawning duplicate objects.
private _varname = format ["IMS_StaticBaseSpawned_%1",_file];

if (missionNamespace getVariable [_varname,false]) exitWith
{
	diag_log format ["IMS ERROR :: Attempting to spawn interaction objects with file ""%1"" after it has already been spawned!",_file];
};

missionNamespace setVariable [_varname,true];


private _export = call compile preprocessFileLineNumbers (format ["\x\addons\IMS\objects\%1.sqf",_file]);

if ((isNil "_export") || {!(_export isEqualType [])}) exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportFromExileEdenPluginInteraction with invalid file/filepath: %1 | _export: %2",_file,_export];
	[]
};

private _objs = _export apply
{
	// Create the objects
	private _vehicle = (_x select 0) createVehicle (_x select 1);
	_vehicle allowDamage false;
	_vehicle setPosWorld (_x select 1);
	_vehicle setVectorDirAndUp [_x select 2, _x select 3];
	_vehicle enableSimulationGlobal (_x select 4);
	_vehicle setVariable ["ExileIsLocked", -1, true];
	_holdActionTitle = _x select 5;
	_holdActionIcon = _x select 6;
	_holdActionConditions = _x select 7;
	_holdActionEvent = _x select 8;
	_objectName = _x select 9;
	private _scriptName = format ["IMS_InteractionObject_%1",_objectName];
	
	// Check if object is kind of Terminal.
	if (_vehicle isKindOf "Land_DataTerminal_01_F") then
	{
		_vehicle setVariable ["ExileIsPersistent", true];
		[_vehicle,"red","orange","blue"] call BIS_fnc_DataTerminalColor;
		[_vehicle, 3] call BIS_fnc_dataTerminalAnimate;
		_vehicle call ExileServer_system_simulationMonitor_addVehicle;
	};
	
	// Check if object is kind of loot crate.
	if (_vehicle isKindOf "Box_Syndicate_Ammo_F") then
	{
		_vehicle setVariable ["ExileIsPersistent", true];
		_vehicle setVariable ["ExileIsContainer", true];
		_vehicle setVariable ["permaLoot", true];
		_vehicle call ExileServer_system_simulationMonitor_addVehicle;
	};
	
	// Add hold action to object.
	[_vehicle, _holdActionTitle, _holdActionIcon, _holdActionConditions, _holdActionEvent, [], 2, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];
	
	// Give the object a variable name to work with.
	missionNamespace setVariable [_scriptName, _vehicle, true];
	publicVariable _scriptName;
	
	_vehicle;
};

_objs
