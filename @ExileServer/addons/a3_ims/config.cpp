/*
	IMS Server Addon Configuration
	Written by Salutesh
	www.reality-gaming.eu
*/

class CfgPatches
{
	class a3_ims
	{
		units[] = {};
		weapons[] = {};
		a3_ims_version = "November 10, 2016";
		requiredVersion = 1.64;
		requiredAddons[] = {"exile_client","exile_server_config","a3_dms"};
	};
};

class CfgFunctions
{
	class IMS_Server_Core
	{	
		tag = "IMS";
		class Master_Directory
		{
			file = "\x\addons\ims";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
		};
		class Raids
		{
			file = "\x\addons\ims\functions";
			class raidAddHoldAction {};
			class raidDrop {};
			class raidEndBombing {};
			class vehicleSpawn {};
			class vehicleHandle {};
		};
	};
};
