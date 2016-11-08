/*
	IMS Pre-init
	Written by Salutesh
*/
#define CALLFILE(FILE) call compile preprocessFileLineNumbers FILE;

IMS_Version = getText (configFile >> "CfgPatches" >> "a3_dms" >> "a3_DMS_version");

//Load main config
CALLFILE("\x\addons\ims\config.sqf");