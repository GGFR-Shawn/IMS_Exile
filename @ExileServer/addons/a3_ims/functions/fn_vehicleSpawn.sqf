/*
	fn_vehicleSpawn.sqf
	Written by Salutesh
	www.reality-gaming.eu
	
	Description:
	
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