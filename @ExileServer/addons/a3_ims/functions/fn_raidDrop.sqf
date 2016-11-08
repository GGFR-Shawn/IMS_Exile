/*
    File: fn_raidDrop.sqf
    Author: Salutesh aka Steve
    
    Description:
	Just creates the loot crate on the sucsess of a mission.
*/

// Crate loot setup
private _weaponLoot = selectRandom IMS_FortressLootWeapons;
private _weaponLoot2 = selectRandom IMS_FortressLootWeapons;
private _medecineLoot = selectRandom IMS_FortressMedicalItems;
private _gearLoot = IMS_FortressGearItems;
private _magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
private _magazineLoot2 = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot2 >> "magazines"));
private _crateWeapon = _weaponLoot;
private _crateWeapon2 = _weaponLoot2;
private _crateMag = _magazineLoot;
private _crateMag2 = _magazineLoot2;
private _crateMed = _medecineLoot;
private _crateGear = _gearLoot;

_pos = _this select 0;
_box = _this select 1;
_markerCrate = _this select 2;
_paradrop = _this select 3;

if (_paradrop) then {
	_chute = createVehicle ["NonSteerable_Parachute_F", [_pos select 0, _pos select 1, (_pos select 2) + 150], [], 0, "CAN_COLLIDE"];
	_lootCrate = createVehicle [_box, [_pos select 0, _pos select 1, (_pos select 2) + 150], [], 0, ""];
	_lootCrate attachTo [_chute,[0,0,1]];
	clearMagazineCargoGlobal _lootCrate; 
	clearWeaponCargoGlobal _lootCrate;
	clearItemCargoGlobal _lootCrate;
	clearBackpackCargoGlobal _lootCrate;
	// Fill the crate
	_lootCrate addWeaponCargoGlobal [_crateWeapon, 2];
	_lootCrate addWeaponCargoGlobal [_crateWeapon2, 2];
	_lootCrate addMagazineCargoGlobal [_crateMag, (3 + floor(random 3))];
	_lootCrate addMagazineCargoGlobal [_crateMag2, (3 + floor(random 3))];
	_lootCrate addItemCargoGlobal [_crateMed, (3 + floor(random 1))];
	_lootCrate addItemCargoGlobal [_crateGear, 2];
	_lootCrate setVariable ["ExileMoney", 25000, true];
	_lootCrate allowDamage false;
	_markerCrate setMarkerAlpha 1; 
	_chemlight = "chemlight_blue" createVehicle (position _lootCrate);
	_chemlight attachto [_lootCrate, [0,0,0]];
	_blueSmoke = "SmokeShellPurple" createVehicle (position _lootCrate);
	_blueSmoke attachto [_lootCrate, [0,0,0]];  
	_boxheight = getpos _lootCrate select 2;
	
	while {_boxheight > 0} do {		
		_boxheight = getpos _lootCrate select 2;
		if (_boxheight <= 2) exitWith {
			detach _lootCrate;
			// Add a marker on the map at box position for 5 minutes.
			_markerCrate = createMarker ["RaidLootMarker", position _lootCrate];
			_markerCrate setMarkerType "ExileHeart";
			"RaidLootMarker" setMarkerText "Raid Loot Drop";
			"RaidLootMarker" setMarkerColor "colorCivilian";
			sleep 300;
			deleteMarker "RaidLootMarker";
		};
	};
} else {
	_lootCrate = createVehicle [_box, _pos, [], 0, ""]; 
	clearMagazineCargoGlobal _lootCrate; 
	clearWeaponCargoGlobal _lootCrate;
	clearItemCargoGlobal _lootCrate;
	clearBackpackCargoGlobal _lootCrate;
	// Fill the crate
	_lootCrate addWeaponCargoGlobal [_crateWeapon, 2];
	_lootCrate addWeaponCargoGlobal [_crateWeapon2, 2];
	_lootCrate addMagazineCargoGlobal [_crateMag, (IMS_FortressLootAmmoAmount + floor(random IMS_FortressLootAmmoAmount))];
	_lootCrate addMagazineCargoGlobal [_crateMag2, (IMS_FortressLootAmmoAmount + floor(random IMS_FortressLootAmmoAmount))];
	_lootCrate addItemCargoGlobal [_crateMed, (3 + floor(random 1))];
	_lootCrate addItemCargoGlobal [_crateGear, 2];
	_lootCrate setVariable ["ExileMoney", IMS_FortressPoptabsLoot, true];
	_lootCrate allowDamage false;
	_markerCrate setMarkerAlpha 1; 
	_chemlight = createVehicle ["chemlight_blue", _pos, [], 0, ""];
	// Add a marker on the map at box position for 5 minutes.
	_markerCrate = createMarker ["RaidLootMarker", position _lootCrate];
	_markerCrate setMarkerType "ExileHeart";
	"RaidLootMarker" setMarkerText "Raid Loot Drop";
	"RaidLootMarker" setMarkerColor "colorCivilian";
	sleep 300;
	deleteMarker "RaidLootMarker";
};