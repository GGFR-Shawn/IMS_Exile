/*
	fn_vehicleSpawn.sqf
	Written by Salutesh
	www.reality-gaming.eu
	
	Description:
	
*/
private ["_vehicleObject","_para","_pos","_dir","_height","_type","_pinCode","_spawnATL"];

_pos = _this select 0;
_dir = _this select 1;
_height = _this select 2;
_type = _this select 3;
_spawnATL = _this select 4;
_pinCode = _this select 5;

_vehicleObject = [_type,_pos,_dir,_spawnATL,_pinCode] call ExileServer_object_vehicle_createPersistentVehicle;

_para = "B_Parachute_02_F" createVehicle [0, 0, 10000];
_vehicleObject attachTo [_para,[0,0,-1]];
_para setPos [_pos select 0, _pos select 1, _height];
[_vehicleObject,_para,_type,_pinCode] spawn IMS_fnc_vehicleHandle;

_vehicleObject;
