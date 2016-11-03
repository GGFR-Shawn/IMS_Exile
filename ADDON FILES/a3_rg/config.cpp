class CfgPatches
{
	class a3_rg
	{
		units[] = {};
		weapons[] = {};
		a3_rg_version = "November 03, 2016";
		requiredVersion = 1.64;
		requiredAddons[] = {"exile_client","exile_server_config","a3_dms"};
	};
};

class CfgFunctions
{
	class Exile_Server_Core
	{	
		tag = "RG";
		class Master_Directory
		{
			file = "\x\addons\rg";
			class postInit {postInit = 1;};
		};
		class Raids
		{
			file = "\x\addons\rg\functions";
			class raidAddHoldAction {};
			class raidDrop {};
			class raidEndBombing {};
		};
	};
};
