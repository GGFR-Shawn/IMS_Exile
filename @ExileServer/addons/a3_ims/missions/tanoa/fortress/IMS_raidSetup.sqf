/*
    IMS_raidSetup.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description:
    Pre-Setup for some placed objects.
*/

// The Fortress - Pre mission setup
// Lock the center control tower doors.
((nearestobjects [[12103.6,2491.62,0], ["Land_Cargo_Tower_V1_No1_F"], 150]) select 0) setVariable ['bis_disabled_Door_1',1,true];
((nearestobjects [[12103.6,2491.62,0], ["Land_Cargo_Tower_V1_No1_F"], 150]) select 0) setVariable ['bis_disabled_Door_2',1,true];
((nearestobjects [[12103.6,2491.62,0], ["Land_Cargo_Tower_V1_No1_F"], 150]) select 0) setVariable ['bis_disabled_Door_3',1,true];
// Prepare the terminal animation and variable.
[fortressRaid_terminal,"red","orange","blue"] call BIS_fnc_DataTerminalColor;
[fortressRaid_terminal, 3] call BIS_fnc_dataTerminalAnimate;