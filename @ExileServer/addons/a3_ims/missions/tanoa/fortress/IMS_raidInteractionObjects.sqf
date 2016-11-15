/*
    IMS_raidInteractionObjects.sqf
    Written by Salutesh
    www.reality-gaming.eu
	
    Description:
    Spawns the fortress raid mission objects that are interactable.
*/

// Create interaction object for hold actions.
// Dokuments interaction Object.
fortressRaid_dokument = "Land_Document_01_F" createVehicle [12108.5, 2314.93, 3.27098];
fortressRaid_dokument allowDamage false;
fortressRaid_dokument setPosWorld [12108.5, 2314.93, 3.27098];
fortressRaid_dokument setVectorDirAndUp [[-0.783477, -0.621421, 0], [0, 0, 1]];
fortressRaid_dokument enableSimulationGlobal false;
fortressRaid_dokument setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_dokument";

// Laptop interaction Object.
fortressRaid_laptop = "Land_Laptop_unfolded_F" createVehicle [12097.1, 2494.17, 9.18705];
fortressRaid_laptop allowDamage false;
fortressRaid_laptop setPosWorld [12097.1, 2494.17, 9.18705];
fortressRaid_laptop setVectorDirAndUp [[-0.444932, 0.895564, 0], [0, 0, 1]];
fortressRaid_laptop enableSimulationGlobal false;
fortressRaid_laptop setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_laptop";

// Terminal interaction Object.
fortressRaid_terminal = "Land_DataTerminal_01_F" createVehicle [12068, 2460.88, 19.6264];
fortressRaid_terminal allowDamage false;
fortressRaid_terminal setPosWorld [12068, 2460.88, 19.6264];
fortressRaid_terminal setVectorDirAndUp [[0.880998, 0.47312, 0], [0, 0, 1]];
fortressRaid_terminal enableSimulationGlobal false;
fortressRaid_terminal setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_terminal";

// Toilet interaction Object 1.
fortressRaid_toilet_1 = "Land_FieldToilet_F" createVehicle [12085.7, 2493.1, 8.65006];
fortressRaid_toilet_1 allowDamage false;
fortressRaid_toilet_1 setPosWorld [12085.7, 2493.1, 8.65006];
fortressRaid_toilet_1 setVectorDirAndUp [[-0.00666718, -0.999978, 0], [0, 0, 1]];
fortressRaid_toilet_1 enableSimulationGlobal false;
fortressRaid_toilet_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_toilet_1";

// Toilet interaction Object 2.
fortressRaid_toilet_2 = "Land_FieldToilet_F" createVehicle [12047.7, 2418.96, 4.58764];
fortressRaid_toilet_2 allowDamage false;
fortressRaid_toilet_2 setPosWorld [12047.7, 2418.96, 4.58764];
fortressRaid_toilet_2 setVectorDirAndUp [[0.862249, 0.506485, 0], [0, 0, 1]];
fortressRaid_toilet_2 enableSimulationGlobal false;
fortressRaid_toilet_2 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_toilet_2";

// Supplybox interaction Object 1.
fortressRaid_supplybox_1 = createVehicle ["Box_Syndicate_Ammo_F", [12036.6, 2393.8, 19.2759], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_1; 
clearWeaponCargoGlobal fortressRaid_supplybox_1;
clearItemCargoGlobal fortressRaid_supplybox_1;
clearBackpackCargoGlobal fortressRaid_supplybox_1;
fortressRaid_supplybox_1 allowDamage false;
fortressRaid_supplybox_1 setPosWorld [12036.6, 2393.8, 19.2759];
fortressRaid_supplybox_1 setVectorDirAndUp [[0.986968, -0.160915, 0], [0, 0, 1]];
fortressRaid_supplybox_1 enableSimulationGlobal true;
fortressRaid_supplybox_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_1";

// Supplybox interaction Object 2.
fortressRaid_supplybox_2 = createVehicle ["Box_Syndicate_Ammo_F", [12191.3, 2461.35, 4.43157], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_2; 
clearWeaponCargoGlobal fortressRaid_supplybox_2;
clearItemCargoGlobal fortressRaid_supplybox_2;
clearBackpackCargoGlobal fortressRaid_supplybox_2;
fortressRaid_supplybox_2 allowDamage false;
fortressRaid_supplybox_2 setPosWorld [12191.3, 2461.35, 4.43157];
fortressRaid_supplybox_2 setVectorDirAndUp [[0.609799, -0.792556, 0], [0, 0, 1]];
fortressRaid_supplybox_2 enableSimulationGlobal true;
fortressRaid_supplybox_2 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_2";

// Supplybox interaction Object 3.
fortressRaid_supplybox_3 = createVehicle ["Box_Syndicate_Ammo_F", [12186.4, 2568.7, 19.2527], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_3; 
clearWeaponCargoGlobal fortressRaid_supplybox_3;
clearItemCargoGlobal fortressRaid_supplybox_3;
clearBackpackCargoGlobal fortressRaid_supplybox_3;
fortressRaid_supplybox_3 allowDamage false;
fortressRaid_supplybox_3 setPosWorld [12186.4, 2568.7, 19.2527];
fortressRaid_supplybox_3 setVectorDirAndUp [[-0.99368, -0.11225, 0], [0, 0, 1]];
fortressRaid_supplybox_3 enableSimulationGlobal true;
fortressRaid_supplybox_3 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_3";

// Supplybox interaction Object 4.
fortressRaid_supplybox_4 = createVehicle ["Box_Syndicate_Ammo_F", [12026.1, 2559.24, 4.31213], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_4; 
clearWeaponCargoGlobal fortressRaid_supplybox_4;
clearItemCargoGlobal fortressRaid_supplybox_4;
clearBackpackCargoGlobal fortressRaid_supplybox_4;
fortressRaid_supplybox_4 allowDamage false;
fortressRaid_supplybox_4 setPosWorld [12026.1, 2559.24, 4.31213];
fortressRaid_supplybox_4 setVectorDirAndUp [[0.944304, -0.329075, 0], [0, 0, 1]];
fortressRaid_supplybox_4 enableSimulationGlobal true;
fortressRaid_supplybox_4 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_4";

// Supplybox interaction Object 5.
fortressRaid_supplybox_5 = createVehicle ["Box_Syndicate_Ammo_F", [12076.4, 2511.93, 8.54528], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_5; 
clearWeaponCargoGlobal fortressRaid_supplybox_5;
clearItemCargoGlobal fortressRaid_supplybox_5;
clearBackpackCargoGlobal fortressRaid_supplybox_5;
fortressRaid_supplybox_5 allowDamage false;
fortressRaid_supplybox_5 setPosWorld [12076.4, 2511.93, 8.54528];
fortressRaid_supplybox_5 setVectorDirAndUp [[-0.0994412, 0.995043, 0], [0, 0, 1]];
fortressRaid_supplybox_5 enableSimulationGlobal true;
fortressRaid_supplybox_5 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_5";

// Bomb interaction Object 1.
fortressRaid_bomb_1 = "B_CargoNet_01_ammo_F" createVehicle [12039.9, 2397.12, 4.3973];
clearMagazineCargoGlobal fortressRaid_bomb_1; 
clearWeaponCargoGlobal fortressRaid_bomb_1;
clearItemCargoGlobal fortressRaid_bomb_1;
clearBackpackCargoGlobal fortressRaid_bomb_1;
fortressRaid_bomb_1 allowDamage false;
fortressRaid_bomb_1 setPosWorld [12039.9, 2397.12, 4.3973];
fortressRaid_bomb_1 setVectorDirAndUp [[-0.893646, 0.448773, 0], [0, 0, 1]];
fortressRaid_bomb_1 enableSimulationGlobal false;
fortressRaid_bomb_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_1";

// Bomb interaction Object 2.
fortressRaid_bomb_2 = "B_CargoNet_01_ammo_F" createVehicle [12122.1, 2470.91, 8.2553];
clearMagazineCargoGlobal fortressRaid_bomb_2; 
clearWeaponCargoGlobal fortressRaid_bomb_2;
clearItemCargoGlobal fortressRaid_bomb_2;
clearBackpackCargoGlobal fortressRaid_bomb_2;
fortressRaid_bomb_2 allowDamage false;
fortressRaid_bomb_2 setPosWorld [12122.1, 2470.91, 8.2553];
fortressRaid_bomb_2 setVectorDirAndUp [[-0.107409, -0.994215, 0], [0, 0, 1]];
fortressRaid_bomb_2 enableSimulationGlobal false;
fortressRaid_bomb_2 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_2";

// Bomb interaction Object 3.
fortressRaid_bomb_3 = "B_CargoNet_01_ammo_F" createVehicle [12064.3, 2461.58, 4.43478];
clearMagazineCargoGlobal fortressRaid_bomb_3; 
clearWeaponCargoGlobal fortressRaid_bomb_3;
clearItemCargoGlobal fortressRaid_bomb_3;
clearBackpackCargoGlobal fortressRaid_bomb_3;
fortressRaid_bomb_3 allowDamage false;
fortressRaid_bomb_3 setPosWorld [12064.3, 2461.58, 4.43478];
fortressRaid_bomb_3 setVectorDirAndUp [[0.787484, 0.616335, 0], [0, 0, 1]];
fortressRaid_bomb_3 enableSimulationGlobal false;
fortressRaid_bomb_3 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_3";

// Bomb interaction Object 4.
fortressRaid_bomb_4 = "B_CargoNet_01_ammo_F" createVehicle [12042.2, 2564.58, 4.4053];
clearMagazineCargoGlobal fortressRaid_bomb_4; 
clearWeaponCargoGlobal fortressRaid_bomb_4;
clearItemCargoGlobal fortressRaid_bomb_4;
clearBackpackCargoGlobal fortressRaid_bomb_4;
fortressRaid_bomb_4 allowDamage false;
fortressRaid_bomb_4 setPosWorld [12042.2, 2564.58, 4.4053];
fortressRaid_bomb_4 setVectorDirAndUp [[0.787484, 0.616335, 0], [0, 0, 1]];
fortressRaid_bomb_4 enableSimulationGlobal false;
fortressRaid_bomb_4 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_4";

// Bomb interaction Object 5.
fortressRaid_bomb_5 = "B_CargoNet_01_ammo_F" createVehicle [12182.9, 2568.96, 4.35387];
clearMagazineCargoGlobal fortressRaid_bomb_5; 
clearWeaponCargoGlobal fortressRaid_bomb_5;
clearItemCargoGlobal fortressRaid_bomb_5;
clearBackpackCargoGlobal fortressRaid_bomb_5;
fortressRaid_bomb_5 allowDamage false;
fortressRaid_bomb_5 setPosWorld [12182.9, 2568.96, 4.35387];
fortressRaid_bomb_5 setVectorDirAndUp [[0.814419, -0.580277, 0], [0, 0, 1]];
fortressRaid_bomb_5 enableSimulationGlobal false;
fortressRaid_bomb_5 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_5";

// Bomb interaction Object 6.
fortressRaid_bomb_6 = "B_CargoNet_01_ammo_F" createVehicle [12185.1, 2447.89, 4.4053];
clearMagazineCargoGlobal fortressRaid_bomb_6; 
clearWeaponCargoGlobal fortressRaid_bomb_6;
clearItemCargoGlobal fortressRaid_bomb_6;
clearBackpackCargoGlobal fortressRaid_bomb_6;
fortressRaid_bomb_6 allowDamage false;
fortressRaid_bomb_6 setPosWorld [12185.1, 2447.89, 4.4053];
fortressRaid_bomb_6 setVectorDirAndUp [[-0.107409, -0.994215, 0], [0, 0, 1]];
fortressRaid_bomb_6 enableSimulationGlobal false;
fortressRaid_bomb_6 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_6";

// Bomb interaction Object 7.
fortressRaid_bomb_7 = "B_CargoNet_01_ammo_F" createVehicle [12182.9, 2486.76, 4.4053];
clearMagazineCargoGlobal fortressRaid_bomb_7; 
clearWeaponCargoGlobal fortressRaid_bomb_7;
clearItemCargoGlobal fortressRaid_bomb_7;
clearBackpackCargoGlobal fortressRaid_bomb_7;
fortressRaid_bomb_7 allowDamage false;
fortressRaid_bomb_7 setPosWorld [12182.9, 2486.76, 4.4053];
fortressRaid_bomb_7 setVectorDirAndUp [[-0.637168, 0.770725, 0], [0, 0, 1]];
fortressRaid_bomb_7 enableSimulationGlobal false;
fortressRaid_bomb_7 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_7";

// Bomb Object 1.
fortressRaid_charge_1 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [12121.5, 2470.93, 8.34081];
fortressRaid_charge_1 allowDamage true;
fortressRaid_charge_1 setPosWorld [12121.5, 2470.93, 8.34081];
fortressRaid_charge_1 setVectorDirAndUp [[-0.133224, -0.985217, 0.107699], [-0.984135, 0.144354, 0.103153]];
fortressRaid_charge_1 enableSimulationGlobal false;
fortressRaid_charge_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_1";

// Bomb Object 2.
fortressRaid_charge_2 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [12184.5, 2447.86, 4.491];
fortressRaid_charge_2 allowDamage true;
fortressRaid_charge_2 setPosWorld [12184.5, 2447.86, 4.491];
fortressRaid_charge_2 setVectorDirAndUp [[-0.133228, -0.985216, 0.107705], [-0.984134, 0.144359, 0.103157]];
fortressRaid_charge_2 enableSimulationGlobal false;
fortressRaid_charge_2 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_2";

// Bomb Object 3.
fortressRaid_charge_3 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [12042.7, 2564.13, 4.522];
fortressRaid_charge_3 allowDamage true;
fortressRaid_charge_3 setPosWorld [12042.7, 2564.13, 4.522];
fortressRaid_charge_3 setVectorDirAndUp [[0.786161, 0.607431, 0.113926], [0.602066, -0.794356, 0.0807158]];
fortressRaid_charge_3 enableSimulationGlobal false;
fortressRaid_charge_3 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_3";

// Bomb Object 4.
fortressRaid_charge_4 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [12182.5, 2568.4, 4.44024];
fortressRaid_charge_4 allowDamage true;
fortressRaid_charge_4 setPosWorld [12182.5, 2568.4, 4.44024];
fortressRaid_charge_4 setVectorDirAndUp [[0.778843, -0.591717, 0.208024], [-0.614106, -0.786861, 0.0610153]];
fortressRaid_charge_4 enableSimulationGlobal false;
fortressRaid_charge_4 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_4";

// Bomb Object 5.
fortressRaid_charge_5 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [12064.6, 2461.08, 4.55136];
fortressRaid_charge_5 allowDamage true;
fortressRaid_charge_5 setPosWorld [12064.6, 2461.08, 4.55136];
fortressRaid_charge_5 setVectorDirAndUp [[0.786161, 0.607431, 0.113926], [0.602066, -0.794356, 0.0807158]];
fortressRaid_charge_5 enableSimulationGlobal false;
fortressRaid_charge_5 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_5";

// Bomb Object 6.
fortressRaid_charge_6 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [12040.2, 2397.73, 4.477];
fortressRaid_charge_6 allowDamage true;
fortressRaid_charge_6 setPosWorld [12040.2, 2397.73, 4.477];
fortressRaid_charge_6 setVectorDirAndUp [[-0.881262, 0.47215, 0.0212321], [0.472366, 0.88138, 0.00633792]];
fortressRaid_charge_6 enableSimulationGlobal false;
fortressRaid_charge_6 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_6";

// Bomb Object 7.
fortressRaid_charge_7 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [12182.5, 2487.14, 4.512];
fortressRaid_charge_7 allowDamage true;
fortressRaid_charge_7 setPosWorld [12182.5, 2487.14, 4.512];
fortressRaid_charge_7 setVectorDirAndUp [[-0.791397, -0.6063, 0.0780409], [-0.60148, 0.795103, 0.0776664]];
fortressRaid_charge_7 enableSimulationGlobal false;
fortressRaid_charge_7 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_7";

// Gate Object.
fortressRaid_gate = "Exile_Construction_ConcreteGate_Static" createVehicle [12148.3, 2476.54, 3.47748];
fortressRaid_gate allowDamage false;
fortressRaid_gate setPosWorld [12148.3, 2476.54, 3.47748];
fortressRaid_gate setVectorDirAndUp [[-0.844512, 0.535536, 0], [0, 0, 1]];
fortressRaid_gate enableSimulationGlobal false;
fortressRaid_gate setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_gate";

// Speaker Objects.
fortressRaid_speaker_1 = "Land_Loudspeakers_F" createVehicle [12038.6, 2442.59, 11.0774];
fortressRaid_speaker_1 allowDamage false;
fortressRaid_speaker_1 setPosWorld [12038.6, 2442.59, 11.0774];
fortressRaid_speaker_1 setVectorDirAndUp [[-0.871804, -0.489854, 0], [0, 0, 1]];
fortressRaid_speaker_1 enableSimulationGlobal false;
fortressRaid_speaker_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_speaker_1";

fortressRaid_speaker_2 = "Land_Loudspeakers_F" createVehicle [12100.8, 2518.14, 10.9517];
fortressRaid_speaker_2 allowDamage false;
fortressRaid_speaker_2 setPosWorld [12100.8, 2518.14, 10.9517];
fortressRaid_speaker_2 setVectorDirAndUp [[0.748053, 0.663639, 0], [0, 0, 1]];
fortressRaid_speaker_2 enableSimulationGlobal false;
fortressRaid_speaker_2 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_speaker_2";

fortressRaid_speaker_3 = "Land_Loudspeakers_F" createVehicle [12127, 2481.13, 11.0306];
fortressRaid_speaker_3 allowDamage false;
fortressRaid_speaker_3 setPosWorld [12127, 2481.13, 11.0306];
fortressRaid_speaker_3 setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
fortressRaid_speaker_3 enableSimulationGlobal false;
fortressRaid_speaker_3 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_speaker_3";

fortressRaid_speaker_4 = "Land_Loudspeakers_F" createVehicle [12102.6, 2330.9, 4.41855];
fortressRaid_speaker_4 allowDamage false;
fortressRaid_speaker_4 setPosWorld [12102.6, 2330.9, 4.41855];
fortressRaid_speaker_4 setVectorDirAndUp [[-0.448788, 0.893638, 0], [0, 0, 1]];
fortressRaid_speaker_4 enableSimulationGlobal false;
fortressRaid_speaker_4 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_speaker_4";