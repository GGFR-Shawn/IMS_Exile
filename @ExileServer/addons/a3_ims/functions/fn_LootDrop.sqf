/*
	IMS_fnc_LootDrop
	Created by Salutesh

	Usage:
	[
		_position,				// ARRAY (positionATL or position2d): Where the crate will be spawned (strict)
		_box,					// STRING or NUMBER: String has to be 4 digits. Number has to be between 0-9999, and will be automatically formatted.
		_markerName				// STRING: Marker name to spawn for the vehicle.
	] call IMS_fnc_LootDrop;

	Returns the created loot crate object.
*/

private _lootCrate = objNull;

try
{
	if !(params
	[
		"_position",
		"_box",
		"_markerName"
	])
	exitWith
	{
		diag_log format ["IMS ERROR :: Calling IMS_fnc_LootDrop with invalid parameters: %1",_this];
	objNull
	};


	_position = _this select 0;
	_box = _this select 1;
	_markerName = _this select 2; 
	_playerUnits = (_position nearEntities ["Exile_Unit_Player", 250]);

	// Crate loot setup
	private _weaponLoot = selectRandom IMS_Fortress_LootWeapons;
	private _weaponLoot2 = selectRandom IMS_Fortress_LootWeapons;
	private _medecineLoot = selectRandom IMS_Fortress_MedicalItems;
	private _gearLoot = IMS_Fortress_GearItems;
	private _magazineLoot = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot >> "magazines"));
	private _magazineLoot2 = selectRandom (getArray (configFile >> "CfgWeapons" >> _weaponLoot2 >> "magazines"));

	// Announce the loot drop.
	[] remoteExec ["IMS_Toast_Loot", _playerUnits, true];

	// Create crate and paracute
	_parachute = createVehicle ["NonSteerable_Parachute_F", [_position select 0, _position select 1, (_position select 2) + 150], [], 0, "CAN_COLLIDE"];
	_lootCrate = createVehicle [_box, [_position select 0, _position select 1, (_position select 2) + 150], [], 0, ""];
	_lootCrate allowDamage false;
	_lootCrate attachTo [_parachute,[0,0,1]];
	clearMagazineCargoGlobal _lootCrate; 
	clearWeaponCargoGlobal _lootCrate;
	clearItemCargoGlobal _lootCrate;
	clearBackpackCargoGlobal _lootCrate;
	// Fill the crate
	_lootCrate addWeaponCargoGlobal [_weaponLoot, 2];
	_lootCrate addWeaponCargoGlobal [_weaponLoot2, 2];
	_lootCrate addMagazineCargoGlobal [_magazineLoot, IMS_Fortress_LootAmmoAmount];
	_lootCrate addMagazineCargoGlobal [_magazineLoot2, IMS_Fortress_LootAmmoAmount];
	_lootCrate addItemCargoGlobal [_medecineLoot, (3 + floor(random 1))];
	_lootCrate addItemCargoGlobal [_gearLoot, 2];
	_lootCrate setVariable ["ExileMoney", IMS_Fortress_PoptabsLoot, true];
	// Create chemlight.
	_chemlight = "Chemlight_blue" createVehicle (position _lootCrate);
	_chemlight attachto [_lootCrate, [0,0,0]];
	// Create the smokeshell.
	_blueSmoke = "SmokeShellGreen" createVehicle (position _lootCrate);
	_blueSmoke attachto [_lootCrate, [0,0,0]];  
	_boxheight = getpos _lootCrate select 2;

	while {getPos _lootCrate select 2 < 0} do
	{
		sleep 0.1;
	};
	while {getPos _lootCrate select 2 > 1} do
	{
		sleep 0.1;
	};

	detach _lootCrate;
	sleep 0.1;
	deleteVehicle _parachute;
	_lootCrate allowDamage true;
	sleep 0.1;
	[position _lootCrate, "IMS", _markerName] call IMS_fnc_CreateMarker;
}
catch
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_LootDrop with %1!",_exception];
};


_lootCrate
