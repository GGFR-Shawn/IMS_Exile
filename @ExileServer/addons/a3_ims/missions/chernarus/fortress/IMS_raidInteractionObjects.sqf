/*
    IMS_raidInteractionObjects.sqf
    Written by Salutesh
    www.reality-gaming.eu
	
    Description:
    Spawns the fortress raid mission objects that are interactable.
*/

// Create interaction object for hold actions.
// Dokuments interaction Object.
fortressRaid_dokument = "Land_Document_01_F" createVehicle [6939.4, 11352.1, 390.402];
fortressRaid_dokument allowDamage false;
fortressRaid_dokument setPosWorld [6939.4, 11352.1, 390.402];
fortressRaid_dokument setVectorDirAndUp [[0, 0.995504, 0.0947163], [0.117711, -0.0940578, 0.988583]];
fortressRaid_dokument enableSimulationGlobal false;
fortressRaid_dokument setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_dokument";

// Laptop interaction Object.
fortressRaid_laptop = "Land_Laptop_unfolded_F" createVehicle [6879.71, 11458.7, 395.709];
fortressRaid_laptop allowDamage false;
fortressRaid_laptop setPosWorld [6879.71, 11458.7, 395.709];
fortressRaid_laptop setVectorDirAndUp [[0.0644279, -0.997922, 0], [0, 0, 1]];
fortressRaid_laptop enableSimulationGlobal false;
fortressRaid_laptop setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_laptop";

// Terminal interaction Object.
fortressRaid_terminal = "Land_DataTerminal_01_F" createVehicle [6908.56, 11428.7, 425.618];
fortressRaid_terminal allowDamage false;
fortressRaid_terminal setPosWorld [6908.56, 11428.7, 425.618];
fortressRaid_terminal setVectorDirAndUp [[-0.998919, -0.0464787, 0], [0, 0, 1]];
fortressRaid_terminal enableSimulationGlobal false;
fortressRaid_terminal setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_terminal";

// Toilet interaction Object 1.
fortressRaid_toilet_1 = "Land_FieldToilet_F" createVehicle [6890.29, 11454.8, 395.471];
fortressRaid_toilet_1 allowDamage false;
fortressRaid_toilet_1 setPosWorld [6890.29, 11454.8, 395.471];
fortressRaid_toilet_1 setVectorDirAndUp [[0.443854, 0.896099, 0], [0, 0, 1]];
fortressRaid_toilet_1 enableSimulationGlobal false;
fortressRaid_toilet_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_toilet_1";


// Supplybox interaction Object 1.
fortressRaid_supplybox_1 = createVehicle ["Box_Syndicate_Ammo_F", [6895.86, 11383, 394.363], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_1; 
clearWeaponCargoGlobal fortressRaid_supplybox_1;
clearItemCargoGlobal fortressRaid_supplybox_1;
clearBackpackCargoGlobal fortressRaid_supplybox_1;
fortressRaid_supplybox_1 allowDamage false;
fortressRaid_supplybox_1 setPosWorld [6895.86, 11383, 394.363];
fortressRaid_supplybox_1 setVectorDirAndUp [[-0.0795784, 0.996829, 0], [0, 0, 1]];
fortressRaid_supplybox_1 enableSimulationGlobal true;
fortressRaid_supplybox_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_1";

// Supplybox interaction Object 2.
fortressRaid_supplybox_2 = createVehicle ["Box_Syndicate_Ammo_F", [6842.17, 11479.8, 391.815], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_2; 
clearWeaponCargoGlobal fortressRaid_supplybox_2;
clearItemCargoGlobal fortressRaid_supplybox_2;
clearBackpackCargoGlobal fortressRaid_supplybox_2;
fortressRaid_supplybox_2 allowDamage false;
fortressRaid_supplybox_2 setPosWorld [6842.17, 11479.8, 391.815];
fortressRaid_supplybox_2 setVectorDirAndUp [[-0.296637, 0.95499, 0], [0, 0, 1]];
fortressRaid_supplybox_2 enableSimulationGlobal true;
fortressRaid_supplybox_2 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_2";

// Supplybox interaction Object 3.
fortressRaid_supplybox_3 = createVehicle ["Box_Syndicate_Ammo_F", [6884.29, 11522.5, 392.56], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_3; 
clearWeaponCargoGlobal fortressRaid_supplybox_3;
clearItemCargoGlobal fortressRaid_supplybox_3;
clearBackpackCargoGlobal fortressRaid_supplybox_3;
fortressRaid_supplybox_3 allowDamage false;
fortressRaid_supplybox_3 setPosWorld [6884.29, 11522.5, 392.56];
fortressRaid_supplybox_3 setVectorDirAndUp [[0.655787, 0.754946, 0], [0, 0, 1]];
fortressRaid_supplybox_3 enableSimulationGlobal true;
fortressRaid_supplybox_3 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_3";

// Supplybox interaction Object 4.
fortressRaid_supplybox_4 = createVehicle ["Box_Syndicate_Ammo_F", [6921.67, 11374.8, 394.882], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_4; 
clearWeaponCargoGlobal fortressRaid_supplybox_4;
clearItemCargoGlobal fortressRaid_supplybox_4;
clearBackpackCargoGlobal fortressRaid_supplybox_4;
fortressRaid_supplybox_4 allowDamage false;
fortressRaid_supplybox_4 setPosWorld [6921.67, 11374.8, 394.882];
fortressRaid_supplybox_4 setVectorDirAndUp [[-0.0795784, 0.996829, 0], [0, 0, 1]];
fortressRaid_supplybox_4 enableSimulationGlobal true;
fortressRaid_supplybox_4 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_4";

// Supplybox interaction Object 5.
fortressRaid_supplybox_5 = createVehicle ["Box_Syndicate_Ammo_F", [6911.96, 11418.3, 395.802], [], 0, "CAN_COLLIDE"];
clearMagazineCargoGlobal fortressRaid_supplybox_5; 
clearWeaponCargoGlobal fortressRaid_supplybox_5;
clearItemCargoGlobal fortressRaid_supplybox_5;
clearBackpackCargoGlobal fortressRaid_supplybox_5;
fortressRaid_supplybox_5 allowDamage false;
fortressRaid_supplybox_5 setPosWorld [6911.96, 11418.3, 395.802];
fortressRaid_supplybox_5 setVectorDirAndUp [[0.867439, 0.497544, 0], [0, 0, 1]];
fortressRaid_supplybox_5 enableSimulationGlobal true;
fortressRaid_supplybox_5 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_supplybox_5";

// Bomb interaction Object 1.
fortressRaid_bomb_1 = "B_CargoNet_01_ammo_F" createVehicle [6900.47, 11388.2, 394.742];
clearMagazineCargoGlobal fortressRaid_bomb_1; 
clearWeaponCargoGlobal fortressRaid_bomb_1;
clearItemCargoGlobal fortressRaid_bomb_1;
clearBackpackCargoGlobal fortressRaid_bomb_1;
fortressRaid_bomb_1 allowDamage false;
fortressRaid_bomb_1 setPosWorld [6900.47, 11388.2, 394.742];
fortressRaid_bomb_1 setVectorDirAndUp [[-0.158015, -0.987437, 0], [0, 0, 1]];
fortressRaid_bomb_1 enableSimulationGlobal false;
fortressRaid_bomb_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_1";

// Bomb interaction Object 2.
fortressRaid_bomb_2 = "B_CargoNet_01_ammo_F" createVehicle [6846.95, 11480.8, 391.857];
clearMagazineCargoGlobal fortressRaid_bomb_2; 
clearWeaponCargoGlobal fortressRaid_bomb_2;
clearItemCargoGlobal fortressRaid_bomb_2;
clearBackpackCargoGlobal fortressRaid_bomb_2;
fortressRaid_bomb_2 allowDamage false;
fortressRaid_bomb_2 setPosWorld [6846.95, 11480.8, 391.857];
fortressRaid_bomb_2 setVectorDirAndUp [[0.787484, 0.616335, 0], [0, 0, 1]];
fortressRaid_bomb_2 enableSimulationGlobal false;
fortressRaid_bomb_2 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_2";

// Bomb interaction Object 3.
fortressRaid_bomb_3 = "B_CargoNet_01_ammo_F" createVehicle [6881.65, 11517.7, 392.678];
clearMagazineCargoGlobal fortressRaid_bomb_3; 
clearWeaponCargoGlobal fortressRaid_bomb_3;
clearItemCargoGlobal fortressRaid_bomb_3;
clearBackpackCargoGlobal fortressRaid_bomb_3;
fortressRaid_bomb_3 allowDamage false;
fortressRaid_bomb_3 setPosWorld [6881.65, 11517.7, 392.678];
fortressRaid_bomb_3 setVectorDirAndUp [[-0.198378, 0.980126, 0], [0, 0, 1]];
fortressRaid_bomb_3 enableSimulationGlobal false;
fortressRaid_bomb_3 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_3";

// Bomb interaction Object 4.
fortressRaid_bomb_4 = "B_CargoNet_01_ammo_F" createVehicle [6929.78, 11375.3, 394.021];
clearMagazineCargoGlobal fortressRaid_bomb_4; 
clearWeaponCargoGlobal fortressRaid_bomb_4;
clearItemCargoGlobal fortressRaid_bomb_4;
clearBackpackCargoGlobal fortressRaid_bomb_4;
fortressRaid_bomb_4 allowDamage false;
fortressRaid_bomb_4 setPosWorld [6929.78, 11375.3, 394.021];
fortressRaid_bomb_4 setVectorDirAndUp [[-0.991944, -0.126678, 0], [0, 0, 1]];
fortressRaid_bomb_4 enableSimulationGlobal false;
fortressRaid_bomb_4 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_4";

// Bomb interaction Object 5.
fortressRaid_bomb_5 = "B_CargoNet_01_ammo_F" createVehicle [6890.4, 11411.5, 394.84];
clearMagazineCargoGlobal fortressRaid_bomb_5; 
clearWeaponCargoGlobal fortressRaid_bomb_5;
clearItemCargoGlobal fortressRaid_bomb_5;
clearBackpackCargoGlobal fortressRaid_bomb_5;
fortressRaid_bomb_5 allowDamage false;
fortressRaid_bomb_5 setPosWorld [6890.4, 11411.5, 394.84];
fortressRaid_bomb_5 setVectorDirAndUp [[0.171476, 0.985188, 0], [0, 0, 1]];
fortressRaid_bomb_5 enableSimulationGlobal false;
fortressRaid_bomb_5 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_bomb_5";

// Bomb Object 1.
fortressRaid_charge_1 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [6899.87, 11388.2, 394.835];
fortressRaid_charge_1 allowDamage true;
fortressRaid_charge_1 setPosWorld [12121.5, 2470.93, 8.34081];
fortressRaid_charge_1 setVectorDirAndUp [[-0.129875, -0.985819, 0.106267], [-0.991303, 0.126804, -0.0351915]];
fortressRaid_charge_1 enableSimulationGlobal false;
fortressRaid_charge_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_1";

// Bomb Object 2.
fortressRaid_charge_2 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [6847.4, 11480.3, 391.974];
fortressRaid_charge_2 allowDamage true;
fortressRaid_charge_2 setPosWorld [6847.4, 11480.3, 391.974];
fortressRaid_charge_2 setVectorDirAndUp [[0.786161, 0.607431, 0.113926], [0.602066, -0.794356, 0.0807158]];
fortressRaid_charge_2 enableSimulationGlobal false;
fortressRaid_charge_2 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_2";

// Bomb Object 3.
fortressRaid_charge_3 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [6881.82, 11517.2, 392.764];
fortressRaid_charge_3 allowDamage true;
fortressRaid_charge_3 setPosWorld [6881.82, 11517.2, 392.764];
fortressRaid_charge_3 setVectorDirAndUp [[0.955272, 0.224375, 0.192643], [0.194844, -0.96757, 0.160759]];
fortressRaid_charge_3 enableSimulationGlobal false;
fortressRaid_charge_3 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_3";

// Bomb Object 4.
fortressRaid_charge_4 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [6929.69, 11375.9, 394.226];
fortressRaid_charge_4 allowDamage true;
fortressRaid_charge_4 setPosWorld [6929.69, 11375.9, 394.226];
fortressRaid_charge_4 setVectorDirAndUp [[-0.973399, -0.0892829, 0.211007], [-0.0928006, 0.995661, -0.00680773]];
fortressRaid_charge_4 enableSimulationGlobal false;
fortressRaid_charge_4 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_4";

// Bomb Object 5.
fortressRaid_charge_5 = "Exile_Ammo_BreachingCharge_BigMomma_Veh" createVehicle [6890.36, 11412.2, 394.932];
fortressRaid_charge_5 allowDamage true;
fortressRaid_charge_5 setPosWorld [6890.36, 11412.2, 394.932];
fortressRaid_charge_5 setVectorDirAndUp [[-0.962081, 0.228132, -0.149522], [0.226569, 0.973603, 0.0276347]];
fortressRaid_charge_5 enableSimulationGlobal false;
fortressRaid_charge_5 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_charge_5";

// Gate Object.
fortressRaid_gate = "Exile_Construction_ConcreteDoor_Static" createVehicle [6912.85, 11435, 405.137];
fortressRaid_gate allowDamage false;
fortressRaid_gate setPosWorld [6912.85, 11435, 405.137];
fortressRaid_gate setVectorDirAndUp [[0.024224, -0.999707, 0], [0, 0, 1]];
fortressRaid_gate enableSimulationGlobal false;
fortressRaid_gate setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_gate";

// Speaker Objects.
fortressRaid_speaker_1 = "Land_Loudspeakers_F" createVehicle [6903.79, 11387.2, 397.13];
fortressRaid_speaker_1 allowDamage false;
fortressRaid_speaker_1 setPosWorld [6903.79, 11387.2, 397.13];
fortressRaid_speaker_1 setVectorDirAndUp [[0.0919357, 0.995765, 0], [0, 0, 1]];
fortressRaid_speaker_1 enableSimulationGlobal false;
fortressRaid_speaker_1 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_speaker_1";

fortressRaid_speaker_2 = "Land_Loudspeakers_F" createVehicle [6883.1, 11445.7, 398.227];
fortressRaid_speaker_2 allowDamage false;
fortressRaid_speaker_2 setPosWorld [6883.1, 11445.7, 398.227];
fortressRaid_speaker_2 setVectorDirAndUp [[-0.0495945, 0.998769, 0], [0, 0, 1]];
fortressRaid_speaker_2 enableSimulationGlobal false;
fortressRaid_speaker_2 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_speaker_2";

fortressRaid_speaker_3 = "Land_Loudspeakers_F" createVehicle [6934.39, 11466.9, 394.201];
fortressRaid_speaker_3 allowDamage false;
fortressRaid_speaker_3 setPosWorld [6934.39, 11466.9, 394.201];
fortressRaid_speaker_3 setVectorDirAndUp [[0.810625, 0.585566, 0], [0, 0, 1]];
fortressRaid_speaker_3 enableSimulationGlobal false;
fortressRaid_speaker_3 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_speaker_3";

fortressRaid_speaker_4 = "Land_Loudspeakers_F" createVehicle [6856.44, 11490.9, 395.293];
fortressRaid_speaker_4 allowDamage false;
fortressRaid_speaker_4 setPosWorld [6856.44, 11490.9, 395.293];
fortressRaid_speaker_4 setVectorDirAndUp [[-0.820431, 0.571745, 0], [0, 0, 1]];
fortressRaid_speaker_4 enableSimulationGlobal false;
fortressRaid_speaker_4 setVariable ["ExileIsLocked", -1, true];
publicVariable "fortressRaid_speaker_4";