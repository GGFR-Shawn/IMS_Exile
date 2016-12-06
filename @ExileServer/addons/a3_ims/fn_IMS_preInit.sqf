/*
	IMS Pre-init
	Written by Salutesh
	www.reality-gaming.eu
*/

#define CALLFILE(FILE) call compile preprocessFileLineNumbers FILE;

// Enables debug logging in IMS functions. !!!NOTE:!!! You must uncomment the line above if you want IMS to even check whether or not debug mode is enabled!
// Logs will be written in the RPT, and if you have infiSTAR's "ARMA_LOG" DLL loaded, it will also produce logs in the server directory.
// This will produce A LOT of logs, so make sure you leave it to false unless you know what you're doing.
IMS_DEBUG = true;

IMS_Version = getText (configFile >> "CfgPatches" >> "a3_ims" >> "a3_IMS_version");

// Main config
CALLFILE("\x\addons\ims\config.sqf");
	
// System toast notifications
IMS_Toast_Loot = {
	["SuccessTitleAndText", ["<t color='#f07700' align='center' font='PuristaSemiBold'>Raid Loot Drop</t>", format ["<t color='#ffc96b'><img align='center' image='textures\loot.paa' size='120'/></t><br/><br/><t color='#f07700' font='PuristaSemiBold'>Loot drop inbound. Look for a crate with smoke and chemlights.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
IMS_Toast_VehicleLoot = {
	_pinCode = _this select 0;
	["SuccessTitleAndText", ["<t color='#f07700' align='center' font='PuristaSemiBold'>Vehicle Drop</t>", format ["<t color='#ffc96b'><img align='center' image='textures\vehicle.paa' size='80'/></t><br/><br/><t color='#f07700' font='PuristaSemiBold'>Vehicle drop incoming! The Pin-Code for the Vehicle is: %1</t>", _pinCode]]] call ExileClient_gui_toaster_addTemplateToast;
};
IMS_Toast_NewTask = {
	["InfoTitleAndText", ["<t color='#00c0ff' align='center' font='PuristaSemiBold'>New Task</t>", format ["<t color='#00ff30'><img align='center' image='textures\task.paa' size='80'/></t><br/><br/><t color='#00c0ff' font='PuristaSemiBold'>A new task was created in your task menu!</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
	};
IMS_Toast_TaskUpdate = {
	["InfoTitleAndText", ["<t color='#00c0ff' align='center' font='PuristaSemiBold'>Task Updated</t>", format ["<t color='#00ff30'><img align='center' image='textures\success.paa' size='80'/></t><br/><br/><t color='#00c0ff' font='PuristaSemiBold'>The current task progress was updated in your task menu.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};
IMS_Toast_Supply = {
	["SuccessTitleAndText", ["<t color='#00ce27' align='center' font='PuristaSemiBold'>Supplycrate</t>", format ["<t color='#ba00ff'><img align='center' image='textures\supply.paa' size='80'/></t><br/><br/><t color='#00ce27' font='PuristaSemiBold'>The crate has items.<br/>You can now loot the crate.</t>"]]] call ExileClient_gui_toaster_addTemplateToast;
};

publicVariable "IMS_Toast_Loot";
publicVariable "IMS_Toast_VehicleLoot";
publicVariable "IMS_Toast_NewTask";
publicVariable "IMS_Toast_TaskUpdate";
publicVariable "IMS_Toast_Supply";