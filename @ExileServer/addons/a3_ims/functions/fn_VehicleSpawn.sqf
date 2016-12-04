/*
	fn_vehicleSpawn.sqf
	Written by Salutesh
	www.reality-gaming.eu
	
	Description:
	
	COMMING SOON
	
*/
private ["_vehicleObject","_para","_pos","_dir","_height","_type","_spawnATL","_pinCode"];

_pos = _this select 0;
_dir = _this select 1;
_height = _this select 2;
_type = _this select 3;
_spawnATL = _this select 4;
_pinCode = _this select 5;

// Create the  vehicle dummy.
_vehicleObject = createVehicle [_type, _pos, [], 0, "NONE"];
// Create the paractute for the vehicle dummy.
_para = "B_Parachute_02_F" createVehicle [0, 0, 10000];
// Attach the vehicle dummy to the paracute.
_vehicleObject attachTo [_para,[0,0,-1]];
_para setPos [_pos select 0, _pos select 1, _height];
// Call vehicle management.
[_vehicleObject,_para,_type,_spawnATL,_pinCode] spawn IMS_fnc_VehicleHandle;

_vehicleObject;
