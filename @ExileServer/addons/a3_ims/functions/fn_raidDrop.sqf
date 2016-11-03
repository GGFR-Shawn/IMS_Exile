// call with this, place in trigger activate (don't copy //):
// nul = [position thisTrigger,"B_supplyCrate_F","supply drop",true] execVM "createArsenal.sqf";
// replace "B_supplyCrate_F with classname of box to spawn
// replace "supply drop" with marker to change alpha of
// change true to false if you don't want a parachute

// Crate loot setup
private _weaponLoot = selectRandom ["srifle_GM6_ghex_F","srifle_DMR_07_hex_F","srifle_LRR_tna_F"];
private _weaponLoot2 = selectRandom ["SMG_05_F","arifle_MX_SW_khk_F","LMG_03_F","arifle_ARX_ghex_F","arifle_MXC_khk_F"];
private _medecineLoot = selectRandom ["Exile_Item_InstaDoc","Exile_Item_Bandage"];
private _raidLoot = ["H_HelmetO_ViperSP_ghex_F","H_HelmetO_ViperSP_hex_F"];
private _magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
private _magazineLoot2 = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot2 >> "magazines"));
private _crateweapon = _weaponLoot;
private _crateweapon2 = _weaponLoot2;
private _cratemag = _magazineLoot;
private _cratemag2 = _magazineLoot2;
private _cratemed = _medecineLoot;
private _crateraid = _raidLoot;

_pos = _this select 0;
_box = _this select 1;
_marker = _this select 2;
_paradrop = _this select 3;

if (_paradrop) then {
	_chute = createVehicle ["NonSteerable_Parachute_F", [_pos select 0, _pos select 1, (_pos select 2) + 150], [], 0, "CAN_COLLIDE"];
	_created = createVehicle [_box, [_pos select 0, _pos select 1, (_pos select 2) + 150], [], 0, ""];
	_created attachTo [_chute,[0,0,1]];
	clearMagazineCargoGlobal _created; 
	clearWeaponCargoGlobal _created;
	clearItemCargoGlobal _created;
	clearBackpackCargoGlobal _created;
	// Fill the crate
	_created addWeaponCargoGlobal [_crateweapon, 2];
	_created addWeaponCargoGlobal [_crateweapon2, 2];
	_created addMagazineCargoGlobal [_cratemag, (3 + floor(random 3))];
	_created addMagazineCargoGlobal [_cratemag2, (3 + floor(random 3))];
	_created addItemCargoGlobal [_cratemed, (3 + floor(random 1))];
	_created addItemCargoGlobal [_crateraid, 2];
	_created setVariable ["ExileMoney", 25000, true];
	_created allowDamage false;
	_marker setMarkerAlpha 1; 
	_chemlight = "chemlight_blue" createVehicle (position _created);
	_chemlight attachto [_created, [0,0,0]];
	_blueSmoke = "SmokeShellPurple" createVehicle (position _created);
	_blueSmoke attachto [_created, [0,0,0]];  
	_boxheight = getpos _created select 2;
	
	while {_boxheight > 0} do {		
		_boxheight = getpos _created select 2;
		if (_boxheight <= 2) exitWith {
			detach _created;
			// Add a marker on the map at box position for 5 minutes.
			_marker = createMarker ["RaidLootMarker", position _created];
			_marker setMarkerType "ExileHeart";
			"RaidLootMarker" setMarkerText "Raid Loot Drop";
			"RaidLootMarker" setMarkerColor "colorCivilian";
			sleep 300;
			deleteMarker "RaidLootMarker";
		};
	};
} else {
	_created = createVehicle [_box, _pos, [], 0, ""]; 
	clearMagazineCargoGlobal _created; 
	clearWeaponCargoGlobal _created;
	clearItemCargoGlobal _created;
	clearBackpackCargoGlobal _created;
	// Fill the crate
	_created addWeaponCargoGlobal [_crateweapon, 2];
	_created addWeaponCargoGlobal [_crateweapon2, 2];
	_created addMagazineCargoGlobal [_cratemag, (3 + floor(random 3))];
	_created addMagazineCargoGlobal [_cratemag2, (3 + floor(random 3))];
	_created addItemCargoGlobal [_cratemed, (3 + floor(random 1))];
	_created addItemCargoGlobal [_crateraid, 2];
	_created setVariable ["ExileMoney", 25000, true];
	_created allowDamage false;
	_marker setMarkerAlpha 1; 
	_chemlight = createVehicle ["chemlight_blue", _pos, [], 0, ""];
	// Add a marker on the map at box position for 5 minutes.
	_marker = createMarker ["RaidLootMarker", position _created];
	_marker setMarkerType "ExileHeart";
	"RaidLootMarker" setMarkerText "Raid Loot Drop";
	"RaidLootMarker" setMarkerColor "colorCivilian";
	sleep 300;
	deleteMarker "RaidLootMarker";
};