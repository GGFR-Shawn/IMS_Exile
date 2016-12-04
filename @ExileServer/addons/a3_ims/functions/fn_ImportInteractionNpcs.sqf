/*
	IMS_fnc_ImportInteractionNpcs
	Created by Salutesh

	Check out Exile Eden Plugin: http://www.exilemod.com/devblog/exile-3den-plugin/
	
	Usage:
	[
		_file							// String: The filename (or filepath under the objects folder) that contains the exported npcs.
	] call IMS_fnc_ImportInteractionNpcs;

	_file call IMS_fnc_ImportInteractionNpcs; // This also works

	This function will simply create the interaction npcs from a file that return a list of those npcs.
*/

if !(params
[
	["_file","",[""]]
])
exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportInteractionNpcs with invalid parameters: %1",_this];
	[]
};

// The next few lines checks to see if the interaction npc has been spawned previously, in order to avoid spawning duplicate npcs.
private _varname = format ["IMS_InteractionNpc_%1",_file];

if (missionNamespace getVariable [_varname,false]) exitWith
{
	diag_log format ["IMS ERROR :: Attempting to spawn ineraction npcs with file ""%1"" after it has already been spawned!",_file];
};

missionNamespace setVariable [_varname,true];


private _export = call compile preprocessFileLineNumbers (format ["\x\addons\IMS\npcs\%1.sqf",_file]);

if ((isNil "_export") || {!(_export isEqualType [])}) exitWith
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_ImportInteractionNpcs with invalid file/filepath: %1 | _export: %2",_file,_export];
	[]
};

private _npcs = _export apply
{
	_npcClassName = _this select 0;
	_npcFace = _this select 1;
	_animations = _this select 2;
	_position = _this select 3;
	_direction = _this select 4;
	_attachToObject = [_this, 5, objNull] call BIS_fnc_param;
	_holdAction = _this select 6;
	_holdActionTitle = _this select 7;
	_holdActionIcon = _this select 8;
	_holdActionEvent = _this select 9;
	_npc = _npcClassName createVehicleLocal [0,0,0];
	_npc setVariable ["BIS_enableRandomization", false];
	_npc setVariable ["BIS_fnc_animalBehaviour_disable", true];
	_npc disableAI "ANIM";
	_npc disableAI "MOVE";
	_npc disableAI "FSM";
	_npc disableAI "AUTOTARGET";
	_npc disableAI "TARGET";
	_npc disableAI "CHECKVISIBLE";
	_npc allowDamage false; 
	_npc removeAllEventHandlers "HandleDamage";
	_npc setFace _npcFace;
	if (isNull _attachToObject) then
	{
		_attachToObject = "Logic" createVehicleLocal [0, 0, 0];
		_attachToObject setPosATL _position;
		_position = [0, 0, 0];
	};
	_npc reveal _attachToObject;
	_attachToObject disableCollisionWith _npc;         
	_npc disableCollisionWith _attachToObject; 
	_npc attachTo [_attachToObject, _position];
	_npc setDir _direction;
	_npc switchMove (_animations select 0);
	_animationCount = count _animations;
	if (_animationCount > 1) then
	{
		_npc setVariable ["RGAnimations", _animations];
		_npc addEventHandler ["AnimDone", {_this call RG_fnc_NpcOnAnimationDone}];
	};
	if (_holdAction) then
	{
		[_npc, _holdActionTitle, _holdActionIcon, "_this distance _target < 5", _holdActionEvent, [], 2, true] remoteExec ["RG_fnc_AddHoldAction", 0, true];
	};
};


_npcs
