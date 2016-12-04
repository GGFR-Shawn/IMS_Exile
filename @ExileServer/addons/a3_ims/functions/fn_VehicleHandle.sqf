/*
	fn_vehicleHandle.sqf
	Written by Salutesh
	www.reality-gaming.eu
	
	Description:
	
	COMMING SOON
	
*/
private ["_iniVeh","_para","_type","_spawnATL","_pincode"];

_iniVeh = _this select 0;
_para = _this select 1;
_type = _this select 2;
_spawnATL = _this select 3;
_pincode = _this select 4;


while {getPos _iniVeh select 2 < 0} do
{
	sleep 0.1;
};
while {getPos _iniVeh select 2 > 1} do
{
	sleep 0.1;
};
detach _iniVeh;
sleep 0.1;
deleteVehicle _para;
_oldPos = getPos _iniVeh;
_oldVecDir = vectorDir _iniVeh;
_oldVecUp = vectorUp _inVeh;
deleteVehicle _iniVeh;
sleep 0.1;
_vehObj = [_type, _oldPos, [_oldVecDir, _oldVecUp], true, _pinCode] call ExileServer_object_vehicle_createPersistentVehicle;
sleep 0.1;
clearWeaponCargoGlobal _vehObj;
clearItemCargoGlobal _vehObj;
clearBackpackCargoGlobal _vehObj;
_vehObj setFuel (0.75+(random 0.25));
_vehObj setVariable ["ExileIsPersistent", true];
_vehObj setVariable ["ExileAccessCode", _pinCode];
_vehObj setVariable ["ExileOwnerUID", "DMS_PersistentVehicle"];
_vehObj setVariable ["ExileIsLocked",0];
_vehObj lock 0;
_vehObj call ExileServer_object_vehicle_database_insert;
_vehObj call ExileServer_object_vehicle_database_update;

_vehObj;
if (IMS_MissionLogs) then
{
	diag_log format ["IMS - FORTRESS MISSION: PRESISTENT VEHICLE SPAWNED WITH PIN-CODE %1",_pinCode];
};