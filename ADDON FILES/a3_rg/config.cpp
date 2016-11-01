class CfgPatches
{
	class a3_rg
	{
		units[] = {};
		weapons[] = {};
		a3_DMS_version = "July 13, 2016";
		requiredVersion = 1.36;
		requiredAddons[] = {};
		//requiredAddons[] = {"exile_client","exile_server_config"};
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
