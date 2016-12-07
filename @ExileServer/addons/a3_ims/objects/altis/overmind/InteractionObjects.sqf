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
	["Land_PortableGenerator_01_F", [16007.1, 16914.4, 14.7258], [0.851658, -0.524097, 0], [0, 0, 1], false, "Activate the generator", "use", "_this distance _target < 5", {remoteExec ["IMS_Overmind_Generator_ActionScript", 0, true];}, "OvermindGenerator"]
]
