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
	["Land_Document_01_F", [12108.5, 2314.93, 3.27098], [-0.783477, -0.621421, 0], [0, 0, 1], false, "Read Secret Dokuments", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Dokument_ActionScript", 0, true];}, "FortressDokument"],
	["Land_Laptop_unfolded_F", [12097.1, 2494.17, 9.18705], [-0.444932, 0.895564, 0], [0, 0, 1], false, "Disable Security Rules", "pc", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Laptop_ActionScript", 0, true];}, "FortressLaptop"],
	["Land_DataTerminal_01_F", [12068, 2460.88, 19.6264], [0.880998, 0.47312, 0], [0, 0, 1], false, "Disable Terminal Link", "charge", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Terminal_ActionScript", 0, true];}, "FortressTerminal"],
	["Land_FieldToilet_F", [12085.7, 2493.1, 8.65006], [-0.00666718, -0.999978, 0], [0, 0, 1], false, "Investigate", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Toilet_ActionScript_1", 0, true];}, "FortressToilet_1"],
	["Land_FieldToilet_F", [12047.7, 2418.96, 4.58764], [0.862249, 0.506485, 0], [0, 0, 1], false, "Investigate", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Toilet_ActionScript_2", 0, true];}, "FortressToilet_2"],
	["B_CargoNet_01_ammo_F", [12039.9, 2397.12, 4.3973], [-0.893646, 0.448773, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_1"],
	["B_CargoNet_01_ammo_F", [12122.1, 2470.91, 8.2553], [-0.107409, -0.994215, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_2"],
	["B_CargoNet_01_ammo_F", [12064.3, 2461.58, 4.43478], [0.787484, 0.616335, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_3"],
	["B_CargoNet_01_ammo_F", [12042.2, 2564.58, 4.4053], [0.787484, 0.616335, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_4"],
	["B_CargoNet_01_ammo_F", [12182.9, 2568.96, 4.35387], [0.814419, -0.580277, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_5"],
	["B_CargoNet_01_ammo_F", [12185.1, 2447.89, 4.4053], [-0.107409, -0.994215, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_6"],
	["B_CargoNet_01_ammo_F", [12182.9, 2486.76, 4.4053], [-0.637168, 0.770725, 0], [0, 0, 1], false, "Investigate Bomb", "default", "_this distance _target < 5", {remoteExec ["IMS_Fortress_Bomb_ActionScript", 0, true];}, "FortressBomb_7"]
]
