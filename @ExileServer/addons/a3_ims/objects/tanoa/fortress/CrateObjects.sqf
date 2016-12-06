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
	["Box_NATO_Equip_F", [12036.6, 2393.8, 19.2759], [0.986968, -0.160915, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_1", 0, true];}, "FortressSupplyBox_1"],
	["Box_NATO_Equip_F", [12191.3, 2461.35, 4.43157], [0.609799, -0.792556, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_2", 0, true];}, "FortressSupplyBox_2"],
	["Box_NATO_Equip_F", [12186.4, 2568.7, 19.2527], [-0.99368, -0.11225, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_3", 0, true];}, "FortressSupplyBox_3"],
	["Box_NATO_Equip_F", [12026.1, 2559.24, 4.31213], [0.944304, -0.329075, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_4", 0, true];}, "FortressSupplyBox_4"],
	["Box_NATO_Equip_F", [12076.4, 2511.93, 8.54528], [-0.0994412, 0.995043, 0], [0, 0, 1], false, "Inspect the crate", "supply", "_this distance _target < 5", {remoteExec ["IMS_Fortress_SupplyBox_ActionScript_5", 0, true];}, "FortressSupplyBox_5"]
]
