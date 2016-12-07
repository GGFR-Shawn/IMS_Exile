/*
    IMS_raidHoldActionScripts.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description: 
	Event scripts for the hold actions. 

*/
IMS_Overmind_Keyboard_ActionScript = {
	// Define mission player units.
	_playerUnits = ([16060,16962.4,0] nearEntities ["Exile_Unit_Player", 250]);
	// Notify player with toast..
	[] remoteExec ["IMS_Overmind_Toast_Keyboard", _playerUnits, true];
};

IMS_Overmind_PC_ActionScript = {
	// Define mission player units.
	_playerUnits = ([16060,16962.4,0] nearEntities ["Exile_Unit_Player", 250]);
	// Set screens object texture
	IMS_ScriptObject_OvermindDualscreen_1 setObjectTextureGlobal [0, "textures\exile_os.jpg"];
	IMS_ScriptObject_OvermindDualscreen_2 setObjectTextureGlobal [0, "textures\exile_os.jpg"];
	IMS_ScriptObject_OvermindScreen setObjectTextureGlobal [0, "textures\exile_os.jpg"];
	// Add hold action to keyboard object.
	[IMS_ScriptObject_OvermindKeyboard, "Download files..", "hack", "_this distance _target < 5", {remoteExec ["IMS_Overmind_Keyboard_ActionScript", 0, true];}, [], 2, true] call IMS_fnc_AddHoldAction;
	// Notify player with toast..
	[] remoteExec ["IMS_Overmind_Toast_PC", _playerUnits, true];
};


IMS_Overmind_Generator_ActionScript = {
	// Define mission player units.
	_playerUnits = ([16060,16962.4,0] nearEntities ["Exile_Unit_Player", 250]);
	// Add hold action to pc object.
	[IMS_ScriptObject_OvermindPc, "Activate computer", "use", "_this distance _target < 5", {remoteExec ["IMS_Overmind_PC_ActionScript", 0, true];}, [], 2, true] call IMS_fnc_AddHoldAction;
	// Notify player with toast..
	[] remoteExec ["IMS_Overmind_Toast_Generator", _playerUnits, true];
};
