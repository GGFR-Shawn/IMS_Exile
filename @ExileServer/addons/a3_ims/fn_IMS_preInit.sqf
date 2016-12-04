/*
	IMS Pre-init
	Written by Salutesh
	www.reality-gaming.eu
*/

#define CALLFILE(FILE) call compile preprocessFileLineNumbers FILE;

IMS_Version = getText (configFile >> "CfgPatches" >> "a3_ims" >> "a3_IMS_version");

//Load main config
CALLFILE("\x\addons\ims\config.sqf");