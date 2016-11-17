/*
	IMS Server Addon Post-Init File
	Written by Salutesh
	www.reality-gaming.eu
*/

#define CALLFILE(FILE) call compileFinal preprocessFileLineNumbers FILE;
if (worldName == 'Tanoa') then
{
	diag_log format['[IMS Server Addon] Starting IMS for Map: Tanoa'];
	CALLFILE("\x\addons\ims\missions\IMS_InitTanoa.sqf");
};

if (worldName == 'Chernarus') then
{
	diag_log format['[IMS Server Addon] Starting IMS for Map: Chernarus'];
	CALLFILE("\x\addons\ims\missions\IMS_InitChernarus.sqf");
};