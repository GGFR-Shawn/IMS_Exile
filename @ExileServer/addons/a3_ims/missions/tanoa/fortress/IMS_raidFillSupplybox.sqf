/*
    IMS_raidFillSupplybox.sqf
    Written by Salutesh
    www.reality-gaming.eu
    
    Description: Setup for supplyboxes in the fortress area.
*/

raid_fnc_supplybox_1 = {
	// Crate loot setup 1
	private _weaponLoot = selectRandom ["SMG_05_F","hgun_PDW2000_F","hgun_ACPC2_F","hgun_P07_F","arifle_ARX_ghex_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F","arifle_MXC_khk_F"];
	private _medecineLoot = selectRandom ["Exile_Item_InstaDoc","Exile_Item_Bandage"];
	private _magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
	private _crateweapon = _weaponLoot;
	private _cratemag = _magazineLoot;
	private _cratemed = _medecineLoot;
	// Prepare the crate
	fortressRaid_supplybox_1 allowDamage false;
	fortressRaid_supplybox_1 enableSimulationGlobal false;
	// Remove crate content if there is one
	clearWeaponCargoGlobal fortressRaid_supplybox_1;
	clearMagazineCargoGlobal fortressRaid_supplybox_1;
	clearBackpackCargoGlobal fortressRaid_supplybox_1;
	clearItemCargoGlobal fortressRaid_supplybox_1;
	// Fill the crate
	fortressRaid_supplybox_1 addWeaponCargoGlobal [_crateweapon, 1];
	fortressRaid_supplybox_1 addMagazineCargoGlobal [_cratemag, (1 + floor(random 3))];
	fortressRaid_supplybox_1 addItemCargoGlobal [_cratemed, (1 + floor(random 1))];
	// Unlock the crate
	fortressRaid_supplybox_1 setVariable ["ExileIsLocked", 0, true];
};
publicVariable "raid_fnc_supplybox_1";

raid_fnc_supplybox_2 = {
	// Crate loot setup 2
	private _weaponLoot = selectRandom ["SMG_05_F","hgun_PDW2000_F","hgun_ACPC2_F","hgun_P07_F","arifle_ARX_ghex_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F","arifle_MXC_khk_F"];
	private _medecineLoot = selectRandom ["Exile_Item_InstaDoc","Exile_Item_Bandage"];
	private _magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
	private _crateweapon = _weaponLoot;
	private _cratemag = _magazineLoot;
	private _cratemed = _medecineLoot;
	// Prepare the crate
	fortressRaid_supplybox_2 allowDamage false;
	fortressRaid_supplybox_2 enableSimulationGlobal false;
	// Remove crate content if there is one
	clearWeaponCargoGlobal fortressRaid_supplybox_2;
	clearMagazineCargoGlobal fortressRaid_supplybox_2;
	clearBackpackCargoGlobal fortressRaid_supplybox_2;
	clearItemCargoGlobal fortressRaid_supplybox_2;
	// Fill the crate
	fortressRaid_supplybox_2 addWeaponCargoGlobal [_crateweapon, 1];
	fortressRaid_supplybox_2 addMagazineCargoGlobal [_cratemag, (1 + floor(random 3))];
	fortressRaid_supplybox_2 addItemCargoGlobal [_cratemed, (1 + floor(random 1))];
	// Unlock the crate
	fortressRaid_supplybox_2 setVariable ["ExileIsLocked", 0, true];
};
publicVariable "raid_fnc_supplybox_2";

raid_fnc_supplybox_3 = {
	// Crate loot setup 3
	private _weaponLoot = selectRandom ["SMG_05_F","hgun_PDW2000_F","hgun_ACPC2_F","hgun_P07_F","arifle_ARX_ghex_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F","arifle_MXC_khk_F"];
	private _medecineLoot = selectRandom ["Exile_Item_InstaDoc","Exile_Item_Bandage"];
	private _magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
	private _crateweapon = _weaponLoot;
	private _cratemag = _magazineLoot;
	private _cratemed = _medecineLoot;
	// Prepare the crate
	fortressRaid_supplybox_3 allowDamage false;
	fortressRaid_supplybox_3 enableSimulationGlobal false;
	// Remove crate content if there is one
	clearWeaponCargoGlobal fortressRaid_supplybox_3;
	clearMagazineCargoGlobal fortressRaid_supplybox_3;
	clearBackpackCargoGlobal fortressRaid_supplybox_3;
	clearItemCargoGlobal fortressRaid_supplybox_3;
	// Fill the crate
	fortressRaid_supplybox_3 addWeaponCargoGlobal [_crateweapon, 1];
	fortressRaid_supplybox_3 addMagazineCargoGlobal [_cratemag, (1 + floor(random 3))];
	fortressRaid_supplybox_3 addItemCargoGlobal [_cratemed, (1 + floor(random 1))];
	// Unlock the crate
	fortressRaid_supplybox_3 setVariable ["ExileIsLocked", 0, true];
};
publicVariable "raid_fnc_supplybox_3";

raid_fnc_supplybox_4 = {
	// Crate loot setup 4
	private _weaponLoot = selectRandom ["SMG_05_F","hgun_PDW2000_F","hgun_ACPC2_F","hgun_P07_F","arifle_ARX_ghex_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F","arifle_MXC_khk_F"];
	private _medecineLoot = selectRandom ["Exile_Item_InstaDoc","Exile_Item_Bandage"];
	private _magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
	private _crateweapon = _weaponLoot;
	private _cratemag = _magazineLoot;
	private _cratemed = _medecineLoot;
	// Prepare the crate
	fortressRaid_supplybox_4 allowDamage false;
	fortressRaid_supplybox_4 enableSimulationGlobal false;
	// Remove crate content if there is one
	clearWeaponCargoGlobal fortressRaid_supplybox_4;
	clearMagazineCargoGlobal fortressRaid_supplybox_4;
	clearBackpackCargoGlobal fortressRaid_supplybox_4;
	clearItemCargoGlobal fortressRaid_supplybox_4;
	// Fill the crate
	fortressRaid_supplybox_4 addWeaponCargoGlobal [_crateweapon, 1];
	fortressRaid_supplybox_4 addMagazineCargoGlobal [_cratemag, (1 + floor(random 3))];
	fortressRaid_supplybox_4 addItemCargoGlobal [_cratemed, (1 + floor(random 1))];
	// Unlock the crate
	fortressRaid_supplybox_4 setVariable ["ExileIsLocked", 0, true];
};
publicVariable "raid_fnc_supplybox_4";

raid_fnc_supplybox_5 = {
	// Crate loot setup 5
	private _weaponLoot = selectRandom ["SMG_05_F","hgun_PDW2000_F","hgun_ACPC2_F","hgun_P07_F","arifle_ARX_ghex_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F","arifle_MXC_khk_F"];
	private _medecineLoot = selectRandom ["Exile_Item_InstaDoc","Exile_Item_Bandage"];
	private _magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
	private _crateweapon = _weaponLoot;
	private _cratemag = _magazineLoot;
	private _cratemed = _medecineLoot;
	// Prepare the crate
	fortressRaid_supplybox_5 allowDamage false;
	fortressRaid_supplybox_5 enableSimulationGlobal false;
	// Remove crate content if there is one
	clearWeaponCargoGlobal fortressRaid_supplybox_5;
	clearMagazineCargoGlobal fortressRaid_supplybox_5;
	clearBackpackCargoGlobal fortressRaid_supplybox_5;
	clearItemCargoGlobal fortressRaid_supplybox_5;
	// Fill the crate
	fortressRaid_supplybox_5 addWeaponCargoGlobal [_crateweapon, 1];
	fortressRaid_supplybox_5 addMagazineCargoGlobal [_cratemag, (1 + floor(random 3))];
	fortressRaid_supplybox_5 addItemCargoGlobal [_cratemed, (1 + floor(random 1))];
	// Unlock the crate
	fortressRaid_supplybox_5 setVariable ["ExileIsLocked", 0, true];
};
publicVariable "raid_fnc_supplybox_5";
