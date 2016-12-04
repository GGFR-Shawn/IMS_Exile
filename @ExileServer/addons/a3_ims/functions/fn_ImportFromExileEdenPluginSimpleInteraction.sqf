/*
	IMS_fnc_ImportFromExileEdenPluginSimpleInteraction
	Created by Salutesh

	Check out Exile Eden Plugin: http://www.exilemod.com/devblog/exile-3den-plugin/

	Usage:
	[
		_file																	// String: The filename (or filepath under the objects folder) that contains the exported Exile Eden Plugin simple objects.
	] call IMS_fnc_ImportFromExileEdenPluginSimpleInteraction;

	_file call IMS_fnc_ImportFromExileEdenPluginSimpleInteraction; 						// This also works

	This function will simply create the objects from a file that is included to the addons objects folder.
*/

if !(params
[
	["_file","",[""]]
])
exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportFromExileEdenPluginSimpleInteraction with invalid parameters: %1",_this];
	[]
};

// The next few lines checks to see if the static base has been spawned previously, in order to avoid spawning duplicate objects.
private _varname = format ["IMS_StaticBaseSpawned_%1",_file];

if (missionNamespace getVariable [_varname,false]) exitWith
{
	diag_log format ["IMS ERROR :: Attempting to spawn simple interaction objects with file ""%1"" after it has already been spawned!",_file];
};

missionNamespace setVariable [_varname,true];


private _export = call compile preprocessFileLineNumbers (format ["\x\addons\IMS\objects\%1.sqf",_file]);

if ((isNil "_export") || {!(_export isEqualType [])}) exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportFromExileEdenPluginSimpleInteraction with invalid file/filepath: %1 | _export: %2",_file,_export];
	[]
};

private _objs = _export apply
{
	private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
	private _simpleObject = createSimpleObject [_x select 0, _x select 1];
	_simpleObject setVectorDirAndUp [_x select 2, _x select 3];
	_holdActionTitle = _x select 4;
	_holdActionIcon = _x select 5;
	_holdActionConditions = _x select 6;
	_holdActionEvent = _x select 7;
	_objectName = _x select 8;
	private _scriptName = format ["IMS_SimpleInteractionObject_%1",_objectName];
	{
		if ((toLower _x) in _invisibleSelections) then 
		{
			_simpleObject hideSelection [_x, true];
		};
	}
	forEach (selectionNames _simpleObject);
	
	// Add hold action to object.
	[_simpleObject, _holdActionTitle, _holdActionIcon, _holdActionConditions, _holdActionEvent, [], 2, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];
	
	// Give the object a variable name to work with.
	missionNamespace setVariable [_scriptName, _simpleObject, true];
	publicVariable _scriptName;
};


_objs
