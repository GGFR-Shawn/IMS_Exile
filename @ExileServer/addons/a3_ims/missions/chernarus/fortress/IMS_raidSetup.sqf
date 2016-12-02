/*
    IMS_raidSetup.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description:
    Pre-Setup for some placed objects.
*/

// The Fortress - Pre mission setup
// Spaw objects
"chernarus/fortress_chernarusObjects" call IMS_fnc_ImportFromExileEdenPlugin;
"chernarus/fortress_chernarusSimpleObjects" call IMS_fnc_ImportFromExileEdenPluginSimple;
// Prepare the interaction terminal animation and variable.
[fortressRaid_terminal,"red","orange","blue"] call BIS_fnc_DataTerminalColor;
[fortressRaid_terminal, 3] call BIS_fnc_dataTerminalAnimate;