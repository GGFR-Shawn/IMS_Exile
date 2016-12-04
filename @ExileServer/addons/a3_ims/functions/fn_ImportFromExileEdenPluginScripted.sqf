/*
	IMS_fnc_ImportFromExileEdenPluginScripted
	Created by Salutesh

	Check out Exile Eden Plugin: http://www.exilemod.com/devblog/exile-3den-plugin/
	
	Usage:
	[
		_file																// String: The filename (or filepath under the objects folder) that contains the exported Exile Eden Plugin objects
	] call IMS_fnc_ImportFromExileEdenPluginScripted;

	_file call IMS_fnc_ImportFromExileEdenPluginScripted; 					// This also works

	This function will simply create the objects from a file that is included to the addons objects folder.
*/

if !(params
[
	["_file","",[""]]
])
exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportFromExileEdenPluginScripted with invalid parameters: %1",_this];
	[]
};

// The next few lines checks to see if the static base has been spawned previously, in order to avoid spawning duplicate objects.
private _varname = format ["IMS_StaticBaseSpawned_%1",_file];

if (missionNamespace getVariable [_varname,false]) exitWith
{
	diag_log format ["IMS ERROR :: Attempting to spawn script objects with file ""%1"" after it has already been spawned!",_file];
};

missionNamespace setVariable [_varname,true];


private _export = call compile preprocessFileLineNumbers (format ["\x\addons\IMS\objects\%1.sqf",_file]);

if ((isNil "_export") || {!(_export isEqualType [])}) exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportFromExileEdenPluginScripted with invalid file/filepath: %1 | _export: %2",_file,_export];
	[]
};

private _objs = _export apply
{
	private _vehicle = (_x select 0) createVehicle (_x select 1);
	_vehicle allowDamage false;
	_vehicle setPosWorld (_x select 1);
	_vehicle setVectorDirAndUp [_x select 2, _x select 3];
	_vehicle enableSimulationGlobal (_x select 4);
	_vehicle setVariable ["ExileIsLocked", -1, true];
	_objectName = _x select 5;
	private _scriptName = format ["IMS_ScriptObject_%1",_objectName];
	
	if (_vehicle isKindOf "Land_DataTerminal_01_F") then
	{
		[_vehicle,"red","orange","blue"] call BIS_fnc_DataTerminalColor;
		[_vehicle, 3] call BIS_fnc_dataTerminalAnimate;
	};
	
	if (_vehicle isKindOf "Land_Cargo_Tower_V1_No1_F") then
	{
		_vehicle setVariable ['bis_disabled_Door_1',1,true];
		_vehicle setVariable ['bis_disabled_Door_2',1,true];
		_vehicle setVariable ['bis_disabled_Door_3',1,true];
	};
	
	missionNamespace setVariable [_scriptName, _vehicle, true];
	publicVariable _scriptName;
	
	_vehicle;
};

_objs
