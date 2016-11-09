/*
	[getPos player, 100, "B_supplyCrate_F", (1000 +(round (random 8999)))] call IMS_fnc_vehicleSpawn;
	[
		_type,					// STRING: Vehicle classname to spawn.
		_pos,					// ARRAY (positionATL or position2d): Where the vehicle will be spawned (strict)
		_pinCode,				// STRING or NUMBER: String has to be 4 digits. Number has to be between 0-9999, and will be automatically formatted.
		_spawnATL				// (OPTIONAL) BOOLEAN: Whether or not to spawn the vehicle ATL (Above Terrain Level) or ASL (Above Sea Level). Default: true (ATL)
	] call DMS_fnc_SpawnPersistentVehicle;
*/


private ["_vehObj","_para","_pos","_height","_type","_pinCode","_spawnATL"];
_pos = _this select 0;
_height = _this select 1;
_type = _this select 2;
_pinCode = _this select 3;
_spawnATL = _this select 4;
IMS_fortressVehiclePinCode = _pinCode;
publicVariable "IMS_fortressVehiclePinCode";

_vehObj = [_type,_pos,_pinCode,_spawnATL] call DMS_fnc_SpawnPersistentVehicle;
_para = "B_Parachute_02_F" createVehicle [0, 0, 10000];
_vehObj attachTo [_para,[0,0,-1]];
_para setPos [_pos select 0, _pos select 1, _height];
[_vehObj, _para, _type] spawn IMS_fnc_vehicleHandle;

_vehObj;