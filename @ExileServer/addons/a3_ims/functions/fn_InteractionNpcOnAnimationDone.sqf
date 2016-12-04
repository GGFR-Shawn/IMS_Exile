/*
    File: fn_InteractionNpcOnAnimationDone.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description:
	Npc animation switcher.
*/
 
private["_npc","_animations"];
_npc = _this select 0;
_animations = _npc getVariable ["IMS_Animations", []];
_npc switchMove (_animations select floor(random (count _animations)));
true