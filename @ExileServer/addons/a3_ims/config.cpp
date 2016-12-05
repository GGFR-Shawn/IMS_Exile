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
		a3_IMS_version = "December 5, 2016";
		requiredVersion = 1.64;
		requiredAddons[] = {"exile_client","exile_server_config","a3_dms"};
	};
};

class CfgFunctions
{
	class IMS
	{	
		tag = "IMS";
		class Master
		{
			file = "\x\addons\ims";
			class IMS_preInit 									{preInit = 1;};
			class IMS_postInit 									{postInit = 1;};
		};
		class Functions
		{
			file = "\x\addons\ims\functions";
			class AddHoldAction 								{};
			class CreateMarker									{};	
			class DebugLog										{};
			class LootDrop 										{};
			class EndBombing 									{};
			class FillSupplyBox 								{};
			class ImportFromExileEdenPlugin 					{};
			class ImportFromExileEdenPluginInteraction 			{};
			class ImportFromExileEdenPluginScripted 			{};
			class ImportFromExileEdenPluginSimple 				{};
			class ImportFromExileEdenPluginSimpleInteraction 	{};
			class ImportInteractionCrates						{};
			class InteractionNpcCreate 							{};
			class InteractionNpcOnAnimationDone 				{};
			class SpawnNonPersistentVehicle						{};
			class SpawnPersistentVehicle						{};
		};
	};
};
