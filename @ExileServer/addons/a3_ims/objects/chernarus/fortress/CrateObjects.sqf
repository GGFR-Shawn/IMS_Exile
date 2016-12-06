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
	["Box_NATO_Equip_F", [6895.86, 11383, 394.363], [-0.0795784, 0.996829, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_1", 0, true];}, "FortressSupplyBox_1"],
	["Box_NATO_Equip_F", [6842.17, 11479.8, 391.815], [-0.296637, 0.95499, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_2", 0, true];}, "FortressSupplyBox_2"],
	["Box_NATO_Equip_F", [6884.29, 11522.5, 392.56], [0.655787, 0.754946, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_3", 0, true];}, "FortressSupplyBox_3"],
	["Box_NATO_Equip_F", [6921.67, 11374.8, 394.882], [-0.0795784, 0.996829, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_4", 0, true];}, "FortressSupplyBox_4"],
	["Box_NATO_Equip_F", [6911.96, 11418.3, 395.802], [0.867439, 0.497544, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_5", 0, true];}, "FortressSupplyBox_5"]
]
