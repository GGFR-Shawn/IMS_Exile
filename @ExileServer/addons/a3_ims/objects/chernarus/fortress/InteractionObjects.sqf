/*

	[
		"Land_Document_01_F",												// [STRING] Object class to spawn
		[12108.5, 2314.93, 3.27098],										// [VALUE] Position where the object gets spawned
		[-0.783477, -0.621421, 0],											// [VALUE] Vector Direction of the object
		[0, 0, 1], 															// [VALUE] Vector Up of the object.
		false, 																// [BOOLEAN] Object simulation.
		"Read Secret Dokuments", 											// [STRING] Hold action title.
		"default", 															// [STRING] Hold action icon.
		"_this distance _target < 5",										// [STRING] Conditions to display the hold action.
		{remoteExec ["IMS_Fortress_Dokument_ActionScript", 0, true];}, 		// [CODE] Hold action event script on execution you can also execute code directly here.
		"FortressDokument"													// [STRING] Variable Name for the given object. In this example the object can always be selected as target with the name "IMS_IneractionObject_FortressDokument".
	]

*/

[
	["Land_Document_01_F", [6939.4, 11352.1, 390.402], [0, 0.995504, 0.0947163], [0.117711, -0.0940578, 0.988583], false, "Read Secret Dokuments", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Dokument_ActionScript", 0, true];}, "FortressDokument"],
	["Land_Laptop_unfolded_F", [6879.71, 11458.7, 395.709], [0.0644279, -0.997922, 0], [0, 0, 1], false, "Disable Security Rules", "pc", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Laptop_ActionScript", 0, true];}, "FortressLaptop"],
	["Land_DataTerminal_01_F", [6908.56, 11428.7, 425.618], [-0.998919, -0.0464787, 0], [0, 0, 1], false, "Disable Terminal Link", "charge", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Terminal_ActionScript", 0, true];}, "FortressTerminal"],
	["Land_FieldToilet_F", [6890.29, 11454.8, 395.471], [0.443854, 0.896099, 0], [0, 0, 1], false, "Investigate", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Toilet_ActionScript_1", 0, true];}, "FortressToilet"],
	["B_CargoNet_01_ammo_F", [6900.47, 11388.2, 394.742], [-0.15802, -0.987436, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_1"],
	["B_CargoNet_01_ammo_F", [6881.65, 11517.7, 392.678], [-0.198375, 0.980126, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_2"],
	["B_CargoNet_01_ammo_F", [6929.78, 11375.3, 394.021], [-0.991943, -0.126684, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_3"],
	["B_CargoNet_01_ammo_F", [6846.95, 11480.8, 391.857], [0.787484, 0.616335, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_4"],
	["B_CargoNet_01_ammo_F", [6890.4, 11411.5, 394.84], [0.171482, 0.985187, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_5"]
]
