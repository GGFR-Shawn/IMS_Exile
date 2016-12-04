
_object = _this select 0;
_weaponLoot = selectRandom ["SMG_05_F","hgun_PDW2000_F","hgun_ACPC2_F","hgun_P07_F","arifle_ARX_ghex_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F","arifle_MXC_khk_F"];
_medecineLoot = selectRandom ["Exile_Item_InstaDoc","Exile_Item_Bandage"];
_magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
_crateweapon = _weaponLoot;
_cratemag = _magazineLoot;
_cratemed = _medecineLoot;
// Remove crate content if there is one
clearWeaponCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearBackpackCargoGlobal _object;
clearItemCargoGlobal _object;
// Fill the crate
_object addWeaponCargoGlobal [_crateweapon, 1];
_object addMagazineCargoGlobal [_cratemag, (1 + floor(random 3))];
_object addItemCargoGlobal [_cratemed, (1 + floor(random 1))];
// Unlock the crate
_object setVariable ["ExileIsLocked", 0, true];