/*
    IMS_raidHoldActions.sqf
    Written by Salutesh
    www.reality-gaming.eu
	
    Description:
    Gives interaction objects the hold actions.
*/

// Create hold actions.
// Dokuments interaction Object.
[fortressRaid_dokument, "Read Secret Dokuments", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_dokument_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Laptop interaction Object.
[fortressRaid_laptop, "Disable Security Rules", "pc", "_this distance _target < 5", {remoteExec ["fortressRaid_laptop_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Terminal interaction Object.
[fortressRaid_terminal, "Disable Terminal Link", "charge", "_this distance _target < 5", {remoteExec ["fortressRaid_terminal_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Toilet interaction Object 1.
[fortressRaid_toilet_1, "Investigate", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_toilet_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Toilet interaction Object 2.
[fortressRaid_toilet_2, "Investigate", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_toilet_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Supplybox interaction Object 1.
[fortressRaid_supplybox_1, "Seeking Crate", "crate", "_this distance _target < 5", {remoteExec ["fortressRaid_supplybox_1_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Supplybox interaction Object 2.
[fortressRaid_supplybox_2, "Seeking Crate", "crate", "_this distance _target < 5", {remoteExec ["fortressRaid_supplybox_2_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Supplybox interaction Object 3.
[fortressRaid_supplybox_3, "Seeking Crate",	"crate", "_this distance _target < 5", {remoteExec ["fortressRaid_supplybox_3_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Supplybox interaction Object 4.
[fortressRaid_supplybox_4, "Seeking Crate", "crate", "_this distance _target < 5", {remoteExec ["fortressRaid_supplybox_4_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Supplybox interaction Object 5.
[fortressRaid_supplybox_5, "Seeking Crate", "crate", "_this distance _target < 5", {remoteExec ["fortressRaid_supplybox_5_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Bomb interaction Object 1.
[fortressRaid_bomb_1, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_bomb_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Bomb interaction Object 2.
[fortressRaid_bomb_2, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_bomb_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Bomb interaction Object 3.
[fortressRaid_bomb_3, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_bomb_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Bomb interaction Object 4.
[fortressRaid_bomb_4, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_bomb_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];
// Bomb interaction Object 5.
[fortressRaid_bomb_5, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_bomb_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Bomb interaction Object 6.
[fortressRaid_bomb_6, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_bomb_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];

// Bomb interaction Object 7.
[fortressRaid_bomb_7, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["fortressRaid_bomb_ActionScript", 0, true];}, [], 3, true] remoteExec ["IMS_fnc_AddHoldAction", 0, true];