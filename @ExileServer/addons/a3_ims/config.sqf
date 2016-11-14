/*
	Main IMS Config File
	Written by Salutesh
	www.reality-gaming.eu
*/

/* Mission System Settings */
IMS_MissionLogs 						= true;																													// Enable or disable IMS log messages.

	/* The Fortress Mission Settings */
	IMS_FortressTimer 						= 180;																												// Time in seconds for the bomb timer. This is just a option for testing things.
		
		/* Loot Crate Settings */
		IMS_FortressLootWeapons					= ["srifle_GM6_ghex_F","srifle_DMR_07_hex_F","srifle_LRR_tna_F","SMG_05_F","arifle_MX_SW_khk_F","LMG_03_F","arifle_ARX_ghex_F","arifle_MXC_khk_F"];		// Loot Weapons in the crate after Fortress Mission success.
		IMS_FortressLootAmmoAmount				= 3;																												// Amount of magazines for every Weapon in IMS_FortressLootWeapons for the crate.
		IMS_FortressMedicalItems				= ["Exile_Item_InstaDoc","Exile_Item_Bandage"];																		// Madical Items in the crate after Fortress Mission success.
		IMS_FortressGearItems					= ["",""];																											// Gear Items in the crate after Fortress Mission success.
		IMS_FortressPoptabsLoot					= 25000;																											// Ammount of Poptabs in the crate on Fortress mission success set to 0 to disable this option.
	
		/* Vehicle Spawn Settings */
		IMS_FortressVehicleLoot					= true;																												// Enable/disable vehicle loot spawn on Fortress mission success.
		IMS_FortressVehicleLootClass			= "Exile_Car_Ifrit";																								// Vehicle Class that spawns if IMS_FortressVehicleLoot is true.
																																																						