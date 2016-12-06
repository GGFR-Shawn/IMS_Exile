/*
    File: fn_InteractionNpcCreate.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description:
	
	COMMING SOON
	
*/

private["_npcClassName","_npcFace","_animations","_position","_direction", "_attachToObject", "_holdAction", "_holdActionTitle", "_holdActionIcon", "_holdActionEvent", "_npc","_animationCount","_npcName"];
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
_npcName = _x select 10;
private _scriptName = format ["IMS_Npc_%1",_npcName];
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
	_npc setVariable ["IMS_Animations", _animations];
	_npc addEventHandler ["AnimDone", {_this call IMS_fnc_InteractionNpcOnAnimationDone}];
};
if (_holdAction) then
{
	[_npc, _holdActionTitle, _holdActionIcon, "_this distance _target < 5", _holdActionEvent, [], 2, true] call IMS_fnc_AddHoldAction;
};

missionNamespace setVariable [_scriptName, _npc, true];
publicVariable _scriptName;

_npc